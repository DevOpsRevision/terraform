data "aws_ami" "joinDevOps"{
    owners = ["973714476881"]
    most_recent = true

    filter {
      name = "name"
      values = ["Redhat-9-DevOps-Practice"]
    }
}

output "ami_id" {
    value = data.aws_ami.joinDevOps  
}
