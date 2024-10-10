#!/bin/bash
response="$(aws eks list-clusters --region us-west-2 --output text | grep -i dominion-cluster 2>&1)" 
if [[ $? -eq 0 ]]; then
    echo "Success: Dominion-cluster exist"
    aws eks update-kubeconfig --name dominion-cluster --region us-west-2 && export KUBE_CONFIG_PATH=~/.kube/config

else
    echo "Error: Dominion-cluster does not exist"
fi