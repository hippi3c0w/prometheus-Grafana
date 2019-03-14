#!/bin/bash
## Install node exporter

cd ~/Prometheus
wget https://github.com/prometheus/node_exporter/releases/download/v0.14.0/node_exporter-0.14.0.linux-amd64.tar.gz
tar xvfz node_exporter-0.14.0.linux-amd64.tar.gz
cd node_exporter
#./node_exporter

##node exporter as a service

sudo useradd -r -s /bin/false node_exporter
nano init_node_exporter

##/bin/sh
##cd path_to_node_exporter
##sudo -u node_exporter ./node_exporter

sudo chmod 700 init_node_exporter
sudo nano /etc/systemd/system/node_exporter.service

##[Unit]
##Description=Node Exporter

##[Service]
##ExecStart=path_to_node_exporter/init_node_exporter

##[Install]
##WantedBy=multi-user.target

sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable node_exporter

##Config prometheus to obtain data od node exporter

cd ~/Prometheus/server
nano configuration.yml


#  - job_name: 'local_node_exporter'
#    static_configs:
#     - targets: ['localhost:9100'] 
      
