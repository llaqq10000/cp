cd /root/python-ansible
docker build -t python-ansible:v1 .
docker run --name python-ansible -v /root/hosts:/etc/ansible/hosts -it python-ansible sh -c 'ansible aaa -m systemd -a "name=promtail enabled=yes state=started"'
