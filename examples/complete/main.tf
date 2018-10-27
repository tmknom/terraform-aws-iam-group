module "iam_group" {
  source = "../../"
  name   = "complete"
  policy = "${data.aws_iam_policy_document.policy.json}"

  users = [
    "${aws_iam_user.user.name}",
  ]

  path        = "/ec2/"
  description = "Describe EC2"
}

resource "aws_iam_user" "user" {
  name = "complete_user"
}

data "aws_iam_policy_document" "policy" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}
