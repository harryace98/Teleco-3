sudo yum install -y vim
sudo yum install -y nginx

sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bp
sudo cp /vargrant/nginx.conf  /etc/nginx/nginx.conf
sudo cp /vagrant/proxy.conf /etc/nginx/conf.d/.


