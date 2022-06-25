  
  
for ip in 192.168.1.166 192.168.1.232
do 
  ssh-copy-id -i $HOME/.ssh/*.pub ${USER}@${ip}
done
