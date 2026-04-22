#Create an IAM user called lab-user
aws iam create-user --user-name lab-user --profile adminuser

#Create access keys for the user created
aws iam create-access-key --user-name lab-user --profile adminuser