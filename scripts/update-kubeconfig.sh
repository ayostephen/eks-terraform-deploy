# #!/bin/bash
# response="$(aws eks list-clusters --region us-west-2 --output text | grep -i dominion-cluster 2>&1)" 
# if [[ $? -eq 0 ]]; then
#     echo "Success: Dominion-cluster exist"
#     aws eks update-kubeconfig --name dominion-cluster --region us-west-2 && export KUBE_CONFIG_PATH=~/.kube/config

# else
#     echo "Error: Dominion-cluster does not exist"
# fi

#!/bin/bash

# Variables (replace with your values or environment variables)
CLUSTER_NAME="dominion-cluster"
REGION="region us-west-2"

# Update the kubeconfig file using the AWS CLI
aws eks update-kubeconfig --name "$CLUSTER_NAME" --region "$REGION"

# Verify kubeconfig update
if [ $? -eq 0 ]; then
  echo "Kubeconfig updated successfully."
else
  echo "Failed to update kubeconfig."
  exit 1
fi