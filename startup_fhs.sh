#!/bin/bash
set -e

# نصب دستی V2Ray بدون systemd
echo "[+] Downloading latest V2Ray release..."
curl -LO https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip

echo "[+] Unzipping..."
unzip -o v2ray-linux-64.zip -d v2ray

echo "[+] Moving binaries..."
mkdir -p v2ray/bin
mv v2ray/v2ray v2ray/bin/
mv v2ray/v2ctl v2ray/bin/

chmod +x v2ray/bin/v2ray v2ray/bin/v2ctl

echo "[+] Running V2Ray with config.json..."
./v2ray/bin/v2ray -config /workspace/config.json
