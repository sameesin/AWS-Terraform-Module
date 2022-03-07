variable "external_listener_ports" {
  default = [{
    protocol = "TCP"
    port = 22
    target_type = "ip"
  }]
}

variable "internal_listener_ports" {
  default = [{
    protocol = "TCP"
    port = 22
    target_type = "ip"
  }
  ]
}

#list the possible options as allowed values
variable "create"{
  type = string
  default = "both"
}

variable "internal_health_check" {
  default = {
    protocol = "TCP"
    port     = 22
  }
}

variable "external_health_check" {
  default = {
    protocol = "TCP"
    port     = 80
  }
}

variable "vpc_id" {}

#can be more that asa01 and asa02. use a list
variable "ftd_inside_ip" {
}

variable "ftd_outside_ip" {
}

variable "outside_subnet_id" {
}

variable "inside_subnet_id" {
}