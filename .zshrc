alias dev="cd ~/Development"
alias projects="cd ~/Development/IdeaProjects"
alias cust_ui_stifel="kubectl --kubeconfig=/usr/local/bin/dev5/kubeconfig --namespace=stifel port-forward svc/customers 9003:80"
alias delete_pod_stifel="kubectl --kubeconfig=/usr/local/bin/qa5/kubeconfig --namespace=stifel delete pod"
alias micros_stifel_dev="kubectl --kubeconfig=/usr/local/bin/dev6/kubeconfig get services --namespace=stifel"
alias micros_stifel_qa="kubectl --kubeconfig=/usr/local/bin/qa6/kubeconfig get services --namespace=stifel"
alias zshrc="cat ~/.zshrc"

kproxy() {
        kubectl proxy kubectl --kubeconfig=/usr/local/bin/$1/kubeconfig proxy --port=$2
}
kfwd(){
        kubectl --kubeconfig=/usr/local/bin/$1/kubeconfig --namespace=$2 port-forward $3 $4:80
}
kls() {
        kubectl --kubeconfig=/usr/local/bin/$1/kubeconfig --namespace=$2 get $3 
}
kdel() {
        kubectl --kubeconfig=/usr/local/bin/$1/kubeconfig --namespace=$2 delete pod $3 
}
ktail() {
        kubectl --kubeconfig=/usr/local/bin/$1/kubeconfig --namespace=$2 logs $3
}
kpod() {
        kubectl --kubeconfig=/usr/local/bin/$1/kubeconfig --namespace=$2 describe pods $3
}
ksvc() {
        kubectl --kubeconfig=/usr/local/bin/$1/kubeconfig --namespace=$2 describe services $3
}
kedit() {
        kubectl --kubeconfig=/usr/local/bin/$1/kubeconfig --namespace=$2 edit $3
}
