@echo off
python -m pip install -r requirements.txt
python -m pip install pyinstaller
pyinstaller --noconfirm --clean --windowed --name WinBrowserForensics run.py
pause
