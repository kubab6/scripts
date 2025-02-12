#!/bin/bash
#Forward ports using iptables
#Replace PUBLICIP with Public IPv4 and WAN with WAN Interface (eg. vmbr0)
if [[ $# -eq 0 ]] ; then
    echo 'Error: No Args: ./port_forward.sh (443) (10.1.0.1:8443)'
    exit 0
fi
iptables -t nat -A PREROUTING -p tcp -d PUBLICIP --dport $1 -i WAN -j DNAT --to-destination $2
