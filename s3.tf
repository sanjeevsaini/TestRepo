# s3.tf
resource "aws_s3_bucket" "bucket" {
  bucket = "${terraform.workspace}-my-bucket09" # Name the bucket based on the environment
  tags = {
    Name        = "${terraform.workspace}-bucket"
    Environment = terraform.workspace
  }

  # Optional: You can add additional configurations like lifecycle rules if required
}

