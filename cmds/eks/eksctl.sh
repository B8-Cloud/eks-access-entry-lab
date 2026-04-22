#Cluster creation with eksctl

eksctl create cluster \
  --name security-lab-eks \
  --region ap-southeast-1 \
  --version 1.31 \
  --nodegroup-name workers \
  --node-type t3.medium \
  --nodes 2 \
  --nodes-min 2 \
  --nodes-max 2 \
  --managed \
  --profile adminuser