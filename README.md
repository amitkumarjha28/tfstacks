# Terraform Stacks: Prod and QA

This repository is configured using **Terraform Stacks** with:

- two components: `ec2` and `s3`
- two deployments: `prod` and `qa`

## Stack Files

- `variables.tfcomponent.hcl` - Stack input variables
- `providers.tfcomponent.hcl` - Stack provider declarations/config
- `components.tfcomponent.hcl` - component definitions for modules
- `outputs.tfcomponent.hcl` - Stack outputs
- `deployments.tfdeploy.hcl` - deployment definitions (`prod`, `qa`)

## Modules

- `modules/ec2`
- `modules/s3`

## Region as Input

`region` is deployment input in `deployments.tfdeploy.hcl` under each deployment block.
Update it per environment as needed.

## Validate and Initialize Stack Locally

```bash
terraform stacks init
terraform stacks validate
terraform stacks fmt
```

## Deploy via HCP Terraform

Use this repository when creating a Stack in HCP Terraform.
HCP Terraform will create runs for the `prod` and `qa` deployments defined in `deployments.tfdeploy.hcl`.

## Notes

- Set valid `ami_id`, `subnet_id`, and security group IDs before deploying.
- Buckets are generated from `bucket_name_prefix` + `region` + random suffix when `bucket_name = null`, which keeps names globally unique and region-identifiable.
