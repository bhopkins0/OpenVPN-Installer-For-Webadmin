function newClient() {
        CLIENTEXISTS=$(tail -n +2 /etc/openvpn/easy-rsa/pki/index.txt | grep -c -E "/CN=$1\$")
        if [[ $CLIENTEXISTS == '1' ]]; then
                echo "CN already exists"
                exit
        else
                cd /etc/openvpn/easy-rsa/ || return
                ./easyrsa build-client-full "$1" nopass
        fi
        homeDir="/var/openvpn_clients/"
        # Generates the custom client.ovpn
        cp /etc/openvpn/client-template.txt "$homeDir/$1.ovpn"
        {
                echo "<ca>"
                cat "/etc/openvpn/easy-rsa/pki/ca.crt"
                echo "</ca>"
                echo "<cert>"
                awk '/BEGIN/,/END/' "/etc/openvpn/easy-rsa/pki/issued/$1.crt"
                echo "</cert>"
                echo "<key>"
                cat "/etc/openvpn/easy-rsa/pki/private/$1.key"
                echo "</key>"
                echo "<tls-crypt>"
                cat /etc/openvpn/tls-crypt.key
                echo "</tls-crypt>"
        } >>"$homeDir/$1.ovpn"
        exit 0
}

newClient $1
