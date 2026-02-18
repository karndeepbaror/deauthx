# 📡 802.11 Protocol Analysis & Disruption

## 1. The Deauthentication Mechanism
Deauthentication is not a signal jam; it is a management frame injection. Under the **IEEE 802.11 standard**, a deauthentication frame is a "notification" that an Access Point (AP) or a Client (STA) is terminating the session.

## 2. Packet Architecture
DeauthNet crafts raw frames using the following structure:
- **Frame Control:** Type 0 (Management), Subtype 12 (Deauthentication).
- **Reason Codes:** Usually Code 7 (Class 3 frame received from non-associated STA) or Code 1 (Unspecified).
- **Addressing:** Destination MAC (Target), Source MAC (AP), and BSSID.

## 3. Vulnerability Context
- **WPA/WPA2 Legacy:** These standards do not encrypt management frames, making them susceptible to injection.
- **802.11w (MFP):** Management Frame Protection mitigates this vector. DeauthNet audits whether MFP is correctly implemented in the target infrastructure.
