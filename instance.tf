
# Configure the AWS Provider
provider "aws" {
  region  = "eu-north-1" # Specify the AWS region you want to work with
  profile = "awstest1947"
}

#image_id      = "ami-079ae45378903f993"
#instance_type = "t3.micro"
# Define AWS Instance Resource
resource "aws_instance" "AWS-terraform" {
  #ami                    = var.image_id # Replace with the actual AMI ID
  ami = "ami-079ae45378903f993"
  #instance_type          = var.instance_type
  instance_type = "t3.micro"
  #key_name               = aws_key_pair.key-tf.key_name
  #vpc_security_group_ids = [aws_security_group.allow_tls.id] # or aws_security_group.allow_tls.id
  tags = {
    Name = "AWS-Terraform-test"
  }

  # user_data = file("${path.module}/script.sh")

  # connection {
  #   type        = "ssh"
  #   user        = "ec2-user"
  #   private_key = file("${path.module}/id_rsa")
  #   host        = self.public_ip
  # }

  #   connection {
  #   type        = "ssh"
  #   user        = "ec2-user"
  #   private_key = file("C:/harinandan-files/terraform/testing/AWS-test/id_rsa")
  #   host        = self.public_ip
  # }



  #file, local-exec, remote-exec
  # provisioner "file" {
  #   source      = "readme.md"      # terraform machine
  #   destination = "/tmp/readme.md" # remote machine
  # }
  # provisioner "file" {
  #   content     = "This is test content" # terraform machine
  #   destination = "/tmp/content.md"      # remote machine
  # }

  # provisioner "local-exec" {
  #   working_dir = "C:/terraform/testing/"
  #   command     = "echo ${self.public_ip} > mypubliciptmp.txt"

  # }
  # provisioner "remote-exec" {
  #   inline = [
  #     "ifconfig > /tmp/ifconfig.output",
  #     "echo 'hello Harinandan'>/tmp/test.txt"
  #   ]
  # }
  # provisioner "remote-exec" {
  #   script = "./testscript.sh"
  # }

}