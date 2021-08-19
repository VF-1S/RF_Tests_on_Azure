start cmd.exe /c python demoapp/server.py
REM call .\env\Scripts\activate.bat
robocop -A robocop.cfg
if %errorlevel% neq 0 exit /b %errorlevel%
robot login_tests