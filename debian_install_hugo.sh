#!/bin/bash

curl -Lo /tmp/hugo.deb 'https://github.com/gohugoio/hugo/releases/download/v0.148.2/hugo_extended_0.125.1_linux-amd64.deb'
sudo apt-get install -y /tmp/hugo.deb
