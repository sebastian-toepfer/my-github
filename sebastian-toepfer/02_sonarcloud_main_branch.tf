resource "sonarcloud_project_main_branch" "main" {
  for_each    = sonarcloud_project.projects
  project_key = each.value.key
  name        = "main"
}
