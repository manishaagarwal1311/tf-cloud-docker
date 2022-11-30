terraform {
  required_providers {
    powermax = {
       version = "0.0.1"
      source  = "dell/powermax"
    }
  }
}

provider "powermax" {
  username = var.username
  password = var.password
  endpoint = var.endpoint
  serial_number = var.serial_number
  insecure = true
}

resource "powermax_storage_group" "storage_group_2" {
	name = "sg_tf_cloud"
	srpid = "SRP_1"
	service_level = "Diamond"
}
