resource "github_branch" "my-github_default" {
  repository = github_repository.my-github.name
  branch     = "main"
}

resource "github_branch" "domain-driven-desgin_default" {
  repository = github_repository.domain-driven-desgin.name
  branch     = "main"
}

resource "github_branch" "json-rpc_default" {
  repository = github_repository.json-rpc.name
  branch     = "main"
}

resource "github_branch" "pdfbox-fluent-layout_default" {
  repository = github_repository.pdfbox-fluent-layout.name
  branch     = "main"
}

resource "github_branch" "json-printable-maven-plugin_default" {
  repository = github_repository.json-printable-maven-plugin.name
  branch     = "main"
}

