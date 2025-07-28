PortScan Sentinel - Localhost Port Scan Detector
------------------------------------------------

Purpose:
--------
This script is designed to detect suspicious port scan activity on localhost (127.0.0.1) and log it into a file named 'portscan_alerts.txt'. It is especially useful for SOC Analyst training, cybersecurity learners, or as a demo project for portfolios.

How It Works:
-------------
- The script checks all incoming TCP connection attempts using netstat or ss.
- If an unusually high number of ports are being accessed from an IP, it flags it as a port scan.
- The alert is timestamped and saved in 'portscan_alerts.txt'.

Requirements:
-------------
- Bash shell
- netstat or ss (net-tools)
- Kali Linux or any Linux distro

Installation:
-------------
1. Make the script executable:
   chmod +x portscan_detector.sh

2. Run it:
   ./portscan_detector.sh

Simulating a Scan:
------------------
To test your detection:
   nmap -p- 127.0.0.1

Check the log file for entries:
   cat portscan_alerts.txt

Output Example:
---------------
[Sun Jul 28 21:00:00 IST 2025] ⚠️ Port scan detected on localhost - 28 ports probed.
  4 22
  3 80
  2 443
------------------------------------------

Notes:
------
- Adjust the threshold inside the script to fine-tune detection sensitivity.
- Consider expanding it for remote IP monitoring, email alerts, or blocking via UFW.
