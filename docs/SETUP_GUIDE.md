# TakatakBot Setup Guide

## Prerequisites
- Windows 10/11
- Python 3.10 or higher
- Git
- Telegram account
- DeepSeek API key (or any OpenAI-compatible API)

## Step 1: Clone & Setup
```bash
git clone https://github.com/jlsfinance/takatakbot.git
cd takatakbot
setup.bat
```

## Step 2: Get Telegram Bot Token
1. Open Telegram and search for **@BotFather**
2. Send `/newbot` and follow instructions
3. Copy the token you receive

## Step 3: Get Your User ID
1. Search for **@userinfobot** on Telegram
2. Send `/start` — it will reply with your ID

## Step 4: Configure
Edit `.env` file:
```
TELEGRAM_BOT_TOKEN=your_token_here
ALLOWED_USER_ID=your_user_id_here
DEEPSEEK_API_KEY=your_api_key_here
```

## Step 5: Run
```bash
scripts\start_bot.bat
```

Or double-click `scripts\start_bot.bat`

## Auto-start on boot
Setup already creates a startup shortcut. Bot will auto-start when Windows boots.

## Troubleshooting

### Bot not responding?
- Check `.env` file has correct token
- Make sure bot is running (check task manager)
- Check firewall isn't blocking

### Setup fails?
- Run as Administrator
- Make sure Python is in PATH
- Try: `python --version` in cmd

## Commands
Once running, talk to your bot on Telegram like a normal chat!
