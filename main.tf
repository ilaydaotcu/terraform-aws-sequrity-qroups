variable "vpc_id" {
    description = "VPC ID"
    type = string
}

resource "aws_security_group" "default" {
     name = "allow_tls"
     description = "Allows TLS inbound traffic and all outbound traffic"
     vpc_id = var.vpc_id

     tags = {
       name = "ilayda"
     }
}   