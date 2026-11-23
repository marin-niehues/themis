#!/usr/bin/env bash
# themis: holt RULES.md aus dem Repo und gibt sie als Kontext aus.
#
#   200            Regeln ausgeben und zwischenspeichern
#   200, Datei leer Regeln aus, Cache löschen
#   401/403/404    Regeln aus (Datei weg, Zugriff weg oder Repo weg), Cache löschen
#   sonst          offline, letzten Stand aus dem Cache ausgeben
set -u

OWNER="${THEMIS_OWNER:-marin-niehues}"
REPO="${THEMIS_REPO:-themis}"
BRANCH="${THEMIS_BRANCH:-main}"
FILE="${THEMIS_FILE:-RULES.md}"
API="${THEMIS_API:-https://api.github.com}"

CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/themis"
CACHE="$CACHE_DIR/rules.md"
mkdir -p "$CACHE_DIR"

emit() {
  printf 'Regeln aus %s/%s (%s). Sie gelten für diese gesamte Session:\n\n' "$OWNER" "$REPO" "$1"
  cat "$2"
  printf '\n'
}

TOKEN="$(gh auth token 2>/dev/null || true)"
if [ -z "$TOKEN" ]; then
  if [ -s "$CACHE" ]; then
    emit "Cache, gh nicht angemeldet" "$CACHE"
  fi
  echo "themis: gh ist nicht angemeldet, Regeln werden nicht aktualisiert. Abhilfe: gh auth login" >&2
  exit 0
fi

TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT

HTTP="$(curl -sS --max-time 8 -o "$TMP" -w '%{http_code}' \
  -H "Authorization: Bearer $TOKEN" \
  -H "Accept: application/vnd.github.raw+json" \
  "$API/repos/$OWNER/$REPO/contents/$FILE?ref=$BRANCH" 2>/dev/null)" || HTTP="000"

case "$HTTP" in
  200)
    if [ -s "$TMP" ]; then
      cp "$TMP" "$CACHE"
      emit "live" "$CACHE"
    else
      rm -f "$CACHE"
    fi
    ;;
  401|403|404)
    rm -f "$CACHE"
    ;;
  *)
    if [ -s "$CACHE" ]; then
      emit "Cache, offline" "$CACHE"
    fi
    ;;
esac
exit 0
