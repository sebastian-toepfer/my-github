resource "github_branch_default" "my-github" {
  repository = github_repository.my-github.name
  branch     = github_branch.my-github_default.branch
}

resource "github_branch_default" "domain-driven-desgin" {
  repository = github_repository.domain-driven-desgin.name
  branch     = github_branch.domain-driven-desgin_default.branch
}

resource "github_branch_default" "pdfbox-fluent-layout" {
  repository = github_repository.pdfbox-fluent-layout.name
  branch     = github_branch.pdfbox-fluent-layout_default.branch
}

resource "github_branch_default" "json-rpc" {
  repository = github_repository.json-rpc.name
  branch     = github_branch.json-rpc_default.branch
}

