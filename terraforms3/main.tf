resource "aws_s3_bucket" "eks-pyapp" {
  bucket = "eks-pyappbackend"
}

resource "aws_s3_bucket_versioning" "versioning_eks-pyapp" {
  bucket = aws_s3_bucket.eks-pyapp.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "state_lock" {
  name         = "my-terraform-state-bucket"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "DynamoDB Terraform State Lock Table"
  }

}
