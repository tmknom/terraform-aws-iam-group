module "iam_group" {
  source = "../../"
  name   = "minimal"
  policy = "${data.aws_iam_policy_document.policy.json}"

  users = [
    "${aws_iam_user.user.name}",
  ]
}

resource "aws_iam_user" "user" {
  name = "minimal_user"
}

data "aws_iam_policy_document" "policy" {
  statement {
    effect = "Allow"

    actions = [
      "ec2:Describe*",
    ]

    resources = ["*"]
  }
}
