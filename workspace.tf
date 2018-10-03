resource "tfe_organization" "org" {
  name = "${var.organization}"
  email = "${var.admin_email}"
}

module "oauth_token" {
    source = "github.com/HappyPathway/terraform-tfe-oauth-token"
    tfe_org = "${var.organization}"
    tfe_token = "${var.atlas_token}"
}

resource "github_repository" "repo" {
  name        = "gcp_infrastructure"
  description = "TFE Demo for GCP Infrastructure"
  private = false
  gitignore_template = "Terraform"
}

resource "tfe_workspace" "gcp_infrastructure" {
    depends_on = [
        "github_repository.repo"
    ]
    name = "gcp_infrastructure"
    organization = "${var.organization}"
    vcs_repo = {
        identifier = "${var.github_organization}/gcp_infrastructure"
        branch = "master"
        oauth_token_id = "${module.oauth_token.oauth_token}"
        ingress_submodules = true
    }
}