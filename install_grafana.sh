#!/bin/bash
##Install Grafana and Prometheus config

wget https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana_4.5.2_amd64.deb
sudo apt-get install -y adduser libfontconfig
sudo dpkg -i grafana_4.5.2_amd64.deb
sudo systemctl daemon-reload
sudo systemctl start grafana-server

sudo systemctl enable grafana-server.service

#https://localhost:3000
