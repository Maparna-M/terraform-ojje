output "ecr_repository_urls" {
  value = {
    ojje_prod_auth           = aws_ecr_repository.ojje_prod_auth.repository_url
    ojje_prod_platform_core  = aws_ecr_repository.ojje_prod_platform_core.repository_url
    ojje_prod_storygeneration = aws_ecr_repository.ojje_prod_storygeneration.repository_url
    ojje_prod_image          = aws_ecr_repository.ojje_prod_image.repository_url
  }
}
