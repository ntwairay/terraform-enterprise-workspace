provider "tfe" {
  hostname = var.hostname
  token    = var.token
  version  = "~> 0.15.0"
}

module "application-a-workspace-prod" {
  source  = "ptfe.servian-sg.gradeous.io/admin/provisioner/enterprise"
  version = "0.0.4"
  organization = "vibrato"
  workspace_name = "application-a-workspace-prod"
  vcs_repo     = {
    identifier = "ntwairay/demo-applicatoin-a"
    branch     = "master"
    oauth_token_id = "ot-tU8ca4HmPNnN91sp"
  }
  working_directory="terraform/prod"
  secret_key = "top-secret"
  secret_value = var.secret_value
}

module "application-a-workspace-dev" {
  source  = "ptfe.servian-sg.gradeous.io/admin/provisioner/enterprise"
  version = "0.0.4"
  organization = "vibrato"
  workspace_name = "application-a-workspace-dev"
  vcs_repo     = {
    identifier = "ntwairay/demo-applicatoin-a"
    branch     = "master"
    oauth_token_id = "ot-tU8ca4HmPNnN91sp"
  }
  working_directory="terraform/dev"
  secret_key = "top-secret"
  secret_value = var.secret_value
}
