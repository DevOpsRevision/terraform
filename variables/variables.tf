variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "AMI ID of JoinDevOps"
  
}

variable "instance_type" {
    default = "t3.micro"
}