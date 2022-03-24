STATUS=$(service openvpn status)
if [[ $STATUS == *"Active: active"* ]]; then
  echo "<h1 class='text-success'>OpenVPN is running"
else
  echo "<h1 class='text-danger'>OpenVPN is not running"
fi
