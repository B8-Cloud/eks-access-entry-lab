#Configure an AWS CLI profile for the IAM user
aws configure --profile lab-user

#Test permission
aws sts get-caller-identity --profile lab-user

#Edit ~/.aws/config
[profile lab-user]
region = ap-southeast-1
output = json

[profile eks-admin-assumed]
role_arn = arn:aws:iam::<ACCOUNT_ID>:role/eks-admin-role
source_profile = lab-user
region = ap-southeast-1
output = json

#Test assumed role
aws sts get-caller-identity --profile eks-admin-assumed

#Generate kubeconfig using the assumed role
aws eks update-kubeconfig \
  --name security-lab-eks \
  --region ap-southeast-1 \
  --profile eks-admin-assumed \
  --alias security-lab-eks

#verify current-context
#Expected output - security-lab-eks
kubectl config current-context 