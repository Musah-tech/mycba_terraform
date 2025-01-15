resource "aws_launch_template" "backend" {
  name_prefix   = "Backend_Template"
  instance_type = var.instance_type
  key_name      = var.key_pair
  image_id      = "ami-007a3791b30e11a79"
  tags = {
    Name = "Backend-Launch-Template"
  }
}

resource "aws_autoscaling_group" "backend" {
    launch_template {
    
      id      = aws_launch_template.backend.id
      version = "$Latest"
    }
    vpc_zone_identifier = aws_subnet.private[*].id
    min_size            = 1
    max_size            = 3
}