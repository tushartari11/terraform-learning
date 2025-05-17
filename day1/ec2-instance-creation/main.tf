provider "aws" {
  region = "eu-central-1" # Setting Frankfurt as my default AWS region
}
resource "aws_instance" "example" {
  ami           = "ami-03250b0e01c28d196" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"              # Change to your desired instance type
  subnet_id     = "subnet-0d796b567687b55c6"
  key_name      = "EC2-tutorial-tushar-admin" # Replace with your key pair name for SSH access

  tags = {
    Name = "MyDay1Instance" # Tagging the instance for easy identification
  }
}
