variable "gcp_credentials_file" {
    description = "Path on local sytem to your GCP credentials file"
    type = "string"
}
locals {
    gcp_credentials = "${file("${var.gcp_credentials_file}")}"
}

resource "tfe_variable" "gcp_credentials" {
    key = "gcp_credentials"
    value = "${local.gcp_credentials}"
    category = "terraform"
    workspace_id = "${tfe_workspace.gcp_infrastructure.id}"
    sensitive = true
}

variable "gcp_project" {
    type="string"
}
resource "tfe_variable" "gcp_project" {
    key = "gcp_project"
    value = "${var.gcp_project}"
    category = "terraform"
    workspace_id = "${tfe_workspace.gcp_infrastructure.id}"
}

variable "compute_instance_disk_image" {
    type="string"
    default = "ubuntu-1604-lts"
}

resource "tfe_variable" "compute_instance_disk_image" {
    key = "compute_instance_disk_image"
    value = "${var.compute_instance_disk_image}"
    category = "terraform"
    workspace_id = "${tfe_workspace.gcp_infrastructure.id}"
}

variable "compute_instance_disk_size" {
    type="string"
    default = 20
}
resource "tfe_variable" "compute_instance_disk_size" {
    key = "compute_instance_disk_size"
    value = "${var.compute_instance_disk_size}"
    category = "terraform"
    workspace_id = "${tfe_workspace.gcp_infrastructure.id}"
}

variable "compute_instance_count" {
    type="string"
    default = 1
}
resource "tfe_variable" "compute_instance_count" {
    key = "compute_instance_count"
    value = "${var.compute_instance_count}"
    category = "terraform"
    workspace_id = "${tfe_workspace.gcp_infrastructure.id}"
}


variable "compute_instance_machine_type" {
    type="string"
    default = "n1-standard-1"
}
resource "tfe_variable" "compute_instance_machine_type" {
    key = "compute_instance_machine_type"
    value = "${var.compute_instance_machine_type}"
    category = "terraform"
    workspace_id = "${tfe_workspace.gcp_infrastructure.id}"
}