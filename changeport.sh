IP=$(curl -4 https://ifconfig.co)
sed -i "s/port.*/port $1/" /etc/openvpn/server.conf
sed -i "s/remote .*/remote $IP $1/" /etc/openvpn/client-template.txt
