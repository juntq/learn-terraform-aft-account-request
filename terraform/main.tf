module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "juntq+aft_sandbox@amazon.com"
    AccountName               = "aft-sandbox"
    ManagedOrganizationalUnit = "test"
    SSOUserEmail              = "juntq+aft_sandbox@amazon.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "test-aft-1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "juntq+test_aft_1@amazon.com"
    AccountName               = "test-aft-1"
    ManagedOrganizationalUnit = "test"
    SSOUserEmail              = "juntq+test_aft_1@amazon.com"
    SSOUserFirstName          = "testaft1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "test-aft-1"
}
