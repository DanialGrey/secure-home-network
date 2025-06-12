# Router Hardening

This document outlines the security measures implemented to harden my home router and protect the network from unauthorized access and attacks.

## 1. Changed Default Credentials
- Double checked that I had changed default admin username and password to a strong, unique password.
- Ensured credentials follow best practices: minimum 12 characters, mix of letters, numbers, and special characters.

## 2. Firmware Updates
- Checked router manufacturer website regularly for firmware updates.
- Updated router firmware to the latest stable version to patch known vulnerabilities.

## 3. Disable Unnecessary Services
- Disabled Remote Administration / Remote Management to prevent external access to the router’s admin interface.
- Turned off Universal Plug and Play (UPnP), which can be exploited by malware.
- Disabled Telnet and SSH access if not needed, or limited SSH to trusted IP addresses.

## 4. Secure Wi-Fi Configuration
- Enabled WPA3 encryption; if unsupported, used WPA2 with AES encryption.
- Set a strong, unique Wi-Fi password.
- Disabled WPS (Wi-Fi Protected Setup) to prevent brute-force attacks.
- Configured separate SSIDs for Guest and IoT devices with VLAN segmentation.

## 5. Network Services & Features
- Disabled IPv6 if not in use to reduce attack surface.
- Enabled router firewall with default-deny rules.
- Enabled Intrusion Detection/Prevention System (IDS/IPS) if supported.

## 6. Logging and Monitoring
- Enabled system logs for router activities.
- Configured log forwarding to a centralized syslog server or local storage for analysis.

## 7. Additional Security Measures
- Configured MAC address filtering for critical devices.
- Limited DHCP range to prevent rogue devices from easily connecting.
- Set up DNS filtering (e.g., using Pi-hole) for malicious domain blocking.

---

