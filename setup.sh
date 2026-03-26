#!/data/data/com.termux/files/usr/bin/bash

# --- 1. Initial Essentials ---
echo "Updating core packages..."
pkg update && pkg upgrade -y

echo "Requesting storage access..."
# This will trigger a popup on your Android screen
termux-setup-storage

# --- 2. SSH (Secure Shell) Setup ---
echo "Installing OpenSSH..."
pkg install openssh -y

echo "-------------------------------------------------------"
echo "STEP: Set your password"
echo "You will be prompted to enter a new password for SSH."
echo "-------------------------------------------------------"
passwd

# --- 3. Identify Connection Details ---
USER_NAME=$(whoami)
IP_ADDR=$(ifconfig wlan0 | grep 'inet ' | awk '{print $2}')

# --- 4. Final Instructions ---
echo ""
echo "======================================================="
echo "        TERMUX SETUP COMPLETE (ZeroCloud)             "
echo "======================================================="
echo "Your Username: $USER_NAME"
echo "Your IP Address: $IP_ADDR"
echo "SSH Port: 8022"
echo ""
echo "TO START THE SERVER NOW, RUN: sshd"
echo ""
echo "TO CONNECT FROM WINDOWS (PowerShell/CMD):"
echo "ssh $USER_NAME@$IP_ADDR -p 8022"
echo ""
echo "FOR WINDOWS NETWORK DRIVE MAPPING:"
echo "\\\\sshfs\\$USER_NAME@$IP_ADDR!8022"
echo "======================================================="

# Optional: Start sshd immediately
sshd
