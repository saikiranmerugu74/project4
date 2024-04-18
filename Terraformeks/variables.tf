variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
  default     = "EKSCluster"  # Replace with your desired default cluster name
}

variable "key_name" {
  description = "Key name of the SSH key pair for EC2 instances."
  type        = string
  default     = "ubuntu-key"  # Replace with your desired default key name
}

variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-east-1"
}

variable "worker_ami_id" {
  description = "AMI ID for the worker nodes."
  type        = string
  default = "ami-0fb99f22ad0184043"
}


variable "worker_instance_type" {
  description = "Instance type for the EKS worker nodes."
  type        = string
  default     = "m5.large"
}

variable "min_size" {
  description = "Minimum number of worker nodes."
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes."
  type        = number
  default     = 3
}

variable "desired_capacity" {
  description = "Desired number of worker nodes."
  type        = number
  default     = 2
}
