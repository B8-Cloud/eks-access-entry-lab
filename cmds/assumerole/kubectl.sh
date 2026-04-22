#Verifications using the assumed role

#check current cluster
kubectl config current-context    

#check nodes
kubectl get nodes

#Check what the assumed can do
kubectl auth can-i "*" "*"

#Test more
kubectl get pods -A
kubectl get ns