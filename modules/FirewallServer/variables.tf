variable "FTD_version" {
  default = "ftdv-7.1.0"
}

variable "keyname" {}

variable "instances_per_az" {
  default = 2
}

variable "availability_zone_count" {
  default = 2
}

variable "ftd_size" {
  default = "c5.4xlarge"
}

variable "fmc_mgmt_ip" {
  default = ""
}

variable "fmc_nat_id" {
  default = ""
}

variable "ftd_mgmt_interface" {}

variable "ftd_inside_interface" {}

variable "ftd_outside_interface" {}

variable "ftd_diag_interface" {}

variable "tags" {
  type = map 
  default  = {}
}