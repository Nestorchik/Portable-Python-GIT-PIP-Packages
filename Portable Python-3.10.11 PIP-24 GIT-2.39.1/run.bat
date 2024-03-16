@echo off
set startDir=%cd%
call envir.bat
echo =======================================
git --version
echo =======================================
python --version
echo =======================================
python -m pip --version
echo =======================================
pause
python -m pip install numpy
echo =======================================
pause
python -m pip uninstall numpy -y
echo =======================================
pause
md webui
cd %startDir%\webui
git clone https://github.com/arduino-libraries/SD.git
pause
cd %startDir%\webui\SD
git pull
pause
cd %startDir%
rmdir %startDir%\webui /S /Q
pause
