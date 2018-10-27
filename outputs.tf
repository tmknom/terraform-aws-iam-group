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
