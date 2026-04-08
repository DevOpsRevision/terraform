terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }

    #Configure Backend in S3 bucket   -->Currently depricated
    # backend "s3" {
    #     bucket = "easydevops-remote-state"
    #     key = "remote-state-demo"
    #     region = "us-east-1"
    #     dynamodb_table = "easydevops-remote-state"
    # }

        backend "s3" {
        bucket = "easydevops-remote-state"
        key = "provisioners-demo"
        region = "us-east-1"
        encrypt = true
        use_lockfile = true      
    }
}

#Configure the AWS provider
provider "aws" {
    region = "us-east-1"
}


 

