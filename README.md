# Battery Health Checker

A simple Bash script to monitor battery health and status on Linux systems using the `upower` command. This script displays battery charge percentage, current status (charging or discharging), and overall health status.

## Features

- Displays current battery percentage
- Shows battery status (charging, discharging, fully charged)
- Checks and reports battery health (e.g., good, warning, critical)

## Motivation

Monitoring battery health helps users manage their devices effectively, assisting in decisions for potential replacements or optimizing power usage.

## Requirements

- Linux system with a compatible battery
- `upower` command-line utility (pre-installed on most Linux distributions)

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/battery-health-checker.git

    Navigate to the Project Directory:

    bash

    cd battery-health-checker

Usage

    Make the Script Executable:

    bash

chmod +x battery_health_checker.sh

Run the Script:

bash

    ./battery_health_checker.sh

Example Output

plaintext

Battery Percentage: 75%
Battery Status: charging
Battery Health: good
Battery is in good condition.

Explanation

The script uses upower to get details about the system's battery, then parses this data to display:

    Battery Percentage: Current charge level
    Battery Status: Charging or discharging status
    Battery Health: General health status of the battery

Code Overview

    Battery Detection: Locates the battery using upower.
    Data Parsing: Extracts specific details like percentage, status, and health.
    Condition Checks: Evaluates battery health to alert users if there's a potential issue.

Future Enhancements

    Add more power metrics for advanced insights
    Integrate notifications for critical battery health status

License

This project is licensed under the MIT License. See the LICENSE file for details.
Contributions

Contributions are welcome! Please open an issue or submit a pull request.
GitHub Repository

Find the code on GitHub: Battery Health Checker
References

    upower Documentation
