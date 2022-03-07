#if vpc_cidr empty then use existing
variable "vpc_cidr" {
  default = null
}

variable "instances_per_az" {
  default = 1
}
#if subnet cidr empty then use existing based on subnet name
variable "mgmt_subnet_cidr" {
  type    = list(string)
  default = []
}

variable "ftd_mgmt_ip" {
  default = ["10.0.1.10", "10.0.10.20"]
}

variable "outside_subnet_cidr" {
  type    = list(string)
  default = []
}

variable "ftd_outside_ip" {
  default = ["10.0.5.10", "10.0.50.20"]
}

variable "diag_subnet_cidr" {
  type    = list(string)
  default = []
}

variable "ftd_diag_ip" {
  default = ["10.0.4.10", "10.0.40.20"]
}

variable "inside_subnet_cidr" {
  type    = list(string)
  default = []
}

variable "ftd_inside_ip" {
  default = ["10.0.3.10", "10.0.30.20"]
}

variable "availability_zone_count" {
  default = 2
}

#provide default values for subnet name as it is used in both cases
variable "mgmt_subnet_name" {
  type    = list(string)
  default = []
}

variable "outside_subnet_name" {
  type    = list(string)
  default = []
}

variable "inside_subnet_name" {
  type    = list(string)
  default = []
}

variable "diag_subnet_name" {
  type    = list(string)
  default = []
}

#provide default vpc name
variable "vpc_name" {
  type    = string
  default = null
}

#type should be boolean
variable "create_igw" {
  type    = bool
  default = true
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "security_group_ingress_with_cidr" {
  description = "Can be specified multiple times for each ingress rule. "
  type = list(object({
    from_port   = number
    protocol    = string
    to_port     = number
    cidr_blocks = list(string)
    description = string
  }))
  default = [{
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    description = null
  }]
}

variable "security_group_egress" {
  description = "Can be specified multiple times for each egress rule. "
  type = list(object({
    from_port   = number
    protocol    = string
    to_port     = number
    cidr_blocks = list(string)
    description = string
  }))
  default = [{
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["10.0.0.0/8"]
    description = null
  }]
}

variable "mgmt_interface" {
  type    = list(string)
  default = []
}

variable "outside_interface" {
  type    = list(string)
  default = []
}

variable "inside_interface" {
  type    = list(string)
  default = []
}

variable "diag_interface" {
  type    = list(string)
  default = []
}