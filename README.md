# Resource block

resource "<resource_type>" "<reference_name>" {
  # ARGUMENTS
}

RESOURCES      ==> Actually creates us an infrastructure

   * ARGUMENTS    ==> Inputs that we provide
        required
        optional
        optional(default value)
   * ATTRIBUTES   ==> Outputs that we can fetch once the infra is created

DATA SOURCES   ==> If an Infra is already created and available in your AWS accounts, use DS to fetch info about the infra


DEPENDENCIES
* IMPLICIT
* EXPLICIT

# Terraform commands

terraform init    ==> Initialize a lot of things [backend, **provider**, modules]
terraform plan    ==> EXECUTION outline (Doesnt guarantee)
terraform apply   ==> Actual infra is created
terraform apply -target <resource_addr>  ==> Create a specific resource

terraform destroy ==> Opposite of APPLY - iused to destroy the created infra
terraform destroy -target <resource_addr> ==> Destroy a specific resource

terraform fmt    ==> Formats your code to a uniform format
terraform validate ==> Validates your code form syntax perspective