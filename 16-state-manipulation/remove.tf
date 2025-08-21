/*
1. Remove via CLI
2. Remove via removed block
*/

# resource "aws_s3_bucket" "my_bucket" {
#     bucket = "random-name-345kj4nt34k5j"
# }

# removed {
#     from = aws_s3_bucket.my_new_bucket

#     lifecycle {
#         destroy = true
#     }
# }
