# Output Configuration
#
# https://www.terraform.io/docs/configuration/outputs.html

output "iam_group_name" {
  value       = "${aws_iam_group.default.name}"
  description = "The group's name."
}

output "iam_group_id" {
  value       = "${aws_iam_group.default.id}"
  description = "The group's ID."
}

output "iam_group_arn" {
  value       = "${aws_iam_group.default.arn}"
  description = "The ARN assigned by AWS for this group."
}

output "iam_group_path" {
  value       = "${aws_iam_group.default.path}"
  description = "The path of the group in IAM."
}

output "iam_group_unique_id" {
  value       = "${aws_iam_group.default.unique_id}"
  description = "The unique ID assigned by AWS."
}

output "iam_group_membership_name" {
  value       = "${aws_iam_group_membership.default.name}"
  description = "The name to identify the Group Membership."
}

output "iam_policy_id" {
  value       = "${aws_iam_policy.default.id}"
  description = "The policy's ID."
}

output "iam_policy_arn" {
  value       = "${aws_iam_policy.default.arn}"
  description = "The ARN assigned by AWS to this policy."
}

output "iam_policy_description" {
  value       = "${aws_iam_policy.default.description}"
  description = "The description of the policy."
}

output "iam_policy_name" {
  value       = "${aws_iam_policy.default.name}"
  description = "The name of the policy."
}

output "iam_policy_path" {
  value       = "${aws_iam_policy.default.path}"
  description = "The path of the policy in IAM."
}

output "iam_policy_document" {
  value       = "${aws_iam_policy.default.policy}"
  description = "The policy document."
}
