# Resource Configuration
#
# https://www.terraform.io/docs/configuration/resources.html

# https://www.terraform.io/docs/providers/aws/r/iam_group.html
resource "aws_iam_group" "default" {
  name = "${var.name}"
}

# https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html
resource "aws_iam_group_membership" "default" {
  name  = "${aws_iam_group.default.name}"
  group = "${aws_iam_group.default.name}"
  users = ["${var.users}"]
}
