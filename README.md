# Speedtest Logger

This script uses `speedtest.exe` to measure internet speed and logs the results in CSV format.

## Features
- Records `speedtest.exe` results in `log_speedtest.csv`
- Adds a header (`Timestamp` included) on the first execution
- Appends only data on subsequent executions
- Logs are saved in the `Log` folder

## System Requirements
- OS: Windows 10 / 11
- Required Software:
  - `speedtest.exe` (Ookla Speedtest CLI)
  - Command Prompt (cmd.exe)

## Usage
1. Download `speedtest.exe` from [Ookla Speedtest CLI](https://www.speedtest.net/apps/cli), extract it and place it in any directory.
2. Download `speedtestLogger.bat` from the release and place it in the same directory as `speedtest.exe`.
3. Execute `log_speedtest.bat`.

The current server default is SERVER_ID `48463`. SERVER_ID can be changed at will.  
Check the ID with the following command.
```cmd
speedtest --servers
```

## Example output
Test results are logged in `Log/log_speedtest.csv`.

```csv
"Timestamp","server name","server id","idle latency","idle jitter","packet loss","download","upload","download bytes","upload bytes","share url","download server count","download latency","download latency jitter","download latency low","download latency high","upload latency","upload latency jitter","upload latency low","upload latency high","idle latency low","idle latency high"
"2025/01/01 00:00:00.00" ,"server_name","12345","1.2345","0.1234","0","123456789","123456789","123456789","123456789","https://www.speedtest.net/result/c/xxxxxxxx-0123-xxxx-0123-xxxxxxxxxxxx","1","1.23456","1.23456","1.234","123.456","1.23456","1.23456","1.234","12.345","1.234","1.234"
"2025/01/01 01:00:00.00" ,"server_name","12345","1.2345","0.1234","0","123456789","123456789","123456789","123456789","https://www.speedtest.net/result/c/xxxxxxxx-0123-xxxx-0123-xxxxxxxxxxxx","1","1.23456","1.23456","1.234","123.456","1.23456","1.23456","1.234","12.345","1.234","1.234"
```

## License
This project is licensed under the MIT License.

---

**Disclaimer**
- This script uses the official Ookla Speedtest tool but is not affiliated with Ookla.
- The creator is not responsible for any damage caused by using this script.
