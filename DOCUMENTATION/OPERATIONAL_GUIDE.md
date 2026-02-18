# 🛠️ Operational Guide: Deployment & Scaling

## Hardware Compatibility
To achieve high-fidelity injection, your wireless chipset must support:
- **Monitor Mode (RFMON)**
- **Packet Injection**
- *Recommended Chipsets:* Atheros AR9271, Ralink RT3070, Realtek RTL8812AU.

## Advanced Usage Scenarios
### Surgical Disconnection
When capturing handshakes, avoid a broadcast attack. Use the **Targeted Mode** to disconnect only the most active client to minimize noise in the RF spectrum.

### Automated Interface Setup
The framework utilizes `airmon-ng` logic to handle interface state changes. If the interface fails to enter Monitor Mode:
1. `sudo airmon-ng check kill` (To stop conflicting processes).
2. `sudo rfkill unblock wlan` (To clear hardware/software locks).

## Troubleshooting
| Issue | Potential Cause | Solution |
| :--- | :--- | :--- |
| Interface Busy | NetworkManager Interference | Run `sudo airmon-ng check kill` |
| No SSIDs Found | Card not in Monitor Mode | Verify via `iwconfig` |
| Injection Failed | Driver Limitation | Install specialized drivers (e.g., vgreenc/rtl8812au) |
