REM 输出当前日期和时间，并保存到compile_time.txt文件中
del /F /Q compile_time.txt

set year=%date:~10,4%
set month=%date:~4,2%
set day=%date:~7,2%

set hour=%time:~0,2%
set minute=%time:~3,2%
set second=%time:~6,2%

tzutil /s "China Standard Time"
echo %date:~0,14% >> compile_time.txt
echo %time:~0,8% >> compile_time.txt
