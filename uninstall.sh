#!/usr/bin/env bash
# Entfernt themis aus den Claude-Code-Einstellungen und löscht den Cache.
set -eu
SETTINGS="${CLAUDE_CONFIG_DIR:-$HOME/.claude}/settings.json"
if [ -s "$SETTINGS" ]; then
python3 - "$SETTINGS" <<'PY'
import json, sys
path = sys.argv[1]
with open(path) as f:
    data = json.load(f)
hooks = data.get("hooks", {})
entries = hooks.get("SessionStart", [])
entries[:] = [e for e in entries
              if not any("fetch-rules.sh" in h.get("command", "") for h in e.get("hooks", []))]
if not entries:
    hooks.pop("SessionStart", None)
if not hooks:
    data.pop("hooks", None)
with open(path, "w") as f:
    json.dump(data, f, indent=2, ensure_ascii=False)
    f.write("\n")
PY
fi
rm -rf "${XDG_CACHE_HOME:-$HOME/.cache}/themis"
rm -f "$SETTINGS.themis-backup"
echo "themis ist entfernt. Den Ordner des Repos kannst du jetzt löschen."
