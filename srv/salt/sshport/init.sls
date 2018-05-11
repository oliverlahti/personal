openssh-server:
  pkg.installed

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://sshport/sshd_config
    - template: jinja
    - context:
      port: 2222

sshd:
  service.running:
    - watch:
      - file: /etc/ssh/sshd_config
