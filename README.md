# Hacintosh Ansible Playbook

This playbook installs and configures most of the software I use on my Mac for penetration testing and other cybersecurity functions.

## Getting Started

There's a simple shell script in bin/bootstrap which will perform the initial steps of:

    1. Installing Xcode
    2. Installing Ansible
    3. Fetching required Ansible roles and collections

It then runs the main playbook `main.yml`.

For future updates, bin/apply can be used to run just the Ansible playbook without the setup commands.

## What's Installed

The easiest way to understand what's installed is to read the contents of `config.yaml`. This file holds all of the reusable variables, including the command line and cask applications installed using Homebrew.

Some of the core items are:

- Dotfiles
- Sensible Mac default configurations
- Homebrew for package management
- ASDF for version management
- Sublime Text with custom settings and theme

## Customizing

Everything can be customised by editing config.yml.

## Author

This project was created by Ryan Roth (originally inspired by [geerlingguy/mac-dev-playbook]https://github.com/geerlingguy/mac-dev-playbook).
