# SSH HELPERS

Helper little programs around *OpenSSH*.

## Help

ssh-h-authorized-keys

    Usage: ssh-h-authorized-keys [-a] -f FILE SSH,...
    
    This program replaces "~/.ssh/authorized_keys" in remote machines
    specified by "SSH,..." with "FILE". If "-a" is specified the keys
    in FILE are appended, keeping those already installed.
    
    Environment variables: SSH_H_LIST

ssh-h-cert-check

    Usage: ssh-h-cert-check { -V | SSH,... }
    
    This program makes the server connect by https to a list of
    hosts in $SSH_H_CERT_SITES.
    
    Required tools: curl/wget
    Environment variables: SSH, SSH_H_LIST, SSH_H_CERT_SITES

ssh-h-cert-install

    Usage: ssh-h-cert-install CERTIFICATE SSH,...
    
    Install certificates in remote or local machines so that browsers
    and curl(1)/wget(1) use it.
    
    Supported: Linux (update-ca-certificates), Windows (certutil)
    Environment variables: SSH, SSH_H_LIST

ssh-h-dump

    Usage: ssh-h-dump [NAME...]
    
    Create backups of disks and directories in remote machines using
    dump(8) and tar(1). List file:
    
      NAME  SSH_MACHINE  tar|dump  SOURCE_DIR  BACKUP_DIR  [SUDO_COMMAND]
    
    Environment variables: SSH_H_DUMP_LST

ssh-h-history

    Usage: ssh-h-history {-V , [-d] SSH,... }
    
    Print the last commands executed on the specified machines.
    
    With "-d" the history is appended to "~/.ssh-h-history/SSH" and
    then removed in the remote.
    
    Environment variables: SSH_H_LIST, SSH_H_HISTORY_DIRECTORY

ssh-h-nslookup

    Usage: ssh-h-nslookup SSH1,... [DOMAIN (default google.com)]
    
    Print the DNS server user to resolve DOMAIN in remote machines.

ssh-h-passwd

    Usage: ssh-h-passwd [-c FILE] SSH,...
    
    This program prints all users that can log to in the specified SSH
    machines.
    
    When -c given all the passwords are replaced with a random one, and
    it is saved in FILE for consultation.
    
    Supported platforms: GNU/Linux MS/Windows
    Environment variables: SSH_H_LIST

ssh-h-ping

    Usage: ssh-h-ping SSH,...
    
    Login in remote machines and print `uname -s`.
    
    Environment variables: SSH, SSH_H_LIST

ssh-h-power

    Usage: ssh-h-power SSH,... [off|restart]
    
    Print the uptime, power off or restart remote machines.
    
    Supported remotes: Linux/OpenBSD/Windows(Busybox/Cygwin/Msys).
    Environment variables: SSH_H_LIST

ssh-h-run

    Usage: ssh-h-run SSH,... COMMAND
    
    Execute the same command in multiple machines.
    
    Environment variables: SSH_H_LIST

ssh-h-send

    Usage: ssh-h-send SSH,...:DESTDIR FILES...
    
    Send files to a remote directory using `tar(1)` and `ssh(1)`.
    
    Environment variables: SSH_H_LIST

ssh-h-setenv

    Usage: ssh-h-setenv SSH,... KEY[=VALUE] ...
    
    Get/set environment variables with "setx" (windows) and /etc/environment
    (in UNIX when available) or "/etc/profile.d/env_VAR.sh".
    
    Environment variables: SSH_H_LIST

ssh-h-speed

    Usage: ssh-h-speed SSH,...
    
    Tell the upload and download speed over SSH (requires GNU dd).
    
    Environment variables: SSH, SSH_H_LIST

ssh-h-timesync

    Usage: ssh-h-timesync SSH,...
    
    Synchronize time in remote machines.

ssh-h-uname

    Usage: ssh-h-uname OPTS... SSH,...
    
    Get information from uname(1) and os-release(5).
    
      -m  Get machine platform.
      -s  Get kernel name.
      -d  Get distro name if os-release is available, otherwide kernel.
    
    Environment variables: SSH_H_LIST

ssh-h-wireshark

    Usage: ssh-h-wireshark [-f FILTER][-S sudo] USER@HOST INTF
    
    Connect to a remote Linux/OpenBSD machine "USER@HOST" and execute the
    "tcpdump" command in "INTF" interface.
    
    The SSH packets are discarded. Of course the user USER needs capturing
    permissions.
    
    You can specify filtering options (-f) to wireshark with "-f".
    
    Example: $ ssh-h-wireshark -f 'ip.src != 192.168.1.0/24' root@m1 bse0

## Collaborating

Feel free to open bug reports and feature/pull requests.

More software like this here:

1. [https://harkadev.com/prj/](https://harkadev.com/prj/)
2. [https://devreal.org](https://devreal.org)

