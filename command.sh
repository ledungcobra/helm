helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install wordpress bitnami/wordpress --version 18.0.10 --namespace wordpress --create-namespace


kubectl port-forward svc/wordpress 8080:80 --namespace wordpress


helm uninstall wordpress --namespace wordpress
kubectl delete namespace wordpress
