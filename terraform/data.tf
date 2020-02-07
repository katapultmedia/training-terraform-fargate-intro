data "aws_vpc" "this" {
  id = var.vpc_id
}

data "aws_subnet_ids" "this" {
  vpc_id = data.aws_vpc.this.id
}

data "aws_security_groups" "this" {
  filter {
    name   = "group-name"
    values = ["wordpress"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.this.id]
  }
}
