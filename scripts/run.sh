#!/usr/bin/env bash
# run.sh — Docker 컨테이너를 띄우고 게임을 자동 실행.

set -e

IMAGE="peg0525/team21_project:0.1.0"
CONTAINER_NAME="team_21_runtime"

if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    docker rm -f "${CONTAINER_NAME}" >/dev/null
fi

echo "[run.sh] Starting VNC server and launching game..."
echo "[run.sh] Open http://localhost:6080/vnc.html in your browser."

docker run --rm -it \
  -p 6080:6080 \
  -p 5900:5900 \
  -v "$(pwd):/workspace" \
  -w /workspace \
  --name "$CONTAINER_NAME" \
  "$IMAGE" \
  bash -c '
    set -e
    export DISPLAY=:99

    Xvfb :99 -screen 0 1280x800x24 &
    sleep 1

    openbox &
    x11vnc -display :99 -forever -shared -rfbport 5900 -nopw -bg >/dev/null 2>&1
    /usr/share/novnc/utils/novnc_proxy --vnc localhost:5900 --listen 6080 >/dev/null 2>&1 &

    chmod +x /workspace/build/main || true
    exec /workspace/build/main
  '