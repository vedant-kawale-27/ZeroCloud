1. Initial Essentials\
After installing Termux (preferably from [F-Droid](https://f-droid.org/en/packages/com.termux/) or [GitHub](https://github.com/termux/termux-app), as the Play Store version is outdated), run these commands to update the core packages and set up storage access:
```bash
pkg update && pkg upgrade
```
```bash
termux-setup-storage
```


2. SSH (Secure Shell)\
   Setting up SSH in Termux is a great way to manage your Android device from a PC.
   
   *Install OpenSSH\
   First, ensure your packages are up to date and install the OpenSSH package. Open Termux and run:
   ```bash
   pkg install openssh
   ```
   
   *Set Your Password\
   By default, Termux doesn't have a password set. You’ll need one to log in from another device. Run:
   ```bash
   passwd
   ```
   Enter a secure password (it won't show characters as you type) and confirm it.

   *Identify Your Connection Details\
   To connect from your PC, you need to know who you are and where your device is on the network.
   Your Username: Run
   ```bash
   whoami
   ```
    (Usually looks like u0_a123)
   
   Your IP Address: Run
   ```bash
   ifconfig
   ```
   Look for the inet address under the wlan0 section (usually 192.168.x.x).
   Note: Termux runs SSH on port 8022 instead of the standard port 22 to avoid requiring root permissions.

   *Start the SSH Server\
   To turn the server on, simply type:
   ```bash
   sshd
   ```
   Note: You will need to run this command every time you restart Termux unless you set up an auto-start script.

   *Connect from Your PC\
   Now, go to your computer (Windows, Mac, or Linux) and open your terminal or PowerShell. Use the following command format:
   ```bash
   ssh [username]@[IP_address] -p 8022
   ```
   Example: `ssh u0_a456@192.168.x.x -p 8022`

   Troubleshooting\
   Connection Refused: Ensure sshd is actually running in Termux and you are using port 8022.
   Same Network: Ensure both your phone and PC are connected to the same Wi-Fi network(local network).


3. SSHFS-Win Setup\
   SSHFS for Windows allows you to mount remote Linux/Unix directories as local drives using SSH/SFTP, primarily via SSHFS-Win.
   
   *Download and Install WinFsp\
   a. WinFsp is required for SSHFS-Win to work.\
   b. Go to [https://winfsp.dev/rel/](https://winfsp.dev/rel/)\
   c. Download the latest WinFsp installer (usually named like winfsp-2.0.xxxxx.msi)\
   d. Run the installer\
   e. Click Next → Next → Install\
   f. Click Finish\

    *Download and Install SSHFS-Win\
    a. Go to [https://github.com/winfsp/sshfs-win/releases](https://github.com/winfsp/sshfs-win/releases)\
    b. Find the latest release\
    c. Download sshfs-win-xxxxx-x64.msi (the .msi file)\
    d. Run the installer\
    e. Click Next → Next → Install\
    f. Click Finish\

   
5. Map Network Drive in Windows

   a. Open **File Explorer** on Windows\
   b. Right-click on **This PC**\
   c. Click **Map network drive**\
   d. Choose a **drive letter** (e.g., `Z:`)\
   e. In the **Folder** field, enter this format:\
   ```bash
   \\sshfs\[username]@[IP_address]!8022
   ```
   Example: `\\sshfs\u0_a123@192.168.x.x!8022`\
   f. Click **Finish**

6. Enter Your Password\
A credential window will appear:

   a. **Username:** Your Termux username (e.g., `u0_a123`)\
   b. **Password:** Your Termux password (the one you set with `passwd`)\
   c. **Optional:** Check "**Remember my credentials**" to avoid typing password every time\
   d. Click **OK**\
