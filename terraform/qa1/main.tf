resource "null_resource" "example2" {
}

locals {
  map1 = {
    item1 = {
      name1 = "item1value1"
      name2 = "item1value2"
    }
    item2 = {
      name1 = "item2value1"
      name2 = "item2value2"
    }
  }
}

resource "null_resource" "null_resource_simple" {
  for_each = local.map1
  provisioner "local-exec" {
    command = "echo  ${each.key} ${each.value.name1} ${each.value.name2}"
  }
}

resource "null_resource" "before" {
  provisioner "local-exec" {
    command = "echo \"Wait 30 seconds\""
  }
}

resource "null_resource" "delay" {
  provisioner "local-exec" {
    command = "sleep 30"
  }
  triggers = {
    "before" = "${null_resource.before.id}"
  }
}

resource "null_resource" "after" {
  provisioner "local-exec" {
    command = "echo \"Finish\" "
  }
  depends_on = [null_resource.delay]
}

# terraform {
#   required_providers {
#     ibm = {
#       source = "IBM-Cloud/ibm"
#       version = ">= 1.12.0"
#     }
#   }
# }

# # Configure the IBM Provider
# provider "ibm" {
#   region = "us-south"
# }

# Create a VPC
# resource "ibm_is_vpc" "testacc_vpc" {
#   name = "test-vpc"
# }
