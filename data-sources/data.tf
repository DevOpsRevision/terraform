data "aws_ami" "joinDevOps"{
    name = "RHEL-9-DevOps-Practice"
}

output "ami_id" {
    value = data.aws_ami.ami_id  
}