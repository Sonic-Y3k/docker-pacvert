#!/bin/sh

if [ ! -d /config/pacvert ]; then
  mkdir -p /config
  cd /config
  git clone https://github.com/Sonic-Y3k/pacvert.git
  chown -R nobody:users /config
  chmod -R g+rw /config
fi

cd /config/pacvert
git pull
python /config/pacvert/pacvert.py
