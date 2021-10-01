resource "aws_launch_template" "group4-template" {
  name = "sample-launch-template"

   block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = 20
    }
  }


  image_id = "ami-09e67e426f25ce0d7"

  instance_initiated_shutdown_behavior = "terminate"

  instance_type = "t2.micro"

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
  }

 

  vpc_security_group_ids = [List_containing_ID]

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "group4-template"
    }
  }

  user_data = filebase64("host_flask.sh")
}
