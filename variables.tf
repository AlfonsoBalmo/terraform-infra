variable "aws_region" {
  description = "AWS region for deployment"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0476ee53ea7bd56dc"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "m6i.2xlarge"
}
