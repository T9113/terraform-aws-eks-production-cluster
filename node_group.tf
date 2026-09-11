resource "aws_eks_node_group" "general" {
  cluster_name    = aws_eks_cluster.main.name
  node_group_name = "general-workloads"
  node_role_arn   = aws_iam_role.node.arn
  subnet_ids      = var.subnet_ids
  instance_types  = ["m6i.large"]

  scaling_config {
    desired_size = 3
    max_size     = 10
    min_size     = 2
  }
}
