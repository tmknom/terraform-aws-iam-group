# terraform-aws-iam-group

[![CircleCI](https://circleci.com/gh/tmknom/terraform-aws-iam-group.svg?style=svg)](https://circleci.com/gh/tmknom/terraform-aws-iam-group)
[![GitHub tag](https://img.shields.io/github/tag/tmknom/terraform-aws-iam-group.svg)](https://registry.terraform.io/modules/tmknom/iam-group/aws)
[![License](https://img.shields.io/github/license/tmknom/terraform-aws-iam-group.svg)](https://opensource.org/licenses/Apache-2.0)

Terraform module which creates IAM Group and IAM Policy resources on AWS.

## Description

Provision [IAM Group](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups.html)
and its own [Customer Managed Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html#customer-managed-policies).
This module provides recommended settings.

- Use groups to assign permissions to users
- Use managed policies instead of inline policies

## Usage

### Minimal

```hcl
module "iam_group" {
  source = "git::https://github.com/tmknom/terraform-aws-iam-group.git?ref=tags/1.0.0"
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
    effect    = "Allow"
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}
```

### Complete

```hcl
module "iam_group" {
  source = "git::https://github.com/tmknom/terraform-aws-iam-group.git?ref=tags/1.0.0"
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
  # Omitted below.
}
```

## Examples

- [Minimal](https://github.com/tmknom/terraform-aws-iam-group/tree/master/examples/minimal)
- [Complete](https://github.com/tmknom/terraform-aws-iam-group/tree/master/examples/complete)

## Inputs

| Name        | Description                                           |  Type  |        Default         | Required |
| ----------- | ----------------------------------------------------- | :----: | :--------------------: | :------: |
| name        | The group's name.                                     | string |           -            |   yes    |
| policy      | The policy document. This is a JSON formatted string. | string |           -            |   yes    |
| description | Description of the policy.                            | string | `Managed by Terraform` |    no    |
| path        | Path in which to create the group and the policy.     | string |          `/`           |    no    |
| users       | A list of IAM User names to associate with the Group. |  list  |          `[]`          |    no    |

## Outputs

| Name                      | Description                                |
| ------------------------- | ------------------------------------------ |
| iam_group_arn             | The ARN assigned by AWS for this group.    |
| iam_group_id              | The group's ID.                            |
| iam_group_membership_name | The name to identify the Group Membership. |
| iam_group_name            | The group's name.                          |
| iam_group_path            | The path of the group in IAM.              |
| iam_group_unique_id       | The unique ID assigned by AWS.             |
| iam_policy_arn            | The ARN assigned by AWS to this policy.    |
| iam_policy_description    | The description of the policy.             |
| iam_policy_document       | The policy document.                       |
| iam_policy_id             | The policy's ID.                           |
| iam_policy_name           | The name of the policy.                    |
| iam_policy_path           | The path of the policy in IAM.             |

## Development

### Requirements

- [Docker](https://www.docker.com/)

### Configure environment variables

```shell
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=ap-northeast-1
```

### Installation

```shell
git clone git@github.com:tmknom/terraform-aws-iam-group.git
cd terraform-aws-iam-group
make install
```

### Makefile targets

```text
clean                          Clean .terraform
docs                           Generate docs
format                         Format code
help                           Show help
install                        Install requirements
lint                           Lint code
release                        Release GitHub and Terraform Module Registry
terraform-apply-complete       Run terraform apply examples/complete
terraform-apply-minimal        Run terraform apply examples/minimal
terraform-destroy-complete     Run terraform destroy examples/complete
terraform-destroy-minimal      Run terraform destroy examples/minimal
terraform-plan-complete        Run terraform plan examples/complete
terraform-plan-minimal         Run terraform plan examples/minimal
upgrade                        Upgrade makefile
```

### Releasing new versions

Bump VERSION file, and run `make release`.

### Terraform Module Registry

- <https://registry.terraform.io/modules/tmknom/iam-group/aws>

## License

Apache 2 Licensed. See LICENSE for full details.
