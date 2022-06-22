  
  
for ip in 10.211.55.19 10.211.55.13
do 
  ssh-copy-id -i $HOME/.ssh/*.pub ${USER}@${ip}
done
