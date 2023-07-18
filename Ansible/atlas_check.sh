# ad-hoc commands using the ansible.cfg settings
# -m calls the ansible module
# -a runs a command on the remote server
ansible atlas -m ping
ansible atlas -a "hostname" -u pi
ansible atlas -a "date" -u pi
ansible atlas -a "free -h" -u pi
ansible atlas -a "df -h" -u pi
# ad-hoc docker check
ansible atlas -a "docker --version" -u pi