resource "github_dependabot_secret" "domain-driven-desgin_sonar-token" {
  repository      = github_repository.domain-driven-desgin.name
  secret_name     = "sonar_token"
  plaintext_value = var.dependabot-sonar-token
}

resource "github_dependabot_secret" "pdfbox-fluent-layout_sonar-token" {
  repository      = github_repository.pdfbox-fluent-layout.name
  secret_name     = "sonar_token"
  plaintext_value = var.dependabot-sonar-token
}

resource "github_dependabot_secret" "json-rpc_sonar-token" {
  repository      = github_repository.json-rpc.name
  secret_name     = "sonar_token"
  plaintext_value = var.dependabot-sonar-token
}

