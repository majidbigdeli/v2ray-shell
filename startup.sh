#!/bin/bash
set -e

# نصب v2ray-core در صورت نیاز
if ! command -v v2ray >/dev/null; then
  curl -Ls https://install.direct/go.sh | bash
fi

# اجرای v2ray با فایل کانفیگ
v2ray -config /workspace/config.json
