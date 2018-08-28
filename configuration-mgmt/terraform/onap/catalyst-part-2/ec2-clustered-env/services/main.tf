resource "aws_instance" "49630_onap_masternode_ec2" {
  ami                         = "${var.onap_ami_id}"
  instance_type               = "${var.onap_master_instance_type}"
  subnet_id                   = "${var.onap_subnet_id}"
  associate_public_ip_address = "true"

  tags {
    Name  = "49630_onap_masternode_ec2"
    Owner = "Narayanan_K_49630"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = "80"
  }

  volume_tags {
    Name = "49630_onap_masternode_root_volume"
  }
}

resource "aws_instance" "49630_onap_workernode_ec2" {
  ami                         = "${var.onap_ami_id}"
  instance_type               = "${var.onap_node_instance_type}"
  count                       = "4"
  associate_public_ip_address = "true"

  tags {
    Name  = "49630_onap_workernode_ec2"
    Owner = "Narayanan_K_49630"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = "80"
  }

  volume_tags {
    Name = "49630_onap_workernode_root_volume"
  }
}
