module "wordpress_definition" {
  source = "git::https://github.com/cloudposse/terraform-aws-ecs-container-definition.git?ref=tags/0.23.0"

  container_name  = "wp"
  container_image = "wordpress:php7.2"
}

resource "aws_ecs_task_definition" "this" {
  container_definitions    = module.wordpress_definition.json
  family                   = local.application_name
  requires_compatibilities = [local.launch_type]

  cpu          = "256"
  memory       = "512"
  network_mode = "awsvpc"
}
