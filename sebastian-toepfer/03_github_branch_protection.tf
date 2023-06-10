resource "github_branch_protection" "my-github" {
  repository_id = github_repository.my-github.node_id

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = false

  require_conversation_resolution = true
  required_pull_request_reviews {
    required_approving_review_count = 0
  }

  required_status_checks {
    contexts = [
      "Terraform Cloud/sebastian-toepfer/github-personal",
    ]
    strict = true
  }
}

resource "github_branch_protection" "default" {
  for_each      = { for key, value in github_branch_default.default : key => value if var.repos[value.repository].enable_protection }
  repository_id = github_repository.repos[each.value.repository].node_id

  pattern          = each.value.branch
  enforce_admins   = true
  allows_deletions = false

  require_conversation_resolution = true
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    require_last_push_approval      = false
    required_approving_review_count = 0
    restrict_dismissals             = false
  }

  required_status_checks {
    contexts = var.repos[each.value.repository].default_actions
    strict = true
  }
}
