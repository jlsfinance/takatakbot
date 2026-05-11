<div align="center">
  <img src="https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white" alt="Windows">
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python">
  <img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram">
  <img src="https://img.shields.io/badge/AI-DeepSeek-4F46E5?style=for-the-badge&logo=deepseek&logoColor=white" alt="DeepSeek">
  <br>
  <img src="https://img.shields.io/github/stars/jlsfinance/takatakbot?style=social" alt="Stars">
  <img src="https://img.shields.io/github/forks/jlsfinance/takatakbot?style=social" alt="Forks">
  <img src="https://img.shields.io/github/issues/jlsfinance/takatakbot?style=social" alt="Issues">
  <img src="https://img.shields.io/github/license/jlsfinance/takatakbot" alt="License">
</div>

<br>

<div align="center">
  <h1>🐈 TakatakBot</h1>
  <p><strong>Your AI-Powered Windows Automation Assistant</strong></p>
  <p><em>By Poojadi (AI Didi) — your personal AI didi for PC management</em></p>
</div>

---

## ✨ What is TakatakBot?

TakatakBot is a **Telegram-powered AI assistant** that lives on your Windows PC. Talk to it like a friend, and it handles your PC tasks — cleaning files, analyzing stocks, managing schedules, coding, browsing, and more.

> 🗣️ *"Bhai, C drive full ho gaya hai"* — and TakatakBot cleans it up.
> *"Didi, Tata Motors ka analysis do"* — and it fetches stock data.
> *"Kal subah 8 baje reminder"* — and it sets a cron job.

---

## 🚀 Features

### 🤖 AI Assistant
- Natural conversation in Hindi/Hinglish/English
- Powered by DeepSeek AI
- Remembers your preferences
- Smart task execution

### 💻 PC Management
| Feature | Description |
|---------|-------------|
| 🧹 Disk Cleanup | Temp files, cache, prefetch saaf kare |
| 📁 Large File Finder | 100MB+ files dhundhe |
| 📊 System Report | CPU, RAM, Disk health check |
| ⚡ Power Settings | Screen/sleep kabhi off na ho |

### 📈 Stock Market
- Nifty 50 & Sensex updates
- Stock fundamental analysis
- Price alerts
- Personal watchlist

### 📱 Communication
- Telegram chat interface
- WhatsApp messaging
- Scheduled reminders
- File sharing

### 🛠️ Developer Tools
- Code generation & debugging
- Git operations
- Browser automation
- File editing

### 📋 Productivity
- Task management
- Goal tracking
- Habit tracking
- Weekly reviews

---

## 🎬 Demo

```
You: "Didi, C drive clean karo"
Bot:  🧹 Cleaning temp files...
      ✅ 2.5 GB freed up!

You: "Reliance ka analysis do"
Bot:  📊 Reliance Industries Ltd
      Market Cap: ₹19.2L Cr
      P/E: 28.5
      Recommendation: Buy ✅
```

---

## 🛠️ Quick Setup

```bash
# 1. Clone
git clone https://github.com/jlsfinance/takatakbot.git
cd takatakbot

# 2. Run setup (asks for keys automatically)
setup.bat

# 3. Done! Bot starts automatically on boot
```

> **Requirements:** Windows 10/11, Python 3.10+, Git

### What setup.bat does:
1. ✅ Checks Python & Git
2. ✅ Creates virtual environment
3. ✅ Installs dependencies
4. ✅ **Asks for your Telegram token, User ID & API key**
5. ✅ Creates `.env` & `config.json` automatically
6. ✅ Adds bot to Windows startup

---

## 📁 Project Structure

```
takatakbot/
├── skills/          # Ready-made AI skills
│   ├── india-market-pulse/    # Stock market
│   ├── power-settings/        # Power management
│   ├── productivity/          # Task management
│   └── whatsapp-sender/       # WhatsApp
├── scripts/         # Utility scripts
│   ├── disk_cleanup.bat       # Clean temp files
│   ├── system_report.bat      # PC health check
│   ├── backup_config.bat      # Backup settings
│   └── start_bot.bat          # Launch bot
├── docs/            # Documentation
├── config/          # Configuration
└── sessions/        # Chat history
```

---

## 🧩 Skills System

TakatakBot uses a modular **skills system** — add new capabilities easily:

```bash
# Install from ClawHub (skill marketplace)
nanobot clawhub install <skill-name>

# Or create your own
nanobot skill create my-awesome-skill
```

---

## 🌟 Why TakatakBot?

| ✅ | ❌ |
|---|---|
| Free & Open Source | No subscription fees |
| Runs locally on your PC | No cloud dependency |
| Hindi/Hinglish support | No English-only limitation |
| Modular skills | Easy to extend |
| Windows-native | No WSL/Linux needed |

---

## 🤝 Contributing

Love TakatakBot? Help make it better!

- ⭐ Star the repo
- 🐛 Report bugs via Issues
- 💡 Suggest features
- 🔧 Submit PRs

---

## 📜 License

MIT License — use it, modify it, share it!

---

<div align="center">
  <p>Made with ❤️ by <strong>Poojadi (AI Didi)</strong></p>
  <p>
    <a href="https://github.com/jlsfinance/takatakbot/issues">Report Bug</a> •
    <a href="https://github.com/jlsfinance/takatakbot/discussions">Discussion</a> •
    <a href="https://github.com/jlsfinance/takatakbot">GitHub</a>
  </p>
  <p>🐈 <em>"Aapki apni AI didi, har kaam mein ready!"</em></p>
</div>
