#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

if [ -f "WinInfected" ]; then
  sudo chmod +x wininfected
else
  echo "Error: WinInfected file not found."
  exit 1
fi

if sudo cp wininfected /usr/bin/; then
  echo "WinInfected installed successfully."
else
  echo "Error: Failed to copy WinInfected to /usr/bin."
  exit 1
fi
