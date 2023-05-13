resource "github_branch_protection" "sebastian-toepfer_domain-driven-desgin" {
  repository_id = github_repository.sebastian-toepfer_domain-driven-desgin.node_id

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = false

  require_conversation_resolution = true
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    dismissal_restrictions          = []
    pull_request_bypassers          = []
    require_code_owner_reviews      = false
    require_last_push_approval      = true
    required_approving_review_count = 0
    restrict_dismissals             = false
  }

  required_status_checks {
    contexts = [
      "build and analyze",
    ]
    strict = true
  }
}

