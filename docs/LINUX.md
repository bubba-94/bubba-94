# Linux

## Filesystem Layout

```bash
├── bin          # Essential binaries
├── boot         # Boot loader files
├── dev          # Device files
├── etc          # Configuration files
├── home         # User home directories
├── lib          # Essential shared libraries
├── lib64        # 64-bit libraries
├── media        # Mount points for removable media
├── mnt          # Temporary mount points
├── opt          # Optional software packages
├── proc         # Kernel and process info (virtual)
├── root         # Root user's home directory
├── run          # Runtime files (PID, sockets)
├── sbin         # System binaries (admin)
├── srv          # Data for services
├── sys          # Kernel info (virtual)
├── tmp          # Temporary files
├── usr          # User programs, libraries, docs
├── var          # Variable files (logs, spool, cache)

```

## File and Directory Management

```bash
ls                  # List files in a directory
ls -l               # List files with details (permissions, owner, size)
ls -a               # Show hidden files
cd <dir>            # Change directory
pwd                 # Print current working directory
mkdir <dir>         # Create a new directory
rmdir <dir>         # Remove an empty directory
rm -r <dir>         # Remove a directory and its contents recursively
tree                # Display a directory tree structure (if installed)
```

## File Operations

```bash
cp <source> <dest>  # Copy files or directories
mv <source> <dest>  # Move or rename files/directories
rm <file>           # Delete a file
touch <file>        # Create an empty file or update timestamp
cat <file>          # Display file contents
less <file>         # View file contents page by page
head <file>         # Show the first 10 lines
tail <file>         # Show the last 10 lines
file <file>         # Show file type information
```

## Disk Usage & Storage

```bash
df -h               # Show disk space usage in human-readable format
du -sh <dir>        # Show size of a directory
mount               # Show mounted filesystems
umount <mount_point>    # Unmount a filesystem
lsblk               # List block devices and partitions
```

## User & Permissions

```bash
whoami              # Show current user
id                  # Show user ID and groups
groups              # List groups of current user
chmod <perm> <file> # Change file permissions
chown <user>:<group> <file> # Change file ownership
sudo <command>      # Execute command as root 
```

## Process & System Monitoring

```bash
ps aux              # Show all running processes
top                 # Interactive process viewer
htop                # Advanced interactive process viewer (if installed)
kill <pid>          # Kill a process by PID
free -h             # Show memory usage
uptime              # Show system uptime
uname -a            # Show kernel and OS info
```

## Networking

```bash
ping <host>         # Test connectivity to a host
ifconfig or ip addr # Show network interfaces
netstat -tuln       # Show listening ports
curl <url>          # Fetch data from a URL
wget <url>          # Download files from the web
ssh user@host       # Connect to a remote host via SSH
scp <source> <user@host>:<dest> # Copy files over SSH
```

## Package Management (Linux-specific)

### Debian/Ubuntu (apt)

#### Command Description

```bash
sudo apt update # Update package lists
sudo apt upgrade # Upgrade installed packages
sudo apt install <package> # Install a package
sudo apt remove <package> # Remove a package
dpkg -l # List installed packages
```
