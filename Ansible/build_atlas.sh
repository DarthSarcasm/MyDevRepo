# Script to update / build atlaspi using ansible where possible.

ANSIBLE_INVENTORY='/Volumes/T7/*Projects/Code/MyDevRepo/MyDevRepo/Ansible/inventory/inventory.yml'
ANSIBLE_PLAYBOOKS='/Volumes/T7/*Projects/Code/MyDevRepo/MyDevRepo/Ansible/playbooks'
UNIX_SCRIPT_PATH='/Volumes/T7/*Projects/Code/MyDevRepo/MyDevRepo/Unix/Pi_Files'

# Update the base image
ansible-playbook -i $ANSIBLE_INVENTORY -e "nodes=rpi_build" $ANSIBLE_PLAYBOOKS/update_rpi.yml

# Basic rpi build steps
ansible-playbook -i $ANSIBLE_INVENTORY -e "scripts='$UNIX_SCRIPT_PATH/General'" $ANSIBLE_PLAYBOOKS/base_rpi.yml

# Configure zsh shell
ansible-playbook -i $ANSIBLE_INVENTORY -e "scripts='$UNIX_SCRIPT_PATH/General'" $ANSIBLE_PLAYBOOKS/configure_zsh.yml

# That's the default stuff done - now on to the tricky, Docker & NAS config...

# Do the Atlas Stuff
ansible-playbook -i $ANSIBLE_INVENTORY -e "scripts='$UNIX_SCRIPT_PATH/Atlas'" $ANSIBLE_PLAYBOOKS/configure_nas.yml
ansible-playbook -i $ANSIBLE_INVENTORY $ANSIBLE_PLAYBOOKS/configure_docker.yml
ansible-playbook -i $ANSIBLE_INVENTORY $ANSIBLE_PLAYBOOKS/configure_containers.yml
# ansible-playbook -i $ANSIBLE_INVENTORY $ANSIBLE_PLAYBOOKS/finish_atlas.yml