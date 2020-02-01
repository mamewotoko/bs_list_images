#! /bin/sh
# install npm
if [ "$(uname)" = Darwin ]; then
    brew install node
elif [ -f /etc/lsb-release ]; then
    sudo apt-get update
    sudo apt-get install node
fi

