# Troubleshooting Guide

## Bot won't start

**Check Python:**
```cmd
python --version
```
Should show 3.10+

**Check venv:**
```cmd
venv\Scripts\activate
```
If this fails, delete `venv` folder and run `setup.bat` again

**Check config:**
- Open `config/config.json`
- Make sure `telegram.token` has your bot token
- Make sure `providers.openai.apiKey` has your API key

## Telegram not responding

**Check token:**
1. Go to @BotFather on Telegram
2. Send `/mybots` → select your bot → API Token
3. Compare with `.env` file

**Check user ID:**
- Bot only responds to `ALLOWED_USER_ID`
- Get your ID from @userinfobot

## Connection issues

**Firewall:**
- Allow Python through Windows Firewall
- Bot uses port 8900 (internal)

**Proxy:**
- If behind corporate proxy, update `config.json`:
```json
"proxy": "http://proxy:port"
```

## Performance issues

**Bot is slow:**
- Check internet speed
- Reduce `maxTokens` in config
- Switch to faster model

**High CPU usage:**
- Restart the bot
- Check for infinite loops in skills
- Update to latest nanobot version

## Still stuck?
Open an issue on GitHub: https://github.com/jlsfinance/takatakbot/issues
