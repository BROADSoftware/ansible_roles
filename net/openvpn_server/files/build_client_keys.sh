
cd /etc/openvpn
. ./vars 
export KEY_CN=$1	# Bug: https://forums.openvpn.net/topic14040.html

export EASY_RSA="${EASY_RSA:-.}"
"$EASY_RSA/pkitool" $*
