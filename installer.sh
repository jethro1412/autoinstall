#!/bin/bash

echo "Must run this script as root!"
echo "Updating repositories "
apt update
echo "Installing basic dependencies"
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
echo "running all available scripts"

for script in $(find scripts/ -name '*.sh'); do
	sh $script;
done


