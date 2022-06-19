# https://stackoverflow.com/questions/49112336/container-runtime-network-not-ready-cni-config-uninitialized
# Control panel
kubeadm reset
# Nodes
systemctl stop kubelet.service 
rm -rf /etc/kubernetes