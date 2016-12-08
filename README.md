# Scientific Computing Environments via Ansible

Here are [Ansible](http://www.ansible.com) playbooks for preparing a scientific computing environment.

    git clone https://github.com/invisibleroads/crosscompute-environments-ansible
    cd crosscompute-environments-ansible
    bash setup.sh

These scripts have been tested to work with the following configurations:

- Fedora 25 on DigitalOcean
- Ubuntu 16.04 on DigitalOcean

Thanks to [Salah Ahmed](https://github.com/salah93) for prototyping the updated scripts.

## Specify different virtual environment

    bash setup.sh --extra-vars "virtualenv=~/.virtualenvs/crosscompute"

## Specify different host

    vim /tmp/hosts
        [workers]
        100.200.300.400 ansible_user=root
    OS_FAMILY=debian bash setup.sh -i /tmp/hosts
