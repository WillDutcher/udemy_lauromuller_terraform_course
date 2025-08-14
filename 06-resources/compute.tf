# resource "aws_instance" "web" {
#   ami                         = "ami-0de716d6197524dd9"
#   associate_public_ip_address = true
#   instance_type               = "t3.micro"
#   subnet_id                   = aws_subnet.public.id
#   # vpc_security_group_ids = [aws_security_group.public_http_traffic.id]
#   root_block_device {
#     delete_on_termination = true
#     volume_size           = 10
#     volume_type           = "gp3"
#   }

#   tags = merge(local.common_tags, {
#     Name = "06-resources-ec2"
#   })
# }