# Script to update / build atlaspi using ansible where possible.

REPO_DIR='/Volumes/T7/*Projects/Code/MyDevRepo/MyDevRepo'
ANSIBLE_INVENTORY=$REPO_DIR/Ansible/inventory/inventory.yml
ANSIBLE_PLAYBOOKS=$REPO_DIR/Ansible/playbooks
UNIX_SCRIPT_PATH=$REPO_DIR/Unix/Pi_Files
COMPOSE_PATH=$REPO_DIR/Docker

# Update the base image
ansible-playbook -i $ANSIBLE_INVENTORY -e "nodes=rpi_build" $ANSIBLE_PLAYBOOKS/update_rpi.yml

# Basic rpi build steps
ansible-playbook -i $ANSIBLE_INVENTORY -e "scripts='$UNIX_SCRIPT_PATH/General'" $ANSIBLE_PLAYBOOKS/base_rpi.yml

# Configure zsh shell
ansible-playbook -i $ANSIBLE_INVENTORY -e "scripts='$UNIX_SCRIPT_PATH/General'" $ANSIBLE_PLAYBOOKS/configure_zsh.yml

# That's the default stuff done - now on to the tricky, Docker & NAS config...

# Do the Atlas Stuff
ansible-playbook -i $ANSIBLE_INVENTORY -e "scripts='$UNIX_SCRIPT_PATH/Atlas' " $ANSIBLE_PLAYBOOKS/configure_nas.yml
ansible-playbook -i $ANSIBLE_INVENTORY $ANSIBLE_PLAYBOOKS/configure_docker.yml
ansible-playbook -i $ANSIBLE_INVENTORY $ANSIBLE_PLAYBOOKS/basic_containers.yml
ansible-playbook -i $ANSIBLE_INVENTORY -e "compose='$COMPOSE_PATH'" $ANSIBLE_PLAYBOOKS/configure_containers.yml
# ansible-playbook -i $ANSIBLE_INVENTORY $ANSIBLE_PLAYBOOKS/finish_atlas.yml