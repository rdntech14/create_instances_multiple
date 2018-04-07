variable "AWS_REGION" {
  default     = "us-east-1"
  description = "This is AWS region name"
}

variable "ec2_ami_id" {
  default = "ami-1853ac65"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "e2_security_group_id" {
  default = "sg-b3422ac6"
}

variable "ec2_kayPair" {
  default     = "ec2_keyPair"
  description = "This is key pair in case need to login(ssh) to ec2 instance"
}

variable "instance_count" {
  default     = "2"
  description = "This is count/numbers of instances to be created"
}
