variable "repository_collaborators" {
  description = <<EOT
Map of repository_collaborators, attributes below
Required:
    - repository
Optional:
    - ignore_team (block):
        - team_id (required)
    - team (block):
        - permission (optional)
        - team_id (required)
    - user (block):
        - permission (optional)
        - username (required)
EOT

  type = map(object({
    repository = string
    ignore_team = optional(list(object({
      team_id = string
    })))
    team = optional(list(object({
      permission = optional(string)
      team_id    = string
    })))
    user = optional(list(object({
      permission = optional(string)
      username   = string
    })))
  }))
}

