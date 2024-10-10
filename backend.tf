terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "infra/terraformstatefile"
    bucket         = "team-terraform-state-bucket"
    region         = "us-west-2"
    dynamodb_table = "terraform-lock-table"
  }
}

