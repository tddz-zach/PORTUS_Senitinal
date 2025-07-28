# 📝 Incident Report: Port Scan Detected on Localhost

**Date:** July 28, 2025
**Analyst:** Jayesh Yadav   
**Reported by:** PortScan Sentinel Script  
**System Monitored:** Kali Linux (127.0.0.1)

---

## 🧾 Description of Incident

The system detected a **port scan attack** originating on `localhost` where **multiple ports were probed in a short time period**. This behavior is typical of reconnaissance activity, possibly simulated via `nmap`.

---

## 📍 Details

- **IP Address:** 127.0.0.1
- **Time Detected:** 21:00:00 IST
- **Total Ports Accessed:** 28
- **Command Used:**  
  `nmap -p- 127.0.0.1`

---

## 🔎 Evidence Snippet (from portscan_alerts.txt)
