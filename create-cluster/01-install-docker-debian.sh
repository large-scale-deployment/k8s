sudo apt-get update
sudo apt-get install     ca-certificates     curl     gnupg     lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
	$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
apt-cache madison docker-ce

# You need CRI support enabled to use containerd with Kubernetes. 
# Make sure that cri is not included in thedisabled_plugins list within /etc/containerd/config.toml; 
# if you made changes to that file, also restart containerd.
# https://kubernetes.io/docs/setup/production-environment/container-runtimes/#docker
sed -e '/disabled_plugins/ s/^#*/#/' -i /etc/containerd/config.toml