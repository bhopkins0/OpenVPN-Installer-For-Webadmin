STATUS=$(service openvpn status)

if [[ $1 == 1 ]]; then
        if [[ $STATUS == *"Active: active"* ]]; then
          echo "<h1 class='text-success'>OpenVPN is running"
        else
          echo "<h1 class='text-danger'>OpenVPN is not running"
        fi
elif [[ $1 == 2 ]]; then
        if [[ $STATUS == *"Active: active"* ]]; then
          echo "<input class='btn btn-danger w-100' type='submit' value='Stop OpenVPN'>"
        else
          echo "<input class='btn btn-success w-100' type='submit' value='Start OpenVPN'>"
        fi
elif [[ $1 == 3 ]]; then
        if [[ $STATUS == *"Active: active"* ]]; then
          service openvpn stop
        else
          service openvpn start
        fi
fi
