# These are my test commands for ansible

# ad-hoc command using hosts.ini file
ansible -i hosts.ini atlas -m ping
# ad-hoc commands using the ansible.cfg settings
ansible multi -a "hostname" -u pi
ansible multi -a "date" -u pi
ansible atlas -a "free -h" -u pi
ansible atlas -a "df -h" -u pi
# ad-hoc docker check
ansible atlas -a "docker --version" -u pi