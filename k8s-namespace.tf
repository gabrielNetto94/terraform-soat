resource "kubectl_manifest" "namespace" {
  depends_on = [aws_eks_cluster.fiap-eks-cluster]
  yaml_body  = <<YAML
apiVersion: v1
kind: Namespace
metadata:
  name: nginx
YAML
}