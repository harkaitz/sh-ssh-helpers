# SSH HELPERS

Helper little programs around *OpenSSH*.

## Help

ssh-h-authorized-keys

    Usage: ssh-h-authorized-keys -f FILE SSH,...
    
    Replace authorized_keys in remote machines.
    
    View also: ssh-h-list(1)

ssh-h-config

    Usage: ssh-h-config OPTS... SSH,...
    
      -gC1 : Get configuration file pathname.
      -gC2 : Print configuration file.
      -dP  : Disable password login.
      -r   : Restart SSHD service.
    
    Configure the SSH servers in machines.

ssh-h-copy-tmp

    Usage: ssh-h-copy-tmp SSH[,...] FILES...
    
    Copy files to temporary directory or DDIR in remote windows
    machines.
    
    View also: ssh-h-list(1)

ssh-h-docker

    Usage: ssh-h-docker OPTS... localhost|SSH...
    
      -P           : Use podman.
      -d TAR=IMAGE : Create image tar and download.
      -u TAR       : Upload image tar.
      -p URL       : Pull image.
    
    Examples:
    > ssh-h-docker -d a.tar=busybox -u a.tar m1 m2

ssh-h-history

    Usage: ssh-h-history -V -d SSH,...
    
    Print last commands on each machine, or download and clean (-d).

ssh-h-list

    Usage: ssh-h-list l|HOST
    
    You can put a script in ~/.ssh/groups /etc/ssh/groups that takes
    an argument and returns an SSH host list.

ssh-h-mount

    Usage: ssh-h-mount SSH[:REMOTE] [LOCAL]
    
    Mount remote SSH directory using sshfs(1).

ssh-h-netstat

    Usage: ssh-h-netstat -V SSH,...
    
    List listening ports in machines applying some filters.
    
    - /etc/ssh-h-netstat/services.sed
    - /etc/ssh-h-netstat/services.$(uname -s).sed
    
    Environment variables: SSH_H_NETSTAT_DIRECTORY

ssh-h-passwd

    Usage: ssh-h-passwd [-c FILE] SSH,...
    
    Print all users that can log to a system in the specified
    SSH machines. If the -c option is specified, change the
    password of the users and append to the specified file.

ssh-h-ping

    Usage: ssh-h-ping SSH,... : Login in remote machines.

ssh-h-send

    Usage: ssh-h-send SSH,...:DIRECTORY FILES...
    
    Send files to a remote directory using `tar(1)` and `ssh(1)`.

ssh-h-services

    Usage: ssh-h-services [-V] [SERVICE] [OPERATION]

ssh-h-services-hgencrt

    Usage: ssh-h-services-hgencrt DOMAINS...
    
    Get the machine with "https" service with "ssh-h-services", then
    shut it down and update the specified domain certificates with
    hgencrt.

ssh-h-setenv

    Usage: ssh-h-setenv SSH,... KEY[=VALUE] ...
    
    Get/set environment variables.

ssh-h-speed

    Usage: ssh-h-speed SSH,...
    
    Tell the upload and download speed over SSH (requires GNU dd).

ssh-h-sudoinit

    Usage: ssh-h-sudoinit root@MACHINE [-i][-u USER[=PASSWD]]
    
    -i : If machine is root@MACHINE:
         - Sets the shell to '/bin/sh', usefull in FreeBSD.
         - Copies your public SSH certificate.
         If machine is FreeBSD:
         - Installs sudo.
         Makes sudo to not require password.
    -u : Add user if does not exist, set password and add to `wheel` group.
         - Copies authorized ssh keys.

## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
