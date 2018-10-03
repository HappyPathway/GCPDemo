module "gcp_network_repo" {
    source = "github.com/HappyPathway/terraform-github-repo-module"
    repo_src = "rberlind/terraform-google-network"
    repo_dest = "terraform-google-network"
    repo_dir = "${path.module}/repos/terraform-google-network"
    repo_desc = "Creates a Network in GCP"
    module = true
}

module "gcp_network_firewall_repo" {
    source = "github.com/HappyPathway/terraform-github-repo-module"
    repo_src = "rberlind/terraform-google-network-firewall"
    repo_dest = "terraform-google-network-firewall"
    repo_dir = "${path.module}/repos/terraform-google-network-firewall"
    repo_desc = "Creates a Network Firewall in GCP"
    module = true
}

module "gcp_network_subnet_repo" {
    source = "github.com/HappyPathway/terraform-github-repo-module"
    repo_src = "rberlind/terraform-google-network-subnet"
    repo_dest = "terraform-google-network-subnet"
    repo_dir = "${path.module}/repos/terraform-google-network-subnet"
    repo_desc = "Creates a Network Subnet in GCP"
    module = true
}

module "gcp_instance_repo" {
    source = "github.com/HappyPathway/terraform-github-repo-module"
    repo_src = "rberlind/terraform-google-compute-instance"
    repo_dest = "terraform-google-compute-instance"
    repo_dir = "${path.module}/repos/terraform-google-compute-instance"
    repo_desc = "Creates an Instance in GCP"
    module = true
}