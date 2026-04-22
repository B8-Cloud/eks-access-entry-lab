eksctl delete cluster --name security-lab-eks --region ap-southeast-1 --profile adminuser
aws iam detach-user-policy --user-name lab-user --policy-arn arn:aws:iam::<ACCOUNT_ID>:policy/LabEKSDescribeCluster --profile adminuser
aws iam detach-role-policy --role-name eks-admin-role --policy-arn arn:aws:iam::<ACCOUNT_ID>:policy/LabEKSDescribeCluster --profile adminuser
aws iam delete-policy --policy-arn arn:aws:iam::<ACCOUNT_ID>:policy/LabEKSDescribeCluster --profile adminuser
aws iam delete-role --role-name eks-admin-role --profile adminuser
aws iam delete-user --user-name lab-user --profile adminuser