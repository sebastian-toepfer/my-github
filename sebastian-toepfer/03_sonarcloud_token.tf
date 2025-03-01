resource "sonarcloud_user_token" "tokens" {
  for_each = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_sonar }
  name       = "token to analyze ${each.value.name}"
  login      = var.sonar_login
}
