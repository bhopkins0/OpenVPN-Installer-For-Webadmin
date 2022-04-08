rm /var/www/openvpn_scripts/create.sh
rm /var/www/openvpn_scripts/revoke.sh
rm /var/www/openvpn_scripts/status.sh
rm /var/www/openvpn_scripts/portchange.sh
wget -O /var/openvpn_scripts/revoke.sh https://raw.githubusercontent.com/bhopkins0/OpenVPN-Installer-For-Webadmin/main/revoke.sh
chmod +x /var/openvpn_scripts/revoke.sh
wget -O /var/openvpn_scripts/create.sh https://raw.githubusercontent.com/bhopkins0/OpenVPN-Installer-For-Webadmin/main/create.sh
chmod +x /var/openvpn_scripts/create.sh
wget -O /var/openvpn_scripts/status.sh https://raw.githubusercontent.com/bhopkins0/OpenVPN-Installer-For-Webadmin/main/status.sh
chmod +x /var/openvpn_scripts/status.sh
wget -O /var/openvpn_scripts/changeport.sh https://raw.githubusercontent.com/bhopkins0/OpenVPN-Installer-For-Webadmin/main/changeport.sh
chmod +x /var/openvpn_scripts/changeport.sh
