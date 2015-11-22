
cd /etc/openvpn
. ./vars 
./clean-all 
./pkitool --initca
./pkitool --server server
./build-dh
