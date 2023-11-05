# SSH HELPERS

Helper little programs around *OpenSSH*.

## Help

argdb

    Usage: argdb (-l | -i ID -p PARAM) ID:PARAM=VALUE:... ...

ssh-h-7z

    Usage: ssh-h-7z [-o ODIR][-D SKIP-DIR] SSH,... [FILES...]
    
    Create a zip with 7z (by default working directory) and extract
    into a remote machine in ODIR (by default pwd's basename).
    
    You can add directories to skip, such as .git with -D.
    
    View also: ssh-h-list(1)

ssh-h-authorized-keys

    Usage: ssh-h-authorized-keys -f FILE SSH,...
    
    Replace authorized_keys in remote machines.
    
    View also: ssh-h-list(1)

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

ssh-h-list

    Usage: ssh-h-list l|HOST
    
    You can put a script in ~/.ssh/groups /etc/ssh/groups that takes
    an argument and returns an SSH host list.

ssh-h-mount

    Usage: ssh-h-mount SSH[:REMOTE] [LOCAL]
    
    Mount remote SSH directory using sshfs(1).

ssh-h-ping

    Usage: ssh-h-ping SSH,... : Login in remote machines.

ssh-h-send

    Usage: ssh-h-send SSH,...:DIRECTORY FILES...
    
    Send files to a remote directory using `tar(1)` and `ssh(1)`.

ssh-h-service

    Usage: ssh-h-service [OPS...] MACHINE:s=SERVICE ...
    
    Manage services in remote machines.
    
      -D : Get init system.
      -T : Print tail of service logs. [-c tail]
    
      -v : View service status. [-c status]
      -e : Enable services.     [-c enable]
      -r : Restart services.    [-c restart]
      -s : Start service.       [-c start]
      -p : Stop service.        [-c stop]
    

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
