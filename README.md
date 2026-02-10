ZeroCloud ☁️📱
ZeroCloud is a lightweight solution to transform your Android device into a functional Network Attached Storage (NAS) system. By leveraging Termux and Samba, ZeroCloud allows you to host and access your files across your local network without relying on third-party cloud providers.

🚀 Features
Turn Android into NAS: Use your phone’s internal or external storage as a network drive.

Cross-Platform Access: Access files seamlessly from Windows, macOS, Linux, or other Android/iOS devices.

Local & Secure: Your data stays on your hardware and within your local network.

Automated Setup: Includes scripts to simplify the installation of dependencies and configuration of the Samba server.

🛠️ Prerequisites
An Android device with Termux installed (F-Droid version recommended).

Storage permissions granted to Termux (termux-setup-storage).

A stable local Wi-Fi network.

📥 Installation & Setup
Follow the steps shown in setup.md
🖥️ Connecting to ZeroCloud
On Windows:
Open File Explorer.

In the address bar, type \\<phone_ip_address>\.

Enter your credentials when prompted.

On Android (using a File Manager):
Use a file manager that supports SMB (like Solid Explorer or MiXplorer).

Add a new "LAN/SMB" storage.

Input your phone's local IP and the port (usually 10445 or 445 depending on configuration).

⚙️ Configuration
The Samba configuration file is located at: $PREFIX/etc/smb.conf

You can customize shared folders, permissions, and guest access by editing this file.

🤝 Contributing
Contributions are welcome! If you have ideas for improving the setup script or adding new features, feel free to fork the repo and submit a pull request.

📄 License
This project is licensed under the MIT License - see the LICENSE file for details.
