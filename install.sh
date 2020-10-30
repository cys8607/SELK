sudo apt-get install -y docker docker-compose python-pip

sudo add-apt-repository ppa:oisf/suricata-stable
sudo apt-get update
sudo apt-get install suricata

echo "vm.max_map_count = 655360" >> /etc/sysctl.conf
sysctl -p

pip install suricata-update

docker pull sebp/elk
docker pull jasonish/evebox:latest

