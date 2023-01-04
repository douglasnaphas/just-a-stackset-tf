resource "aws_cloudformation_stack" "AWSCloudFormationStackSetAdministrationRole" {
  name         = "AWSCloudFormationStackSetAdministrationRole"
  template_url = "https://s3.amazonaws.com/cloudformation-stackset-sample-templates-us-east-1/AWSCloudFormationStackSetAdministrationRole.yml"
}

resource "aws_cloudformation_stack" "AWSCloudFormationStackSetExecutionRole" {
  name         = "AWSCloudFormationStackSetExecutionRole"
  template_url = "https://s3.amazonaws.com/cloudformation-stackset-sample-templates-us-east-1/AWSCloudFormationStackSetExecutionRole.yml"
}