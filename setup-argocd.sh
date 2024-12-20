# helm repo add argo https://argoproj.github.io/argo-helm
# helm repo update
# helm install argocd argo/argo-cd -n argocd

# Installing argo on aks
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Patch Service when using azure cluster
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

# argocd username: `admin`
# argocd password: kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

# kubectl patch svc guestbook-ui -n default -p '{"spec": {"type": "LoadBalancer"}}'