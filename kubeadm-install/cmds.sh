sudo mkdir /root/.ssh && sudo cp /home/wxw/.ssh/* /root/.ssh/

ansible -i hosts all -m ping

ansible-playbook -i hosts users.yaml

ansible-playbook -i hosts install-k8s.yaml

ansible-playbook -i hosts control_plane.yaml

ansible-playbook -i hosts join-workers.yaml


ansible-playbook -i hosts -K ../init-systems/00-01-generate-ssh-copy-id-script.yaml

sh ../init-systems/ssh-copy-ids.sh

ansible-playbook -i hosts ../init-systems/01-02-setup-root-ssh.yaml 