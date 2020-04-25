#!/bin/bash

if [ -f ~/.kube/config ]; then
    if [ -s ~/.kube/config ]; then
        CDATE=`date +%Y-%m-%d-%H-%M`
        cp ~/.kube/config ~/.kube/config-$CDATE
    fi
fi

terraform output kubeconfig > ~/.kube/config

terraform output config-map-aws-auth > config-map.yml

kubectl apply -f config-map.yml
