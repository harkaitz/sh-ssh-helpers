# SSH HELPERS

Helper little programs around *OpenSSH*.

## Help

ssh-h-7z

    Usage: ssh-h-7z [-o ODIR][-D SKIP-DIR] MACHINE [FILES...]
    
    Create zip with 7z and extract into a remote machine.

ssh-h-mount

    Usage: ssh-h-mount SSH[:REMOTE] [LOCAL]
    
    Mount remote SSH directory using sshfs(1).

ssh-h-ping

    Usage: ssh-h-ping HOSTNAMES... : Login in remote machines.

ssh-h-send

    Usage: ssh-h-send REMOTE:DIRECTORY FILES...
    
    Send files to a remote directory using `tar(1)` and `ssh(1)`.

ssh-h-speed

    Usage: ssh-h-speed [USER@]HOST
    
    Tell the upload and download speed over SSH (requires GNU dd).

## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
