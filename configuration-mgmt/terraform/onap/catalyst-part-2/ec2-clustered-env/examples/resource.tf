provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "49630_onap_masternode_ec2_test" {
  ami                         = "ami-759bc50a"
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-71c9853b"
  associate_public_ip_address = "true"
  key_name                    = "Narayanan_K_49630_KP"

  tags {
    Name  = "49630_onap_masternode_ec2_test"
    Owner = "Narayanan_K_49630"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = "8"
  }

  volume_tags {
    Name = "49630_onap_masternode_root_volume_test"
  }
}
