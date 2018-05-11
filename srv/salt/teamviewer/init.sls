teamviewer:
  cmd.run:
    - name: wget -P /tmp "https://download.teamviewer.com/download/version_12x/teamviewer_i386.deb" && sudo apt install -y /tmp/teamviewer_i386.deb && sudo rm /tmp/teamviewer_i386.deb