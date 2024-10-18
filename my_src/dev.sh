#!/bin/bash

PORT="${PORT:-8080}"

# modify proxy settings if needed or comment out
export http_proxy="http://proxy2:8082"
export https_proxy="http://proxy2:8082"

cd "$(dirname "$0")"
cd ../backend

# fix of error: "Error: Got unexpected extra arguments (dev.sh open_webui requirements.txt start.sh start_windows.bat)"
uvicorn open_webui.main:app --port "$PORT" --host 0.0.0.0 --forwarded-allow-ips="*" --reload
