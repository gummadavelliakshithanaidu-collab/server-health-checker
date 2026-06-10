# Server Health Checker

## Purpose

This project is a Linux shell scripting project that monitors server health by checking system uptime, disk usage, memory usage, and CPU-consuming processes. The script automatically generates warning alerts when disk or memory utilization exceeds the defined threshold (80%) and saves a health report to a log file.

## Features

* Displays the current logged-in user.
* Shows system uptime.
* Monitors disk usage percentage.
* Monitors memory usage percentage.
* Generates automatic alerts when disk usage exceeds 80%.
* Generates automatic alerts when memory usage exceeds 80%.
* Lists the top 5 CPU-consuming processes.
* Creates a server health report.
* Saves health reports to `server_health.log`.
* Helps identify potential resource utilization issues.

## Technologies Used

* Linux
* Bash Scripting
* awk
* sed
* ps Command
* free Command
* df Command
* Log File Redirection
* Git
* GitHub

## How to Run

```bash
bash server_health.sh
```
## Output

* Displays server health information in the terminal.
* Shows warning messages for high disk usage.
* Shows warning messages for high memory usage.
* Displays top resource-consuming processes.
* Generates and stores a server health report in `server_health.log`.

## Learning Outcome

This project helped me practice Linux shell scripting, system monitoring, threshold-based alert generation, resource utilization analysis, process monitoring, log generation, file redirection, and basic DevOps monitoring concepts.
