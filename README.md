# argocd-playground-01
argocd-playground-01

Argocd Username: admin
Password: kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
