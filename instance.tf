
# Configure the AWS Provider
provider "aws" {
  region  = "eu-north-1" # Specify the AWS region you want to work with
 #profile = var.profile != "" ? var.profile : null

}


resource "aws_instance" "AWS-terraform" {
 
  ami = "ami-079ae45378903f993"

  instance_type = "t3.micro"

#   tags = {
#     #Name = "AWS-Terraform-test"
#     Environment = "dev"
#   }

}