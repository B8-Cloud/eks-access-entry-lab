#Verify the cluster we created 
#Expected output - "ACTIVE"

aws eks describe-cluster \
  --name security-lab-eks \
  --region ap-southeast-1 \
  --query "cluster.status" \
  --profile adminuser


#Check cluster auth-mode
#Expected output - "API_AND_CONFIG_MAP"
aws eks describe-cluster \
  --name security-lab-eks \
  --region ap-southeast-1 \
  --query "cluster.accessConfig.authenticationMode" \
  --profile adminuser

#If not "API_AND_CONFIG_MAP", update the config with
aws eks update-cluster-config \
  --name security-lab-eks \
  --region ap-southeast-1 \
  --access-config authenticationMode=API_AND_CONFIG_MAP