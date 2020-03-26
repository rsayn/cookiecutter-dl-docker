#!/bin/bash

# Add the ssh-credentials.conf file to .gitignore
echo "ssh-credentials.conf" >> .gitignore

# Make `/bin` and `/scripts` folder files executable
chmod +x bin/*.sh
chmod +x scripts/*.sh