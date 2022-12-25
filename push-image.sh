#!/bin/bash

# fail on any error
set -eu

# login to docker hub account
cat ~/my_password.txt | sudo docker login --username alexdevops007 --password-stdin

# use the docker tag command to give the image a new name
sudo docker tag terra-docker alexdevops007/terra-docker

# push the image to your docker hub repository
sudo docker push alexdevops007/terra-docker