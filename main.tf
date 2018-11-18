# Terraform module which creates IAM Group and IAM Policy resources on AWS.
#
# https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups.html

# https://www.terraform.io/docs/providers/aws/r/iam_group.html
resource "aws_iam_group" "default" {
  name = "${var.name}"

  path = "${var.path}"
}

# https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html
resource "aws_iam_group_membership" "default" {
  name  = "${aws_iam_group.default.name}"
  group = "${aws_iam_group.default.name}"
  users = ["${var.users}"]
}

# https://www.terraform.io/docs/providers/aws/r/iam_policy.html
resource "aws_iam_policy" "default" {
  name   = "${var.name}"
  policy = "${var.policy}"

  path        = "${var.path}"
  description = "${var.description}"
}

# https://www.terraform.io/docs/providers/aws/r/iam_group_policy_attachment.html
resource "aws_iam_group_policy_attachment" "default" {
  group      = "${aws_iam_group.default.name}"
  policy_arn = "${aws_iam_policy.default.arn}"
}
