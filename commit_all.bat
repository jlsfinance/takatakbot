@echo off
cd /d "C:\Users\Admin\.nanobot\workspace\takatakbot"
"C:\Program Files\Git\cmd\git.exe" add -A
"C:\Program Files\Git\cmd\git.exe" commit -m "Add full config, env example, updated setup and README"
"C:\Program Files\Git\cmd\git.exe" push
