ssh-keygen -t rsa
ssh $1 mkdir -p .ssh
cat .ssh/id_rsa.pub | ssh $1 'cat >> .ssh/authorized_keys'
ssh $1 "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"
#ssh $1
echo "alias ${2}='ssh ${1}'" >>  ~/.bashrc
source ~/.bashrc
