sudo apt-get update
sudo apt-get upgrade
sudo apt-get install nano
sudo apt-get install curl
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt-add-repository https://packages.microsoft.com/ubuntu/20.04/prod
sudo apt update
sudo apt-get install msopenjdk-11
iptables -A INPUT -s 127.0.0.1 -j ACCEPT
iptables -A INPUT -s yourip -j ACCEPT
iptables -A INPUT -p tcp --dport 25565 -j ACCEPT
iptables -A INPUT -p tcp --dport 21 -j ACCEPT
iptables -A INPUT -p tcp --dport 27017 -j DROP
iptables -A INPUT -p tcp --dport 6379 -j DROP
iptables -A INPUT -p tcp -j DROP
iptables-save
sudo apt-get install redis-server
sudo apt-get install mongodb-server
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get install jenkins
read -t 15 -N 1 -p "Do you want to setup jenkins? (y/N)? " answer
echo 
if [ "${answer,,}" == "y" ]
then
    sudo systemctl start jenkins
    echo Open http://ci.mythicalmc.org/ and use this key,
    sudo cat /var/lib/jenkins/secrets/initialAdminPassword
fi
