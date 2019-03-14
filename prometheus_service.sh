#!/bin/bash

## Prometheus as a service

sudo useradd -r -s /bin/false prometheus
mkdir -p data
setfacl -R -m u:prometheus:rwx data
setfacl -dR -m u:prometheus:rwx data
nano init_prometheus

## /bin/sh
##cd path_to_prometheus
##sudo -u prometheus ./prometheus --config.file=configuration.yml


sudo chmod 700 init_prometheus
sudo nano /etc/systemd/system/prometheus.service

##[Unit]
##Description=Prometheus Service
##After=network-online.target

##[Service]
##ExecStart=path_to_prometheus/init_prometheus
##Type=simple

##[Install]
##WantedBy=multi-user.target


sudo systemctl daemon-reload
sudo systemctl start prometheus

sudo systemctl enable prometheus
