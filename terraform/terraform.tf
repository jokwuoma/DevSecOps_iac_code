terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "devsecops-quiz-app" // changed bucket name from cloudcore007 to devsecops-quiz-app
    key    = "terraform.tfstate"
    region = "us-west-2" // changed region from us-east-1 to us-west-2
  }

  required_version = ">= 1.6.3"
}
