#!/bin/sh
sudo apt-get -y update && sudo apt-get -y upgrade &&
sudo apt-get install -y linux-image-extra-virtual &&
sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo apt-key fingerprint 0EBFCD88 &&
sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" &&
sudo apt-get -y update &&
sudo apt-get -y install docker-ce &&
sudo docker run hello-world &&
sudo usermod -a -G docker ubuntu &&
echo
"
Installation Complete, Exit and Start Terminal Again
Then use install command from https://github.com/betsbest/betscloud

Don't forget to add required variables in Install Command, otherwise Google Drive upload will not work.
"
