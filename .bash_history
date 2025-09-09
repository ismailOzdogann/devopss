chmod 600 ~/.ssh/id_ed25519
exit
ssh dev@localhost -p 2222 -i ~/.ssh/id_ed25519
exit
exit
sudo systemctl status ssh
ss -tlnp | grep :22
nesth interface portproxy show all
netsh interface portproxy add v4tov4 listenport=2222 listenaddress=0.0.0.0 connectport=22 connectaddress=172.31.172.136
exit
exit
exit
ssh dev@localhost -p 2222 -i C:\Users\i7ozd\.ssh\id_ed25519
ssh dev@localhost -p 2222 -i ~/.ssh/id_ed25519
sudo service ssh status
netsh interface portproxy show all
exit
