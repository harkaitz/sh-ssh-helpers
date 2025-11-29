# SSH HELPERS

Helper little programs around *OpenSSH*.

## Help

ssh-h-authorized-keys

    Usage: ssh-h-authorized-keys [-a] -f FILE SSH,...
    
    This program replaces "~/.ssh/authorized_keys" in remote machines
    specified by "SSH,..." with "FILE". If "-a" is specified the keys
    in FILE are appended, keeping those already installed.
    
    Environment variables: SSH_H_LIST

ssh-h-copy-to-tmp

    Usage: ssh-h-copy-to-tmp SSH[,...] FILES... DIRECTORIES...
    
    This program copies the FILES... to remote machine's temporal
    directory defined as "${DDIR:-${TEMP:-/tmp}}" using scp(1). 
    
    Environment variables: SSH_H_LIST

ssh-h-history

    Usage: ssh-h-history {-V , [-d] SSH,... }
    
    This program prints the last commands executed on each machine.
    
    If "-d" is given, instead of printing those commands, these are
    saved in local ~/.ssh-h-history/ by machine name and then removed
    in remote.
    
    Environment variables: SSH_H_LIST, SSH_H_HISTORY_DIRECTORY

ssh-h-ping

    Usage: ssh-h-ping SSH,...
    
    Login in remote machines and print `uname -s`.
    
    Environment variables: SSH_H_LIST

ssh-h-power

    Usage: ssh-h-power SSH,... [off|restart]
    
    Power off (off) or restart (restart) remote machines running
    Linux/OpenBSD/Windows(Busybox/Cygwin/Msys).
    
    Environment variables: SSH_H_LIST

ssh-h-run

    Usage: ssh-h-run SSH,... COMMAND
    
    Execute the same command in multiple machines.
    
    Environment variables: SSH_H_LIST

ssh-h-send

    Usage: ssh-h-send SSH,...:DIRECTORY FILES...
    
    Send files to a remote directory using `tar(1)` and `ssh(1)`.
    
    Environment variables: SSH_H_LIST

ssh-h-speed

    Usage: ssh-h-speed SSH,...
    
    Tell the upload and download speed over SSH (requires GNU dd).
    
    Environment variables: SSH_H_LIST

ssh-h-uname

    Usage: ssh-h-uname OPTS... SSH,...
    
    Get information from uname(1) and os-release(5).
    
      -m  Get machine platform.
      -s  Get kernel name.
      -d  Get distro name if os-release is available, otherwide kernel.
    
    Environment variables: SSH_H_LIST

## Collaborating

Feel free to open bug reports and feature/pull requests.

More software like this here:

1. [https://harkadev.com/prj/](https://harkadev.com/prj/)
2. [https://devreal.org](https://devreal.org)
