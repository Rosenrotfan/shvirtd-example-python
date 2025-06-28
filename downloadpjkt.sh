#!/bin/bash

git clone git@github.com:Rosenrotfan/shvirtd-example-python.git -d /opt/shvirtd-example-python
cd /opt/shvirtd-example-python
docker compose up -d
