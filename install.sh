#!/bin/bash
## Under Debian 9.8.0
cd ~
mkdir -p Prometheus
cd Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v1.7.2/prometheus-1.7.2.linux-amd64.tar.gz
tar xvfz prometheus-1.7.2.linux-amd64.tar.gz
mv prometheus-1.7.2.linux-amd64/ server
cd server/
nano configuration.yml
#./prometheus -config.file=configuration.yml


