#!/bin/bash
set -e

# نصب v2ray-core
if ! command -v v2ray >/dev/null; then
  curl -Ls https://install.direct/go.sh | bash
fi

# اجرای v2ray
v2ray -config /workspace/config.json
