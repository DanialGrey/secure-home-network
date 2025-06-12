# Network Access Control

This document outlines the access control mechanisms implemented to protect my home network from unauthorized access and to segment traffic between different types of devices.

## 1. VLAN Segmentation

To isolate traffic between trusted, guest, and IoT devices:

- **VLAN 10 – Trusted Devices**
  - Desktop, personal laptops, mobile phones, work laptop.
  - Full internet access.
  - Access to shared services.

- **VLAN 20 – Guest Wi-Fi**
  - Internet access only.
  - No access to LAN or other VLANs.
  - DHCP provided from isolated range.

- **VLAN 30 – IoT Devices**
  - Smart TV, firestick devices, gaming consoles, baby monitor.
  - Restricted access to internet only.
  - No access to Trusted VLAN or router management.

Configured using managed switch or router with VLAN-aware firmware.

## 2. DHCP and IP Management

- Each VLAN has its own DHCP scope with non-overlapping IP ranges.
- Static IP assignments for critical devices (e.g., router, NAS, Pi-hole).
- IP reservations used for known MAC addresses to maintain consistency.

## 3. MAC Address Filtering

- MAC filtering enabled on trusted and IoT VLANs to restrict unknown device access.
- Allowed MACs reviewed and updated periodically.

## 4. Guest Wi-Fi Isolation

- Guest SSID uses VLAN 20 with strict isolation settings:
  - Client isolation (guests can't see each other)
  - No LAN access
  - Bandwidth limits optionally applied

## 5. Firewall Rules

- Ingress/egress firewall rules configured on VLAN interfaces:
  - Block inter-VLAN traffic by default.
  - Allow specific exceptions (e.g., Pi-hole DNS across VLANs).
  - Block known malicious IP ranges if supported by router.

## 6. DNS Filtering and Content Control

- Pi-hole or similar DNS filtering server used for:
  - Blocking ads and malicious domains.
  - Enforcing Safe Search for children’s devices.

- DNS queries from all VLANs redirected to Pi-hole using firewall rules.

## 7. Device Access Logging

- Router logs used to track new devices joining each VLAN.
- Alerts or reviews performed weekly to identify unfamiliar MAC addresses or abnormal behavior.

---
