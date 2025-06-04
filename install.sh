
# Install anything which is needed
apt update
apt install -y unzip
apt install -y docker-compose
apt install -y python3-venv

# Install TrustGraph CLI
rm -rf /usr/local/trustgraph
python3 -m venv /usr/local/trustgraph
. /usr/local/trustgraph/bin/activate
pip install trustgraph-cli==1.0.13

# Put TrustGraph stuff in place
rm -rf /usr/local/tg-deploy
mkdir /usr/local/tg-deploy
cd /usr/local/tg-deploy
unzip /tmp/deploy.zip
sed -i "s/TOKEN_PLACEHOLDER/$(cat /tmp/hf.token)/" docker-compose.yaml
chmod 755 prometheus/ grafana/ grafana/*/
chmod 644 prometheus/* grafana/*/*

# Put workbench on a different port
sed -i 's/8888/8890/' docker-compose.yaml

docker-compose pull
docker-compose up -d

# Tidy self
rm -f /tmp/install.sh
rm -f /tmp/output.zip

