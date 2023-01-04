locals {
  stacksets = {
    "some-outputs" = {
      description  = "Some outputs."
      capabilities = ["CAPABILITY_IAM"]
    }
  }
}

resource "aws_cloudformation_stack_set" "stackset_map" {
  for_each         = local.stacksets
  name             = each.key
  description      = each.value.description
  permission_model = "SELF_MANAGED"
  template_body    = file(join("", ["cfn_templates/", replace(each.key, "-", "_"), ".json"]))
  capabilities     = each.value.capabilities
  lifecycle {
    ignore_changes = [
      administration_role_arn
    ]
  }
}
