provider "tfe" {
  hostname = var.hostname
  token    = var.token
  version  = "~> 0.15.0"
}

module "application-a-workspace-prod" {
  source  = "ptfe.servian-sg.gradeous.io/admin/provisioner/enterprise"
  version = "0.0.2"
  organization = "vibrato"
  workspace_name = "application-a-workspace-prod"
}

module "application-a-workspace-prod" {
  source  = "ptfe.servian-sg.gradeous.io/admin/provisioner/enterprise"
  version = "0.0.2"
  organization = "vibrato"
  workspace_name = "application-a-workspace-dev"
}
