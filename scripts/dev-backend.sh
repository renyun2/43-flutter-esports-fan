#!/usr/bin/env bash
# Foreground Node.js backend — API :3030.
set -euo pipefail
cd /app/backend

exec npm run dev
