#!/bin/bash

# Directory where VPN configurations are stored
VPN_DIR=~/VPN

# List of VPN options
echo "Select a VPN to connect:"
echo "1) TryHackMe (thm.ovpn)"
echo "2) HackTheBox Lab (htb_lab.ovpn)"
echo "3) HackTheBox Arena (htb_arena.ovpn)"
echo "4) PwnedLabs VPN (pwnlabs.ovpn)"
echo "5) Exit"

# Prompt the user for input
read -p "Enter your choice (1-4): " choice

# Check user input and execute the appropriate command
case $choice in
    1)
        sudo openvpn "$VPN_DIR/thm.ovpn"
        ;;
    2)
        sudo openvpn "$VPN_DIR/htb_lab.ovpn"
        ;;
    3)
        sudo openvpn "$VPN_DIR/htb_arena.ovpn"
        ;;
    4)
    	sudo openvpn "$VPN_DIR/pwnlabs.ovpn"
    	;;
    5)
        echo "Exiting script. Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid choice. Please run the script again and select a valid option."
        ;;
esac
