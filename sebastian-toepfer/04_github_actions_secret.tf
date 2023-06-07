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

resource "github_actions_secret" "json-printable-maven-plugin_sonar-token" {
  repository      = github_repository.json-printable-maven-plugin.name
  secret_name     = "sonar_token"
  plaintext_value = var.sonar-token
}

resource "github_actions_secret" "json-printable-maven-plugin_unprotect-the-protected" {
  repository      = github_repository.json-printable-maven-plugin.name
  secret_name     = "unprotect_the_protected"
  plaintext_value = var.unprotect-the-protected
}

resource "github_actions_secret" "json-printable-maven-plugin_mvn-user" {
  repository      = github_repository.json-printable-maven-plugin.name
  secret_name     = "mvn_username"
  plaintext_value = var.mvn_repo_user
}

resource "github_actions_secret" "json-printable-maven-plugin_mvn-pwd" {
  repository      = github_repository.json-printable-maven-plugin.name
  secret_name     = "mvn_password"
  plaintext_value = var.mvn_repo_pwd
}

resource "github_actions_secret" "json-printable-maven-plugin_gpg_pwd" {
  repository      = github_repository.json-printable-maven-plugin.name
  secret_name     = "GPG_PASSPHRASE"
  plaintext_value = var.gpg_pwd
}

resource "github_actions_secret" "json-printable-maven-plugin_gpg_key" {
  repository      = github_repository.json-printable-maven-plugin.name
  secret_name     = "GPG_PRIVATE_KEY"
  plaintext_value = var.gpg_key
}

