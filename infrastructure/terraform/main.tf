resource "aws_ecs_cluster" "pikpok_cluster" {
  name = "${var.project_name}-cluster"
}

resource "aws_ecs_task_definition" "backend" {
  family                   = "${var.project_name}-backend"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = aws_iam_role.ecs_execution_role.arn
  cpu                      = "256"
  memory                   = "512"
  container_definitions = jsonencode([
    {
      name      = "backend"
      image     = "123456789012.dkr.ecr.us-east-1.amazonaws.com/pikpok-backend:latest"
      essential = true
      portMappings = [{
        containerPort = 4000
        hostPort      = 4000
      }]
    }
  ])
}

resource "aws_ecs_service" "backend_service" {
  name            = "backend-service"
  cluster        = aws_ecs_cluster.pikpok_cluster.id
  task_definition = aws_ecs_task_definition.backend.arn
  desired_count  = 1
  launch_type    = "FARGATE"
  network_configuration {
    subnets         = var.subnet_ids
    security_groups = [aws_security_group.ecs_service_sg.id]
  }
}
