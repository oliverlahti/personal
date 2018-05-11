apache2withPHP:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-php

/etc/apache2/mods-available/php7.0.conf:
  file.managed:
    - source: salt://apache/php7.0.conf

/etc/apache2/mods-enabled/userdir.conf:
  file.symlink:
    - target: ../mods-available/userdir.conf

/etc/apache2/mods-enabled/userdir.load:
  file.symlink:
    - target:  ../mods-available/userdir.load

apache2service:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-available/php7.0.conf
      - file: /etc/apache2/mods-enabled/userdir.conf
      - file: /etc/apache2/mods-enabled/userdir.load
