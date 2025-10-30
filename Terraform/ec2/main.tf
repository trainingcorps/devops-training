resource "aws_instance" "prod_server" {
  ami           = var.ami_image
  instance_type = var.instance_type
  subnet_id     = var.subnet
  key_name      = var.sshkeyname

  root_block_device {
    volume_type = "gp2"
    volume_size = 50
  }

  tags = {
    Name = var.commontag
  }
}