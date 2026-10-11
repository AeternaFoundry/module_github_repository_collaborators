resource "github_repository_collaborators" "repository_collaborators" {
  for_each = var.repository_collaborators

  repository = each.value.repository

  dynamic "ignore_team" {
    for_each = each.value.ignore_team != null ? each.value.ignore_team : []
    content {
      team_id = ignore_team.value.team_id
    }
  }

  dynamic "team" {
    for_each = each.value.team != null ? each.value.team : []
    content {
      permission = team.value.permission
      team_id    = team.value.team_id
    }
  }

  dynamic "user" {
    for_each = each.value.user != null ? each.value.user : []
    content {
      permission = user.value.permission
      username   = user.value.username
    }
  }
}

