@echo off
setlocal enabledelayedexpansion
set SPEEDTEST=%~dp0speedtest.exe
set LOG_DIR=%~dp0Log
set LOG_FILE=%LOG_DIR%\log_speedtest.csv
set TEMP_FILE=%TEMP%\speedtest_tmp.txt

if not exist "%LOG_DIR%" mkdir "%LOG_DIR%"

set NOW_TIME="%date% %time%" 

if not exist "%LOG_FILE%" (
    %SPEEDTEST% -f csv -s 48463 --output-header > "%TEMP_FILE%"
    
    set HEADER_WRITTEN=0
    for /f "usebackq tokens=* delims=" %%A in ("%TEMP_FILE%") do (
        if !HEADER_WRITTEN! == 0 (
            echo "Timestamp",%%A > "%LOG_FILE%"
            set HEADER_WRITTEN=1
        ) else (
            echo %NOW_TIME%,%%A >> "%LOG_FILE%"
            goto :CLEANUP
        )
    )
) else (
    for /f "usebackq tokens=* delims=" %%A in (`%SPEEDTEST% -f csv -s 48463`) do (
        echo %NOW_TIME%,%%A >> "%LOG_FILE%"
    )
)

:CLEANUP
del "%TEMP_FILE%" 2>nul
