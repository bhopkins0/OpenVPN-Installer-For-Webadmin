STATUS=$(service openvpn status)
if [[ $STATUS == *"Active: active"* ]]; then
  echo "OpenVPN is running"
else
  echo "OpenVPN is not running"
fi
