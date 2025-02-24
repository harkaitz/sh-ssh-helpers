# SSH HELPERS

Helper little programs around *OpenSSH*.

## Help

ssh-h-authorized-keys

    Usage: ssh-h-authorized-keys [-a] -f FILE SSH,...
    
    This program replaces "~/.ssh/authorized_keys" in remote machines
    specified by "SSH,..." with "FILE". If "-a" is specified the keys
    in FILE are appended, keeping those already installed.
    
    See also: ssh-h-list

ssh-h-config

    Usage: ssh-h-config [OPS...] SSH,...
    
    This program helps editing the server's "/etc/ssh/sshd_config" file
    (In windows C:/ProgramData/ssh/sshd_config) in bulk.
    
      -gC1 : Get configuration file pathname.
      -gC2 : Print configuration file.
      -dP  : Disable password login.
      -eF  : Enable forwarding.
      -eX  : Enable X11 forwarding.
      -eR  : Enable root.
      -r   : Reload SSHD service.
    
    Supported platforms: Linux, OpenBSD, Busybox Windows.
    See also: ssh-h-list

ssh-h-copy-to-tmp

    Usage: ssh-h-copy-to-tmp SSH[,...] FILES... DIRECTORIES...
    
    This program copies the FILES... to remote machine's temporal
    directory defined as "${DDIR:-${TEMP:-/tmp}}" using scp(1). 
    
    See also: ssh-h-list

ssh-h-history

    Usage: ssh-h-history {-V , [-d] SSH,... }
    
    This program prints the last commands executed on each machine.
    
    If "-d" is given, instead of printing those commands, these are
    saved in local ~/.ssh-h-history/ by machine name and then removed
    in remote.
    
    Environment variables: SSH_H_HISTORY_DIRECTORY
    See also: ssh-h-list

ssh-h-list

    Usage: ssh-h-list l|HOST,...
    
    This program helps organizing SSH machines in groups. You can have
    groups as: win8, rack1, runners etc.
    
    For defining groups write a shell script in "$SSH_H_LIST", "~/.ssh/groups"
    or "/etc/ssh/groups". The script should take a group name and print
    the machine names. When "l" given the script should list the groups
    and optionally machines.
    
    Scripts that source ssh-h-list get ssh(1) aliased with the following
    options: -o PasswordAuthentication=no -o BatchMode=yes -o ConnectTimeout=2

ssh-h-ping

    Usage: ssh-h-ping SSH,...
    
    Login in remote machines and print `uname -s`.
    
    See also: ssh-h-list

ssh-h-power

    Usage: ssh-h-power SSH,... [off|restart]
    
    Power off (off) or restart (restart) remote machines running
    Linux/OpenBSD/Windows(Busybox/Cygwin/Msys).
    
    See also: ssh-h-list

ssh-h-run

    Usage: ssh-h-run SSH,... COMMAND
    
    Execute the same command in multiple machines.
    
    See also: ssh-h-list

ssh-h-send

    Usage: ssh-h-send SSH,...:DIRECTORY FILES...
    
    Send files to a remote directory using `tar(1)` and `ssh(1)`.
    
    See also: ssh-h-list

ssh-h-setenv

    Usage: ssh-h-setenv SSH,... KEY[=VALUE] ...
    
    Get/set environment variables with setx (windows) and /etc/environment
    (in UNIX wgen available) or "/etc/profile.d/env_VAR.sh".
    
    See also: ssh-h-list 

ssh-h-speed

    Usage: ssh-h-speed SSH,...
    
    Tell the upload and download speed over SSH (requires GNU dd).
    
    See also: ssh-h-list

ssh-h-uname

    Usage: ssh-h-uname OPTS... SSH,...
    
    Get information from uname(1) and os-release(5).
    
      -m  Get machine platform.
      -s  Get kernel name.
      -d  Get distro name if os-release is available, otherwide kernel.
    
    Environment variables: SSH_H_LIST

## Collaborating

For making bug reports, feature requests, support or consulting visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
