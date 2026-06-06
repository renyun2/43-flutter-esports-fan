#!/usr/bin/env bash
# Container: interactive flutter run with backend API on :3030 (no browser proxy needed).
set -euo pipefail
cd /app/esports_fan
flutter pub get
exec flutter run -d web-server \
  --web-hostname 127.0.0.1 \
  --web-port 5200 \
  --host-vmservice-port 8181 \
  --dart-define=API_BASE=http://127.0.0.1:3030
