#Create the EKS access entry for the role
aws eks create-access-entry \
  --cluster-name security-lab-eks \
  --principal-arn arn:aws:iam::<ACCOUNT_ID>:role/eks-admin-role \
  --region ap-southeast-1 \
  --profile adminuser

#Give the role cluster admin access
aws eks associate-access-policy \
  --cluster-name security-lab-eks \
  --principal-arn arn:aws:iam::<ACCOUNT_ID>:role/eks-admin-role \
  --policy-arn arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy \
  --access-scope type=cluster \
  --region ap-southeast-1 \
  --profile adminuser