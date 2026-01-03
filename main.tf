terraform {
  required_version = ">= 1.0"

backend "s3" {
  bucket         = "chethan-tf-state-12345"
  key            = "terraform-test/terraform.tfstate"
  region         = "ap-south-1"
  dynamodb_table = "terraform-locks-test"
}
}


terraform {
  required_version = ">= 1.0"
}

resource "local_file" "hello" {
  filename = "hello.txt"
  content  = "THIS IS VERSION 3 🚀"
}

