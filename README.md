<div align="center">

  <img src="./assets/banner.svg" width="100%" alt="Moe Game Launcher Banner"/>

  <br><br>

  <p align="center">
    <img src="https://img.shields.io/badge/Platform-Arch_Linux-1793d1?style=for-the-badge&logo=arch-linux&logoColor=white" />
    <img src="https://img.shields.io/badge/GPU-NVIDIA_RTX_5060-76B900?style=for-the-badge&logo=nvidia&logoColor=white" />
    <img src="https://img.shields.io/badge/Tools-Gamescope_%2B_MangoHud-FF69B4?style=for-the-badge&logo=steam&logoColor=white" />
    <img src="https://img.shields.io/badge/Screen-1080p_144Hz-8A2BE2?style=for-the-badge" />
    <img src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge" />
    <img src="https://img.shields.io/badge/Style-Anime_Kawaii-ffb6c1?style=for-the-badge" />
  </p>

  <p align="center">
    <i>🌸 专为 Linux 游戏本玩家打造的极速游戏启动器与独立显卡满血调度工具箱 🌸</i>
  </p>

</div>

---

## 💻 运行环境与参考配置规格 (System Specs & Requirements)

为便于评估工具箱的实测复现效果，下表列出了**作者实测验证机型**与**建议最低运行基准**：

| 项目 | 测试验证参考规格 (Tested Environment) | 最低运行参考门槛 (Minimum Requirements) |
| :--- | :--- | :--- |
| **操作系统** | Nyarch Linux x86_64 (Linux Kernel 7.x, Wayland) | 任何主流 64 位 Linux 发行版 (支持 Wayland / X11) |
| **显卡 (GPU)** | NVIDIA RTX 5060 Laptop (驱动 565+/615+) | 任何支持 Vulkan 1.3 / OpenGL 4.5 的独显或现代核显 |
| **显卡调度** | NVIDIA Prime Offload 满血独显调度 | 支持 Prime 渲染或单独显直连 |
| **显示规格** | 1080p @ 144Hz IPS 高刷新率屏 | 1080p @ 60Hz 标准显示屏 |
| **核心依赖** | `wine` (11.x), `mangohud`, `gamescope`, `fish`/`bash` | `wine` 或 `steam` 运行环境 |

---

## 🌟 核心特性 (Features)

- 󰢮 **强制 RTX 5060 满血调用**：自动注入 `Prime Offload` 变量，彻底解决混合显卡游戏本（Intel + NVIDIA）偷跑核显导致卡顿的痛点。
- 🖥️ **Gamescope 144Hz 极速匹配**：完美契合 144Hz 高刷屏幕，支持动态 FSR 超分辨率锐化与比例锁定。
- 🌸 **萌系二次元 MangoHud 皮肤**：内置粉紫暗夜霓虹主题，实时监视 GPU 占用、显存、核心温度、CPU 功耗与真实帧率。
- 🦆 **小黄鸭补帧兼容 (LSFG)**：无缝支持 Lossless Scaling 补帧环境注入。
- ⚡ **环境一键体检 (`doctor`)**：秒级检测电脑驱动状态、Vulkan 环境及游戏组件。

---

## 🚀 极速安装与部署 (Quick Install)

打开终端运行以下命令：

```bash
git clone https://github.com/shenchuchu91-hub/moe-game-launcher.git ~/.local/share/moe-game-launcher
cd ~/.local/share/moe-game-launcher
chmod +x install.sh
./install.sh
```

### 🛡️ 安全承诺与干净卸载机制：
- **无损软链接**：安装脚本仅向用户本地目录 `~/.local/bin/moe-game` 建立软链接，不触碰任何系统级 `/usr` 或 root 关键目录；
- **一键干净卸载**：若不再需要本工具，执行以下两行即可彻底恢复：
  ```bash
  rm -f ~/.local/bin/moe-game
  rm -rf ~/.local/share/moe-game-launcher
  ```

---

## 🎮 使用指南 (Usage)

### 1. 运行游戏
```bash
# 直接运行 Windows exe 游戏（自动挂载 5060 独显 + MangoHud 性能监视器）
moe-game run -m /path/to/game.exe

# 启用 Gamescope（144Hz 锁帧 + FSR 锐化）运行
moe-game run -g -m /path/to/game.exe
```

### 2. 系统体检
```bash
moe-game doctor
```

### 3. 获取 Steam 启动项推荐
```bash
moe-game steam-options
```

---

## 🛡️ 免责声明与安全守则 (Disclaimer)

> ⚠️ **使用须知**：本工具箱所有功能仅限于合法显卡环境变量注入与显示层优化，绝不进行任何硬件超频、固件改写或作弊注入行为。完整安全条款请参阅全局 [免责声明与通用安全规范 (Disclaimer)](https://github.com/shenchuchu91-hub/disclaimer)。

---

## 🌸 作者与致谢 (Author & Credits)

- GitHub: [@shenchuchu91-hub](https://github.com/shenchuchu91-hub)
- 协议: [MIT License](LICENSE)
- Powered by Nyarch Linux & Arch Linux Rice Community
