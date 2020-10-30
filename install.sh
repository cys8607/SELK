sudo apt-get install -y docker docker-compose python-pip

sudo add-apt-repository ppa:oisf/suricata-stable
sudo apt-get update
sudo apt-get install suricata

echo "vm.max_map_count = 655360" >> /etc/sysctl.conf
sysctl -p

pip install suricata-update

docker pull sebp/elk
docker pull jasonish/evebox:latest

docker run -it -m 4G -v /var/log/suricata:/mnt -p 5601:5601 -p 9200:9200 -p 5044:5044 sebp/elk


https://docs.microsoft.com/ko-kr/azure/network-watcher/network-watcher-intrusion-detection-open-source-tools
https://www.cnblogs.com/zafu/p/12141909.html
