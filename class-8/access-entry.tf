resource "aws_eks_access_entry" "access_entry" {
  cluster_name      = aws_eks_cluster.fiap-eks-cluster.name
  principal_arn     = data.aws_iam_user.terraform_user.arn // Use the ARN of the IAM User as the principal ARN for the access entry
  kubernetes_groups = ["group-1", "group-2"]
  type              = "STANDARD"
}

//
resource "aws_eks_access_policy_association" "access_policy_association" {
  cluster_name  = aws_eks_cluster.fiap-eks-cluster.name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
  principal_arn = data.aws_iam_user.terraform_user.arn

  access_scope {
    type = "cluster"
    # namespaces = ["example-namespace"]
  }
}