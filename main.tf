provider "aws" {
  region = "us-east-1" # Change to your preferred AWS region
}
terraform {
  backend "s3" {
    bucket  = "terraform-ojje"
    key     = "ecr/ecr-terraform.tfstate"
    region  = "us-east-1" # Update if your S3 bucket is in a different region
    encrypt = true

  }
}

resource "aws_ecr_repository" "ojje_prod_auth" {
  name                 = "ojje-prod-auth"
  image_tag_mutability = "MUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "OjjeProdAuth"
    Environment = "Production"
  }
}

resource "aws_ecr_repository" "ojje_prod_platform_core" {
  name                 = "ojje-prod-platform-core"
  image_tag_mutability = "MUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "OjjeProdPlatformCore"
    Environment = "Production"
  }
}

resource "aws_ecr_repository" "ojje_prod_storygeneration" {
  name                 = "ojje-prod-storygeneration"
  image_tag_mutability = "MUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "OjjeProdStoryGeneration"
    Environment = "Production"
  }
}

resource "aws_ecr_repository" "ojje_prod_image" {
  name                 = "ojje-prod-image"
  image_tag_mutability = "MUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "OjjeProdImage"
    Environment = "Production"
  }
}
