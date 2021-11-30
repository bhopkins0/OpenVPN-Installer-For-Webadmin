# OpenVPN-Installer-For-Webadmin

Creates an OpenVPN server compatible with the OpenVPN-WebAdmin project.


```bash
wget https://raw.githubusercontent.com/bhopkins0/OpenVPN-Installer-For-Webadmin/main/installvpn.sh
chmod +x installvpn.sh
./installvpn.sh
```

# Disclaimer

The was designed to be used in a personal project of mine. That being said, the script is intended to only be installed on a fresh server runningUbuntu >= 20.04.

The script also does a few things you might not want, such as:
* Uses 1.1.1.1 and 1.0.0.1 for DNS servers
* Uses TCP on port 443
* Uses ECDH (prime256v1) instead of regular DH keys 
* Does not use compression
* **Does not support IPv6**


# Credits

Largely based off Angristan's project [openvpn-install](https://github.com/angristan/openvpn-install). 
