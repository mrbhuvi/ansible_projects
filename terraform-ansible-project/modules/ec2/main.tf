resource "aws_instance" "name" {
  count = var.instance_count
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name

  vpc_security_group_ids = [var.sg_id]

  root_block_device {
    volume_size = 10
    volume_type = "gp3"
  }

 tags = {
  Name = count.index == 0 ? "control-node" : "worker-node-${count.index}"
  Environment = "dev"
}
}