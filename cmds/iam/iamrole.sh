#Create the role with trust policy
aws iam create-role \
  --role-name eks-admin-role \
  --assume-role-policy-document file://trust-policy.json \
  --profile adminuser

