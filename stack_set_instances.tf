resource "aws_cloudformation_stack_set_instance" "cloudwatch_compliance_alarms" {
  stack_set_name = "some-outputs"
  depends_on = [
    aws_cloudformation_stack_set.stack_set_self_managed_map["some-outputs"],
    aws_cloudformation_stack.AWSCloudFormationStackSetAdministrationRole,
    aws_cloudformation_stack.AWSCloudFormationStackSetExecutionRole
  ]
}
