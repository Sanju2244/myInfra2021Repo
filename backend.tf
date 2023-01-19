# terraform {
#   backend "s3" {
#     bucket = "my-aws-tf-bucket"
#     # access_key = "AKIATMWJY32R3RZURDUZ"
#     # secret_key = "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"
#     region = "us-east-1"
#     dynamodb_table = "my-dynamo-db-table"
#   }
# }

terraform {
  backend "s3" {
    bucket         = "my-aws-tf--bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-dynamo-db-table"
  }
}