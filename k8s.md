
sudo systemctl enable docker.service
sudo systemctl enable kubelet && sudo systemctl start kubelet
sudo swapoff -a
sudo kubeadm init