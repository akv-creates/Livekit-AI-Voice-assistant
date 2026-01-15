#!/usr/bin/env bash
set -euo pipefail

# Simple helper to run the project using the bundled venv
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PY="$ROOT_DIR/ai/bin/python"

if [ ! -x "$PY" ]; then
  echo "Python not found at $PY"
  echo "Activate your venv or install dependencies first."
  exit 1
fi

echo "Starting LiveKit agent worker (uses .env for credentials)..."
"$PY" main.py start
