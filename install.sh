#!/usr/bin/env bash
# Trägt themis in die Claude-Code-Einstellungen des Nutzers ein.
set -eu
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SETTINGS="${CLAUDE_CONFIG_DIR:-$HOME/.claude}/settings.json"
mkdir -p "$(dirname "$SETTINGS")"
python3 - "$SETTINGS" "$REPO_DIR/themis/scripts/fetch-rules.sh" <<'PY'
import json, os, shutil, sys
path, script = sys.argv[1], sys.argv[2]
data = {}
if os.path.exists(path) and os.path.getsize(path):
    with open(path) as f:
        data = json.load(f)
    shutil.copy(path, path + ".themis-backup")
entries = data.setdefault("hooks", {}).setdefault("SessionStart", [])
entries[:] = [e for e in entries
              if not any("fetch-rules.sh" in h.get("command", "") for h in e.get("hooks", []))]
entries.append({"hooks": [{"type": "command", "command": f'bash "{script}"', "timeout": 15}]})
with open(path, "w") as f:
    json.dump(data, f, indent=2, ensure_ascii=False)
    f.write("\n")
PY
echo "themis ist eingetragen in $SETTINGS"
echo "Neue Claude-Code-Session starten, dann gelten die Regeln."
