# terraform-aws-iam-group

[![CircleCI](https://circleci.com/gh/tmknom/terraform-aws-iam-group.svg?style=svg)](https://circleci.com/gh/tmknom/terraform-aws-iam-group)
[![GitHub tag](https://img.shields.io/github/tag/tmknom/terraform-aws-iam-group.svg)](https://registry.terraform.io/modules/tmknom/iam-group/aws)
[![License](https://img.shields.io/github/license/tmknom/terraform-aws-iam-group.svg)](https://opensource.org/licenses/Apache-2.0)

Terraform module which creates IAM Group and IAM Policy resources on AWS.

## Usage

Named `terraform-<PROVIDER>-<NAME>`. Module repositories must use this three-part name format.

```sh
curl -fsSL https://raw.githubusercontent.com/tmknom/terraform-aws-iam-group/master/install | sh -s terraform-aws-sample
cd terraform-aws-sample
```

## Examples

- [Minimal](https://github.com/tmknom/terraform-aws-iam-group/tree/master/examples/minimal)
- [Complete](https://github.com/tmknom/terraform-aws-iam-group/tree/master/examples/complete)

## Inputs

Write your Terraform module inputs.

## Outputs

Write your Terraform module outputs.

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
