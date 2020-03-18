#!/bin/bash

# Add the ssh-credentials.conf file to .gitignore
echo "ssh-credentials.conf" >> {{cookiecutter.project_slug}}/.gitignore

# Make `/bin` and `/scripts` folder files executable
chmod +x {{cookiecutter.project_slug}}/bin/*.sh
chmod +x {{cookiecutter.project_slug}}/scripts/*.sh