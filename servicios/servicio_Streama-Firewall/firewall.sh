service NetworkManager stop
chkconfig NetworkManager off
cp /vagrant/firewall/sysctl.conf /etc/sysctl.conf 
service firewalld restart
firewall-cmd --zone=dmz --add-interface=eth2 --permanent
firewall-cmd --zone=internal --add-interface=eth1 --permanent
firewall-cmd --zone=dmz --add-service=http --permanent
firewall-cmd --zone=dmz --add-service=https --permanent
firewall-cmd --zone=dmz --add-forward-port=port=443:proto=tcp:toport=443:toaddr=192.168.10.20 --permanent
firewall-cmd --zone=dmz --add-forward-port=port=8080:proto=tcp:toport=8080:toaddr=192.168.10.20 --permanent
firewall-cmd --zone=dmz --add-masquerade --permanent
firewall-cmd --zone=internal --add-masquerade --permanent
firewall-cmd --reload
service firewalld restart

