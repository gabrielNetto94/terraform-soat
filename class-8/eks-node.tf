resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.fiap-eks-cluster.name
  node_group_name = "node-group-${var.project_name}"
  node_role_arn   = aws_iam_role.node_group.arn    // Us
#   e the same IAM Role for the node group as the cluster
  subnet_ids      = aws_subnet.public_subnet[*].id // Use the public subnets for the node group
  disk_size       = 20
  instance_types  = var.instance_type

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.node_group_AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.node_group_AmazonEC2ContainerRegistryReadOnly,
  ]
}