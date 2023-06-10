resource "github_dependabot_secret" "sonar-token" {
  for_each        = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_sonar }
  repository      = each.value.name
  secret_name     = "sonar_token"
  plaintext_value = var.dependabot-sonar-token
}
