
provider "aws" {
  region = "eu-north-1"
}

data "aws_instance" "demo" {
  instance_id = "i-031ad940e546f1818"
}

output "instance_tags" {
  value = data.aws_instance.demo.tags
}

