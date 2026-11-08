<div align="center">

  <img src="./assets/banner.svg" width="100%" alt="Moe Game Launcher Banner"/>

  <br><br>

  <p align="center">
    <img src="https://img.shields.io/badge/Platform-Arch_Linux-1793d1?style=for-the-badge&logo=arch-linux&logoColor=white" />
    <img src="https://img.shields.io/badge/GPU_Offload-NVIDIA_Prime-76B900?style=for-the-badge&logo=nvidia&logoColor=white" />
    <img src="https://img.shields.io/badge/Display-Gamescope_%2B_MangoHud-FF69B4?style=for-the-badge&logo=steam&logoColor=white" />
    <img src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge" />
    <img src="https://img.shields.io/badge/Aesthetic-Anime%20%26%20Moe-ffb6c1?style=for-the-badge" />
  </p>

  <p align="center">
    <i>面向 Linux 混合显卡笔记本的游戏启动辅助工具与运行环境检测脚本</i>
  </p>

</div>

---

## 💻 运行环境与参考配置规格 (System Specs & Requirements)

为便于评估工具在不同设备上的适用性，下表列出了**作者实测验证环境**与建议的**基础运行门槛**：

| 项目 | 测试验证参考规格 (Tested Rig) | 建议最低运行门槛 (Minimum Requirements) |
| :--- | :--- | :--- |
| **操作系统** | Nyarch Linux x86_64 (Linux Kernel 7.x, Wayland) | 常见 64 位 Linux 发行版 (支持 Wayland / X11) |
| **显卡支持 (GPU)** | NVIDIA RTX 5060 Laptop (驱动版本: 565+/615+) | 任何支持 Vulkan 1.3 / OpenGL 4.5 的独显或现代核显 |
| **显卡调度** | NVIDIA Prime Offload 独显渲染 | 支持 Prime 渲染或独显直连 |
| **显示规格** | 1080p @ 144Hz IPS 高刷新率屏 | 1080p @ 60Hz 标准显示屏 |
| **核心依赖** | `wine`, `mangohud`, `gamescope`, `fish` / `bash` | `wine` 或 `steam` 运行环境 |

---

## 🌟 主要功能 (Features)

- **Prime Offload 渲染支持**：自动注入 `__NV_PRIME_RENDER_OFFLOAD=1` 等环境变量，确保双显卡笔记本由独立显卡承担游戏渲染；
- **Gamescope 显示匹配**：支持通过 Gamescope 进行 1080p 144Hz 锁帧与 FSR 超分辨率锐化；
- **MangoHud 性能监控配置**：提供配套的淡色主题配置，直观显示 GPU 占用、温度、功耗与帧率；
- **运行环境状态检测 (`doctor`)**：快速检测系统当前显卡驱动、Vulkan 环境及游戏核心组件安装状态。

---

## 🚀 安装与部署 (Installation)

在终端中执行以下命令完成部署：

```bash
# 克隆仓库并安装
git clone https://github.com/shenchuchu91-hub/moe-game-launcher.git ~/.local/share/moe-game-launcher
cd ~/.local/share/moe-game-launcher
chmod +x install.sh
./install.sh
```

### 🛡️ 安全机制与干净卸载：
- **无损软链接**：安装脚本仅向用户目录 `~/.local/bin/moe-game` 建立软链接，不改动任何系统级 root 目录；
- **一键卸载**：若不再需要本工具，执行以下两行即可干净移除：
  ```bash
  rm -f ~/.local/bin/moe-game
  rm -rf ~/.local/share/moe-game-launcher
  ```

---

## 🎮 使用方法 (Usage)

### 1. 运行游戏程序
```bash
# 挂载独显渲染并开启 MangoHud 性能监视
moe-game run -m /path/to/game.exe

# 启用 Gamescope（144Hz 锁帧 + FSR 锐化）运行
moe-game run -g -m /path/to/game.exe
```

### 2. 系统环境检测
```bash
moe-game doctor
```

### 3. 获取 Steam 启动项推荐
```bash
moe-game steam-options
```

---

## 🛡️ 免责声明与安全守则 (Disclaimer)

> ⚠️ **使用须知**：本工具仅提供显卡环境变量委派与窗口显示层管理，不涉及硬件超频、固件改写或作弊注入。完整安全规范请参阅全局 [免责声明与通用安全规范 (Disclaimer)](https://github.com/shenchuchu91-hub/disclaimer)。

---

## 🌸 版权与致谢 (License & Credits)

- GitHub: [@shenchuchu91-hub](https://github.com/shenchuchu91-hub)
- 开源许可: [MIT License](LICENSE)
- Powered by Nyarch Linux & Arch Linux Rice Community
