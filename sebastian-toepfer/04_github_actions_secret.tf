resource "github_actions_secret" "sonar-token" {
  for_each        = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_sonar }
  repository      = each.value.name
  secret_name     = "sonar_token"
  plaintext_value = var.sonar-token
}

resource "github_actions_secret" "unprotect-the-protected" {
  for_each        = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_release }
  repository      = each.value.name
  secret_name     = "unprotect_the_protected"
  plaintext_value = var.unprotect-the-protected
}

resource "github_actions_secret" "mvn-user" {
  for_each        = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_release }
  repository      = each.value.name
  secret_name     = "mvn_username"
  plaintext_value = var.mvn_repo_user
}

resource "github_actions_secret" "mvn-pwd" {
  for_each        = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_release }
  repository      = each.value.name
  secret_name     = "mvn_password"
  plaintext_value = var.mvn_repo_pwd
}

resource "github_actions_secret" "gpg-pwd" {
  for_each        = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_release }
  repository      = each.value.name
  secret_name     = "GPG_PASSPHRASE"
  plaintext_value = var.gpg_pwd
}

resource "github_actions_secret" "gpg-key" {
  for_each        = { for key, value in github_repository.repos : key => value if var.repos[value.name].enable_release }
  repository      = each.value.name
  secret_name     = "GPG_PRIVATE_KEY"
  plaintext_value = var.gpg_key
}
