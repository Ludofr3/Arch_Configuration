# Arch Linux Installation and Configuration Scripts

This repository contains a set of scripts to automate the installation and configuration of Arch Linux, including the setup of various tools and applications.

## Table of Contents

- [Arch Linux Installation and Configuration Scripts](#arch-linux-installation-and-configuration-scripts)
  - [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Post Installation](#post-installation)
  - [File Configurations](#file-configurations)
    - [fileconfig.json](#fileconfigjson)
    - [fileconfigcredential](#fileconfigcredential)
  - [Scripts](#scripts)
    - [install.sh](#installsh)
    - [install\_zsh.sh](#install_zshsh)
    - [install\_vsCode.sh](#install_vscodesh)
    - [install\_steam.sh](#install_steamsh)
    - [install\_apps.sh](#install_appssh)
  - [License](#license)

## Prerequisites

- An Arch Linux installation medium (e.g., USB drive or ISO file)
  - Download ISO file: https://archlinux.org/download/
  - Verify signature: https://wiki.archlinux.org/title/Installation_guide#Verify_signature
- A computer with internet access

## Installation

1. Boot your computer using the Arch Linux installation medium.
2. Connect to the internet.
3. Recover archinstall configuration::

```bash
# Download fileconfig.json
curl -O https://raw.githubusercontent.com/Ludofr3/Arch_Configuration/main/archinstall_config/fileconfig.json
```

```bash
# Download fileconfigcredential.json
curl -O https://raw.githubusercontent.com/Ludofr3/Arch_Configuration/main/archinstall_config/fileconfigcredential.json
```
4. Customize the `fileconfig.json` and `fileconfigcredential.json` files according to your preferences.

5. Launch archinstall:

```bash
archinstall --config fileconfig.json --creds fileconfigcredential.json
```

5. Configure your disk and click on 'Install'

![alt text](/readme_image/disk_configuration.png)

6. Press 'Enter'

![alt text](/readme_image/press_enter.png)

7. Now you can go and make yourself a cup of coffee
8. Choose 'no'

![alt text](/readme_image/post-installation-no.png)

9. Now you can reboot

```bash
reboot
```

## Post Installation

1. Run the main installation script:

```bash
git clone https://github.com/Ludofr3/Arch_Configure
```
```bash
cd Arch_Configure/post_installation
```
```bash
./install.sh
```

2. Follow the on-screen instructions.

## File Configurations

### fileconfig.json

This JSON file contains various configuration options for the Arch Linux installation process. Here's a breakdown of the options:

| Key                     | Value(s)                                                              | Description                                                                                      | Required |
| ----------------------- | --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ | -------- |
| additional-repositories | [ multilib, testing ]                                                                                                     | Enables one or more of the testing and multilib repositories before proceeding with installation | No       |
| archinstall-language    | lang                                                                                                                      | Sets the TUI language used (make sure to use the `lang` value not the `abbr`)                    | No       |
| audio_config            | pipewire, pulseaudio                                                                                                      | Audioserver to be installed                                                                      | No       |
| bootloader              | Systemd-boot, grub                                                                                                        | Bootloader to be installed (grub being mandatory on BIOS machines)                               | Yes      |
| debug                   | true, false                                                                                                               | Enables debug output                                                                             | No       |
| disk_config             | Read more under Disk Configuration                                                                                        | Contains the desired disk setup to be used during installation                                   | No       |
| disk_encryption         | Read more about under Disk Encryption                                                                                     | Parameters for disk encryption applied on top of disk_config                                     | No       |
| hostname                | str                                                                                                                       | A string defining your machine's hostname on the network (defaults to `archinstall`)             | No       |
| kernels                 | [ linux, linux-hardened, linux-lts, linux-rt, linux-rt-lts, linux-zen ]                                                   | Defines which kernels should be installed and setup in the boot loader options                   | Yes      |
| custom-commands         | Read more under Custom Commands                                                                                           | Custom commands that will be run post-install chrooted inside the installed system               | No       |
| locale_config           | {kb_layout: lang, sys_enc: Character encoding, sys_lang: locale}                                                          | Defines the keyboard key map, system encoding and system locale                                  | No       |
| mirror_config           | {custom_mirrors: [ https://... ], mirror_regions: { "Worldwide": [ "https://geo.mirror.pkgbuild.com/$repo/os/$arch" ] } } | Sets various mirrors (defaults to ISO's `/etc/pacman.d/mirrors` if not defined)                  | No       |
| network_config          | `see options under Network Configuration`                                                                                 | Sets which type of (if any) network configuration should be used                                 | No       |
| no_pkg_lookups          | true, false                                                                                                               | Disabled package checking against https://archlinux.org/packages/                                | No       |
| ntp                     | true, false                                                                                                               | Enables or disables NTP during installation                                                      | No       |
| offline                 | true, false                                                                                                               | Enables or disables certain online checks such as mirror reachability etc                        | No       |
| packages                | [ <package1>, <package2>, ... ]                                                                                           | A list of packages to install during installation                                                | No       |
| parallel downloads      | 0-∞                                                                                                                       | Sets a given number of parallel downloads to be used by pacman                                   | No       |
| profile_config          | {profile_name: str, profile_options: [ option1, option2, ... ]}                                                                                    | Installs a given profile if defined                                                              | No       |
| script                  | guided (default), minimal, only_hdd, swiss, unattended                                                                    | When used to autorun an installation, this sets which script to autorun with                     | No       |
| silent                  | true, false                                                                                                               | Disables or enables user questions using the TUI                                                 | No       |
| swap                    | true, false                                                                                                               | Enables or disables swap                                                                         | No       |
| timezone                | timezone                                                                                                                  | Sets a timezone for the installed system                                                         | No       |


### fileconfigcredential

This JSON file contains user credentials for the installed system. Here's a breakdown of the options:

- `!encryption-password`: Password to encrypt disk, not encrypted if password not provided.
- `!root-password`: The root account password
- `!users`: An array of user objects.
  - `!password`: The user's password.
  - `sudo`: Grant the user sudo privileges.
  - `username`: The user's username.

## Scripts

### install.sh

The main installation script that orchestrates the installation and configuration process. This script updates the system, installs Git, Yay, Zsh, Visual Studio Code, additional applications, and Steam.

### install_zsh.sh

This script installs and configures the Zsh shell. It installs Zsh, changes the default shell to Zsh, and installs Oh My Zsh.

### install_vsCode.sh

This script installs and configures Visual Studio Code, including various extensions for comments, code cleaning, themes, Git, DevOps, AI, security, live sharing, UML, BNF, Markdown, C++, React, Go, Rust, and Python.

### install_steam.sh

This script installs and configures Steam, including the ProtonUp-Qt tool. It enables the Arch Multilib repository, installs Steam, and installs ProtonUp-Qt. Once the installation is complete, the user needs to follow these steps to enable Steam Play and configure Proton GE:

1. Open the Steam client.
2. Navigate to the 'Steam' menu in the top-left corner and click 'Settings'.
3. Select 'Compatibility' from the menu on the left.
4. Enable 'Enable Steam Play for supported titles' and 'Enable Steam Play for all other titles'.
5. Select the installed Proton GE version from the 'Run other titles with' option.
6. Restart the Steam client if prompted.

### install_apps.sh

This script installs various additional applications, such as Brave, Blender, Spotify, and Obsidian.

## License

This project is licensed under the [MIT License](LICENSE).