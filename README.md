# my-cloud-pc
# Cloud-Based Virtual Desktop Infrastructure (VDI) Prototype

A high-performance, containerized Virtual Desktop Infrastructure (VDI) streamed entirely via standard web browsers, mimicking enterprise cloud-host solutions like JioPC.

## 🚀 Key Features
- **Multi-Device Compatibility:** Fully accessible on smartphones, tablets, laptops, and Smart TVs without external client applications.
- **Complete Isolation:** Utilizes sandboxed container environments to isolate user workloads from the host machine's native storage filesystem.
- **Optimized Networking:** Implements dynamic port-forwarding and global DNS routing overrides to bypass local firewall and ISP restrictions.

## 🛠️ Tech Stack & Architecture
- **Infrasfructure:** GitHub Codespaces (Cloud Virtual Hosting)
- **Containerization:** Docker Engine (`kasmweb/ubuntu-jammy-desktop`)
- **Protocols:** WebRTC, WebSocket, and VNC video encoding streaming layers
- **Operating System:** Ubuntu Linux (XFCE Lightweight Desktop Environment)
