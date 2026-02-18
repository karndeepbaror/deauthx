# 🏗️ Framework Architecture

## 1. Engine Core: Scapy
DeauthNet leverages the **Scapy-Python** engine for packet manipulation. This allows the tool to interact directly with the L2 Data Link layer without the overhead of higher-level OS networking stacks.

## 2. Multi-Threaded Scanning
The scanning module utilizes asynchronous beacon sniffing. It filters and parses 802.11 beacon frames to extract:
- **ESSID/BSSID**
- **Channel Frequency**
- **Signal Strength (RSSI)**
- **Encryption Type**

## 3. Sanitization Protocol
Upon termination (SIGINT), the framework executes a cleanup sequence:
- **Interface Reset:** Reverts the card to Managed Mode.
- **Service Restore:** Restarts `NetworkManager` or `wpa_supplicant`.
- **Memory Flush:** Clears temporary lists of discovered nodes.
- 
