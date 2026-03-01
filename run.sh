#!/bin/bash
set -e

echo "Starting factory bootstrap..."

apt update
apt install -y ansible

cd /opt/factory
ansible-playbook -i localhost, -c local playbook.yml

echo "Factory bootstrap finished."
