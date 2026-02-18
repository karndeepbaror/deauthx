## 🌀 Operational Logic Flow
```mermaid
graph TD
    A[Start Tool] --> B{Check Root?}
    B -- No --> C[Abort & Error]
    B -- Yes --> D[Scan Interfaces]
    D --> E[Monitor Mode Activation]
    E --> F[SSID/BSSID Sniffing]
    F --> G[Target Selection]
    G --> H[Packet Injection - Scapy]
    H --> I[Handshake Monitoring]
    I --> J[Sanitization & Restore]
