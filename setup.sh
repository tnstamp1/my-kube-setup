# create ssh key
ssh-keygen -t rsa  -C "forgeops-robot@forgeops.com" -f /home/terence/id_rsa -N ''
# Create Kube secret
kubectl -n dev create secret generic git-ssh-key --from-file=/home/terence/id_rsa
