alias dev="cd ~/Development"
alias projects="cd ~/Development/IdeaProjects"
alias zshrc="cat ~/.zshrc"
alias my_aliases="cat ~/.zshrc | grep '^alias' --color=never"

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
