resource "github_actions_secret" "domain-driven-desgin_sonar-token" {
  repository      = github_repository.domain-driven-desgin.name
  secret_name     = "sonar_token"
  plaintext_value = var.sonar-token
}

resource "github_actions_secret" "domain-driven-desgin_unprotect-the-protected" {
  repository      = github_repository.domain-driven-desgin.name
  secret_name     = "unprotect_the_protected"
  plaintext_value = var.unprotect-the-protected
}

resource "github_actions_secret" "pdfbox-fluent-layout_sonar-token" {
  repository      = github_repository.pdfbox-fluent-layout.name
  secret_name     = "sonar_token"
  plaintext_value = var.sonar-token
}

resource "github_actions_secret" "pdfbox-fluent-layout_unprotect-the-protected" {
  repository      = github_repository.pdfbox-fluent-layout.name
  secret_name     = "unprotect_the_protected"
  plaintext_value = var.sonar-token
}

resource "github_actions_secret" "json-rpc_sonar-token" {
  repository      = github_repository.json-rpc.name
  secret_name     = "sonar_token"
  plaintext_value = var.sonar-token
}

resource "github_actions_secret" "json-rpc_unprotect_the_protected" {
  repository      = github_repository.json-rpc.name
  secret_name     = "unprotect_the_protected"
  plaintext_value = var.unprotect-the-protected
}

