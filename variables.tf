variable "cluster_name" { default = "prod-eks-cluster" }
variable "k8s_version" { default = "1.30" }
variable "subnet_ids" { type = list(string); default = ["subnet-01", "subnet-02"] }
