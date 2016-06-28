sudo yum -y install yum
sudo yum -y install ansible
sudo yum -y install redhat-rpm-config
sudo yum -y install python-virtualenv
ansible-playbook -e "$@" -i "localhost," -c local \
    base.yml \
    web.yml \
    numerical.yml \
    computational.yml \
    spatial.yml
