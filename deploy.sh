#!/bin/bash

cd ..
tar -zcf dmci-index.tar.gz dmci-index/
scp dmci-index.tar.gz lyh202:/home/lyh/deployment/
ssh lyh202 "rm -rf /home/lyh/deployment/dmci-index/; tar -zxf /home/lyh/deployment/dmci-index.tar.gz -C /home/lyh/deployment/;"
rm -f dmci-index.tar.gz
cd dmci-index
