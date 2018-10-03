# GCPDemo

## Usage
In order to use this demo, first clone it... duh! ;)
Then create an organization in Terraform Enterprise; make sure it's one you dont care about it as you will be deleting it afterwards.


### Import your organization
Then import your organization into the current Terraform workspace
```bash
terraform import tfe_organization.gcp_infrastructure <org_name>
```

### Create your terraform.tfvars file
```
admin_email="darnold@hashicorp.com"
gcp_credentials_file="/Users/davearnold/.google.json"
gcp_project="<gcp_credentials_file_path>"
github_organization="HappyPathway"
organization="GCPDemo"
```

### Run Terraform
```bash
terraform apply
```

### Import private modules
The private modules cannot be imported during the first run as the repositories will not have been setup yet.
Importing of the private modules uses a data source where as the github repos uses resources. Since Data Sources 
run before Resources, it's necessary to not run all configurations during the first pass.
Rename the modules.tf.phase2 file to modules.tf and then re-run terraform apply
```
terraform apply
```

Now you should have everything setup properly.
