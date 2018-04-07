output "aws_instance_ids" {
  description = "This is ID of the security group"
  value       = "${aws_instance.ec2_name.*.id}"
}

output "aws_first_instance_id" {
  description = "This is ID of the security group"
  value       = "${aws_instance.ec2_name.0.id}"
}
