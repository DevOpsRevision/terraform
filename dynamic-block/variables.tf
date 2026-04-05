variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "AMI ID of JoinDevOps"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    default = {
        Name = "Hello World"
        Purpose = "variables-demo"
    }
}

variable "sg_name" {
    default = "vars-file-allow-all"
}

variable "sg_description" {
    default = "Allowing all ports from internet"
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    type = number
    default = 0      
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]  
}

variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}

variable "environment" {
    default = "qa"  
}

variable "instances" {
    default = {
        mongodb = "t3.micro"  #Here each keyword is assigned for every iteration so that we will get each.key and each.value
        redis = "t3.micro"
        mysql = "t3.small"
        rabbitmq = "t3.micro"

    }
  
}

variable "zone_id" {
    default = "Z09260871ALCRUTIR75TM"
}

variable "domain_name" {
    default = "easydevops.fun"
  
}

variable "ingress_ports" {
    default = [
        {
        from_port = 22
        to_port = 22
    },
    {
        from_port = 80
        to_port = 80
    },
    {
        from_port = 80
        to_port = 80
    }
    ]
  
}


