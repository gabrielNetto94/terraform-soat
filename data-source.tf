data "aws_iam_user" "terraform_user" {
  user_name = "terraform-user"
}


data "aws_eks_cluster" "cluster" {
  name = aws_eks_cluster.fiap-eks-cluster.name
}

data "aws_eks_cluster_auth" "auth" {
  name = aws_eks_cluster.fiap-eks-cluster.name
}
