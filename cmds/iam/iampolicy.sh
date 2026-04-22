#Create iam policy with eks-describe-policy.json file

aws iam create-policy \
  --policy-name LabEKSDescribeCluster \
  --policy-document file://eks-describe-policy.json \
  --profile adminuser


#Attach the created policy to the lab-user
aws iam attach-user-policy \
  --user-name lab-user \
  --policy-arn arn:aws:iam::<ACCOUNT_ID>:policy/LabEKSDescribeCluster \
  --profile adminuser

#Attach the policy created to the role
aws iam attach-role-policy \
  --role-name eks-admin-role \
  --policy-arn arn:aws:iam::<ACCOUNT_ID>:policy/LabEKSDescribeCluster \
  --profile adminuser