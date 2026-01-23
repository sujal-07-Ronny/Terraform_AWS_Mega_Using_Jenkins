variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  # Amazon Linux 2 – us-east-1
  default = "ami-0c02fb55956c7d316"
}

variable "key_name" {
  description = "EC2 key pair name"
  default     = "my-ec2-key"
}
