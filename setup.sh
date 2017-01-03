#!/bin/sh
apt-get update
apt-get install -y ffmpeg mediainfo python python-pip git
apt-get clean
rm -rf /var/lib/apt/lists/*
