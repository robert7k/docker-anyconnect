#!/bin/bash
cd anyconnect-linux64-4.10.07061/vpn
yes | ./vpn_install.sh

su docker -c firefox-esr &
su docker -c /opt/cisco/anyconnect/bin/vpnui

