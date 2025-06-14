# Script to update / build atlaspi using ansible where possible.

REPO_DIR='/Users/antonyharris/Code/MyDevRepo'
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

# That's the default stuff done - now on to the specific bits...

# Install and configure Docker
ansible-playbook -i $ANSIBLE_INVENTORY -e "nodes=rpi_build" $ANSIBLE_PLAYBOOKS/configure_docker.yml
# Deploy basic admin containers
ansible-playbook -i $ANSIBLE_INVENTORY -e "nodes=rpi_build" $ANSIBLE_PLAYBOOKS/basic_containers.yml
