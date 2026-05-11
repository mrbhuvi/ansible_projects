variable "instance_count" {}
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "sg_id" {}

# it is variable because we will use it in the ansible inventory file to connect to the instances