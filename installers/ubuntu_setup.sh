#!/usr/bin/env bash
#
# Creep3r Setup Script
#
# sudo ./setup.sh
# Run with sudo or with root privs
# Installs all Creep3r dependencies for OS & Ruby
#
# This is the Ubuntu installer...
#
#
#

echo "Running Ubuntu Installer....." | grep --color 'Running Ubuntu Installer'
echo "Installing OS packages...." | grep --color 'Installing OS packages'
apt-get -y install curl libcurl4 libcurl4-openssl-dev mysql-client libmysqlclient-dev bundler ruby-dev nmap freetds-common freetds-bin freetds-dev libpq-dev

echo "Installing MongoDB...." | grep --color 'Installing MongoDB'

sudo apt-get update

sudo apt-get install -y mongodb

# Update and pull in new repos
apt-get -y update

# Install MongoDB from new repo
apt-get -y install mongodb

echo "Installing Ruby gems now...." | grep --color 'Installing Ruby gems now'
cd .. && bundle install

echo
echo "Installation Completed!" | grep --color 'Installation Completed'
