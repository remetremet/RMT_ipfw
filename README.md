# RMT_ipfw
Automated FreeBSD IPFW2 (up to 20x WAN, up to 20x LAN, NAT, QoS, traffic shaping, stateful or stateless. For a router, desktop, server, VPN server, ...

- Stateful/Stateless firewall
- Multiple WANs (FreeBSD FIBs)
- Multiple LANs (incl. VLANs)
- IPv6/IPv4
- Host, protocol and port based
- Failover / Load balancing of multiple WANs
- IP blacklist (IPv4 and IPv6) integrated
- Traffic stats counting (for Munin, Zabbix, Nagios, etc. monitoring)

Install
---
 Run `bash -c "$(curl -fsSL https://raw.githubusercontent.com/remetremet/RMT_ipfw/master/_setup.sh)"`


Requirements
---
- `bash` - for Github updates (firewall scripts runs with regular `sh` shell)
- `git`
- FreeBSD IPFW2 (incl. NAT and dummynet)
- FreeBSD 11.0+
- use [tweaks](tweaks) to set and tune network subsystem


---

![license-image](https://img.shields.io/github/license/remetremet/RMT_ipfw?style=plastic)
![last-commit-image](https://img.shields.io/github/last-commit/remetremet/RMT_ipfw?style=plastic)
![repo-size-image](https://img.shields.io/github/repo-size/remetremet/RMT_ipfw?style=plastic)

Use it if you want.
