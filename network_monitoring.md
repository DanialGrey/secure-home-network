# Network Monitoring and Logging

This document outlines the tools and techniques used to monitor the home network, detect suspicious activity, and maintain visibility over connected devices.

## 1. Logging and Visibility

### Router Logs
- Router logging enabled to record:
  - DHCP leases
  - Login attempts (successful and failed)
  - Firewall rule hits
  - Port scans and connection attempts

- Logs are stored locally and periodically reviewed.
- (Optional) Logs forwarded to a syslog server or external storage for longer retention and analysis.

### Device Logs
- Pi-hole logs all DNS queries and blocked domains.
- Regularly reviewed for unusual domain requests or excessive traffic from IoT devices.

## 2. Monitoring Tools Used

| Tool      | Purpose                            |
|-----------|------------------------------------|
| **Pi-hole** | DNS-level ad/tracker/malware blocking |
| **Wireshark** | Packet capture for deeper inspection |
| **Nmap**   | Network scanning and port auditing |
| **Advanced IP Scanner** / **Fing** | Detect new or rogue devices |
| **Router dashboard** | Live view of bandwidth and connected clients |

(Adjust tools based on your actual setup.)

## 3. Anomaly Detection

Manually inspected logs for:
- DNS requests to known malicious or shady domains
- Unknown MAC or IP addresses joining the network
- Devices using non-standard ports
- Sudden traffic spikes or excessive connections

Set alerts (if supported) for:
- New device connections
- High bandwidth usage on guest or IoT VLANs
- Port scan detection from WAN or LAN

## 4. Weekly/Monthly Maintenance

- Review logs weekly for:
  - New device connections
  - Repeated login attempts
  - Blocked traffic spikes

- Run a monthly `nmap` scan to:
  - Confirm open ports match expected services
  - Check for rogue services or misconfigured devices

## 5. Response and Actions

- If a suspicious device is detected:
  - Isolate the device by MAC or VLAN.
  - Block it from internet or internal VLANs.
  - Investigate further using Wireshark or logs.

- If excessive traffic or unknown domain requests are detected:
  - Inspect destination with threat intelligence tools (e.g., VirusTotal).
  - Reset device credentials or factory reset if needed.

---
