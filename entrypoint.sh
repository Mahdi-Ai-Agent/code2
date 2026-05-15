#!/bin/sh
mkdir -p /root/.claude
echo "$CLAUDE_CREDENTIALS" > /root/.claude/.credentials.json

exec code-server \
  --bind-addr 0.0.0.0:8080 \
  --auth none \
  /workspace
