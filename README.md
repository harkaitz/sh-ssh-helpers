# SSH HELPERS

Helper little programs around *OpenSSH*.

## Help

ssh-h-authorized-keys

    Usage: ssh-h-authorized-keys -a (append) -f FILE SSH,...
    
    Replace authorized_keys in remote machines.
    
    View also: ssh-h-list(1)

ssh-h-check

    Usage: ssh-h-check -l | SSH,... CHECKS...
    
    Define checks writting "check__NAME" scripts and execute in
    remote machines.

ssh-h-config

    Usage: ssh-h-config OPTS... SSH,...
    
      -gC1 : Get configuration file pathname.
      -gC2 : Print configuration file.
      -dP  : Disable password login.
      -r   : Restart SSHD service.
    
    Configure the SSH servers in machines.

ssh-h-copy-keys

    Usage: ssh-h-copy-keys [-s ID_RSA -p ID_RSA.pub] SSH,...
    
    Set secret and public keys of other machines so that they
    can connect to other machines.

ssh-h-copy-tmp

    Usage: ssh-h-copy-tmp SSH[,...] FILES...
    
    Copy files to temporary directory or DDIR in remote windows
    machines.
    
    View also: ssh-h-list(1)

ssh-h-gitconfig

    Usage: ssh-h-gitconfig [-u FILE.sh] SSH,...
    
    This program installs the "FILE.sh" in the remote machine's
    home directory "~/.gitconfig.sh" (when -u given) and then it
    executes it to update "~/.gitconfig".

ssh-h-history

    Usage: ssh-h-history -V -d SSH,...
    
    Print last commands on each machine, or download and clean (-d).

ssh-h-list

    Usage: ssh-h-list l|HOST
    
    You can put a script in SSH_H_LIST ~/.ssh/groups /etc/ssh/groups that takes
    an argument and returns an SSH host list.

ssh-h-passwd

    Usage: ssh-h-passwd [-c FILE] SSH,...
    
    Print all users that can log to a system in the specified
    SSH machines. If the -c option is specified, change the
    password of the users and append to the specified file.

ssh-h-ping

    Usage: ssh-h-ping SSH,... : Login in remote machines.

ssh-h-power

    Usage: ssh-h-power SSH,... [off|restart]
    
    Power off (off) or restart (restart) remote machines running
    Linux/OpenBSD/Windows(Busybox/Cygwin/Msys).

ssh-h-run

    Usage: ssh-h-run SSH,... COMMAND
    
    Execute the same command in multiple machines.

ssh-h-send

    Usage: ssh-h-send SSH,...:DIRECTORY FILES...
    
    Send files to a remote directory using `tar(1)` and `ssh(1)`.

ssh-h-setenv

    Usage: ssh-h-setenv SSH,... KEY[=VALUE] ...
    
    Get/set environment variables.

ssh-h-speed

    Usage: ssh-h-speed SSH,...
    
    Tell the upload and download speed over SSH (requires GNU dd).

ssh-h-windows

    Usage: ssh-h-windows -OPS SSH-MACHINE
    
    Configure a MS Windows machine with a busybox shell.
    
      -u 32|64 : Upload busybox (step1).
      -p       : Enable public key auth (step2).
      -c       : Link to "sh.exe" and "vi.exe".

ssh-h-wireshark

    Usage: ssh-h-wireshark [-f FILTER] SSH INTF
    
    Examples:
    $ ssh-h-wireshark -f 'ip.src != 192.168.1.0/24' obsd1 bse0
    (tcp.port == 443)

## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
