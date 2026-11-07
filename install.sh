#!/usr/bin/env bash
# ==============================================================================
#  🌸 moe-game-launcher 安装脚本 🌸
# ==============================================================================

set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_TARGET="$HOME/.local/bin/moe-game"

echo "🌸 正在安装 moe-game-launcher 到你的系统..."

# 1. 链接核心命令
mkdir -p "$HOME/.local/bin"
ln -sf "$DIR/bin/moe-game" "$BIN_TARGET"
chmod +x "$BIN_TARGET"
echo "✔ 核心命令已安装至: $BIN_TARGET"

# 2. 安装 MangoHud 皮肤
"$DIR/bin/moe-game" hud-install

# 3. 添加快捷别名至 Fish
FISH_CONF="$HOME/.config/fish/config.fish"
if [ -f "$FISH_CONF" ]; then
    if ! grep -q "alias moe=" "$FISH_CONF" 2>/dev/null; then
        echo -e "\n# moe-game-launcher 快捷别名\nalias moe=\"moe-game run\"\nalias moedoc=\"moe-game doctor\"" >> "$FISH_CONF"
        echo "✔ 已添加 Fish 快捷别名: moe, moedoc"
    fi
fi

echo -e "\n🎉 安装成功！现在你可以直接在终端中运行："
echo "   moe-game doctor             # 一键体检"
echo "   moe-game steam-options      # 查看 Steam 启动参数"
echo "   moe-game run -m 游戏.exe     # 独显+监控直接跑游戏"
