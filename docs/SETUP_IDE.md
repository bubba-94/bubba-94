# bubba-94 Developer Setup

## My computer specification

* **CPU:** Intel i7-10700k
* **RAM:** 16GB
* **GPU:** GeForce RTX 2060
* **Storage:** 1TB Samsung SSD EVO

## Software

* Visual Studio Code
* Docker

## Explanation WSL Remote

I like this setup because it keeps my WSL environment separate from Windows, letting me work in a clean Linux development space while still using VS Code on Windows. This separation makes it easier to manage dependencies, avoid conflicts, and experiment freely without affecting my main system.

### Requirements

* Windows 10 (2004+) or Windows 11 | WSL 2 is recommended for the best performance.

### Guide

1. ```powershell wsl --install -d Ubuntu-22.04``` Install and Ubuntu and setup Linux username/password.
2. Download and install from [code.visualstudio.com](https://code.visualstudio.com/download)(remeber to pick the right OS).
3. Install WSL - Remote extension (blue and white penguin logo).
4. Open WSL folder in VS Code in Ubuntu terminal (The first run of `code .` will install VS Code Server inside WSL after you have opened code once).
    * Run: ```bash code .```
5.

```bash

# 1. Install Git
sudo apt update
sudo apt install -y git

# 2. Verify installation
git --version

# 3. Configure Git globally
git config --global user.name <your-username>
git config --global user.email <your@email.com>
git config --global core.editor "code --wait"   # optional: sets VS Code as default editor.

# 4. Generate a new SSH key for GitHub (or other Git servers)
ssh-keygen -t ed25519 -C "you@example.com"
# Press Enter to accept default location (~/.ssh/id_ed25519)
# Optionally: set a passphrase

# 5. Start the SSH agent and add your key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# 6. Display the public key to copy to GitHub
cat ~/.ssh/id_ed25519.pub

```

* Next:
  * Copy the output from cat ~/.ssh/id_ed25519.pub.
  * On GitHub: Settings → SSH and GPG keys → New SSH key → Paste the key → Save
  * Test the SSH connection:
  ```bash ssh -T git@github.com```

6. Explore VS Code and install extensions of your choosing
    * I am mostly using:
        * WSL (Should already be installed)
        * C/C++ (also C/C++ Extension Pack for IntelliSense, debugging and more)
        * Platform IO
        * CMake
        * Python

7. Install C/C++ compiler and Python package manager, i will provide a link to my own script that will install needed packages for compiling C/C++ and developing Python applications(!!Remember to make the file executable!!). [LINK](../scripts/packages.sh)

8. Optional!: Install Docker Desktop is installed on Windows and WSL integration.
