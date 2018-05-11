sshguard:
  pkg.installed

/etc/sshguard/whitelist:
  file.managed:
    - source: salt://sshguard/whitelist
