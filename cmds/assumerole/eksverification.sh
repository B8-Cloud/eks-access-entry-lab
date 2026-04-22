#Verify the access entry
aws eks list-access-entries \
  --cluster-name security-lab-eks \
  --region ap-southeast-1 \
  --profile adminuser

#To describe specific acccess entry
aws eks describe-access-entry \
  --cluster-name security-lab-eks \
  --principal-arn arn:aws:iam::<ACCOUNT_ID>:role/eks-admin-role \
  --region ap-southeast-1 \
  --profile adminuser