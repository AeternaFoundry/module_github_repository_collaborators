output "repository_collaborators_id" {
  description = "Map of id values across all repository_collaborators, keyed the same as var.repository_collaborators"
  value       = { for k, v in github_repository_collaborators.repository_collaborators : k => v.id }
}
output "repository_collaborators_ignore_team" {
  description = "Map of ignore_team values across all repository_collaborators, keyed the same as var.repository_collaborators"
  value       = { for k, v in github_repository_collaborators.repository_collaborators : k => v.ignore_team }
}
output "repository_collaborators_invitation_ids" {
  description = "Map of invitation_ids values across all repository_collaborators, keyed the same as var.repository_collaborators"
  value       = { for k, v in github_repository_collaborators.repository_collaborators : k => v.invitation_ids }
}
output "repository_collaborators_owner_configured" {
  description = "Map of owner_configured values across all repository_collaborators, keyed the same as var.repository_collaborators"
  value       = { for k, v in github_repository_collaborators.repository_collaborators : k => v.owner_configured }
}
output "repository_collaborators_repository" {
  description = "Map of repository values across all repository_collaborators, keyed the same as var.repository_collaborators"
  value       = { for k, v in github_repository_collaborators.repository_collaborators : k => v.repository }
}
output "repository_collaborators_repository_id" {
  description = "Map of repository_id values across all repository_collaborators, keyed the same as var.repository_collaborators"
  value       = { for k, v in github_repository_collaborators.repository_collaborators : k => v.repository_id }
}
output "repository_collaborators_team" {
  description = "Map of team values across all repository_collaborators, keyed the same as var.repository_collaborators"
  value       = { for k, v in github_repository_collaborators.repository_collaborators : k => v.team }
}
output "repository_collaborators_user" {
  description = "Map of user values across all repository_collaborators, keyed the same as var.repository_collaborators"
  value       = { for k, v in github_repository_collaborators.repository_collaborators : k => v.user }
}

