# 🛡️ Secure Home Network

This project demonstrates how I designed and configured a secure network for my home using principles covered in the CompTIA Security+ certification and skills I gained in University of Denver's Cybersecurity Bootcamp. It includes VLAN segmentation, device isolation, firewall practices, access control, and basic monitoring. This setup is designed for real-world practicality using consumer-grade networking hardware.

---

## 🔧 Key Security Concepts Applied

- **Defense in Depth** – Layered security from ISP to endpoint
- **VLAN Segmentation** – Isolate trusted, IoT, and guest traffic
- **Access Control** – MAC filtering, static IPs, and WPA3 security
- **Device Hardening** – Disable unused services and ports
- **Monitoring & Logging** – Lightweight DNS and traffic monitoring
- **Least Privilege** – Network access by role/type

---

## 🖼️ Network Architecture

The network is divided into three VLANs:

- **VLAN 10 – Trusted Devices**  
  Personal PC, personal laptops, work laptop, smartphones – high-privilege, limited access.
  
- **VLAN 20 – IoT Devices**  
  Smart TVs, firesticks, Xbox, Nintendo Switchs – internet-only access, no LAN visibility.
  
- **VLAN 30 – Guest Wi-Fi**  
  Visitor devices – internet access only, time-limited leases.

> 📂 View the full diagram:  
> [`secure_home_network_fixed.drawio`](./secure_home_network_fixed.drawio)

---

## 📁 Repository Contents

