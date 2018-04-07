### Create AWS Infrastructure including VPC, Subnet, Security Group

provider "aws" {
  region = "${var.AWS_REGION}"
}

resource "aws_instance" "ec2_name" {
  count = "${var.instance_count}"

  ami           = "${var.ec2_ami_id}"
  instance_type = "${var.ec2_instance_type}"
  key_name      = "${var.ec2_kayPair}"

  tags {
    Name = "ec2_${count.index}"
  }

  vpc_security_group_ids = [
    "${var.e2_security_group_id}",
  ]

  user_data = "${file("script.sh")}"
}
