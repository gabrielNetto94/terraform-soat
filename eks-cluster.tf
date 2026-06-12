resource "aws_eks_cluster" "fiap-eks-cluster" {
  name = "eks-${var.project_name}"

  access_config {
    authentication_mode = "API"
  }

  role_arn = aws_iam_role.cluster.arn
  version  = "1.35"

  vpc_config {
    subnet_ids = [
      aws_subnet.public_subnet[0].id,
      aws_subnet.public_subnet[1].id,
      # aws_subnet.public_subnet[2].id,
    ]
     security_group_ids = [aws_security_group.sg.id]
  }

  # Ensure that IAM Role permissions are created before and deleted
  # after EKS Cluster handling. Otherwise, EKS will not be able to
  # properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy,
  ]
}
