output "vpc_id" {
  value = var.vpc_cidr != null ? aws_vpc.asa_vpc[0].id : data.aws_vpc.asa_vpc[0].id
}

output "mgmt_interface" {
  value = aws_network_interface.ftd_mgmt.*.id
}

output "outside_interface" {
  value = aws_network_interface.ftd_outside.*.id
}

output "inside_interface" {
  value = aws_network_interface.ftd_inside.*.id
}

output "diag_interface" {
  value = aws_network_interface.ftd_diag.*.id
}

output "mgmt_subnet" {
  value = var.mgmt_subnet_cidr != null ? aws_subnet.mgmt_subnet.*.id : data.aws_subnet.mgmt.*.id
}

output "inside_subnet" {
  value = var.inside_subnet_cidr != null ? aws_subnet.inside_subnet.*.id : data.aws_subnet.insideftd.*.id
}

output "outside_subnet" {
  value = var.outside_subnet_cidr != null ? aws_subnet.outside_subnet.*.id : data.aws_subnet.outsideftd.*.id
}

output "diag_subnet" {
  value = var.diag_subnet_cidr != null ? aws_subnet.diag_subnet.*.id : data.aws_subnet.diagftd.*.id
}

output "mgmt_interface_ip" {
  value = aws_network_interface.ftd_mgmt.*.private_ip_list
}

output "inside_interface_ip" {
  value = aws_network_interface.ftd_inside.*.private_ip_list
}

output "outside_interface_ip" {
  value = aws_network_interface.ftd_outside.*.private_ip_list
}

output "diag_interface_ip" {
  value = aws_network_interface.ftd_diag.*.private_ip_list
}

output "mgmt_sub" {
  value = local.mgmt_subnet
}