// AWS Environment -- Remove the # to before configure a value to it. 
// If you dont provide any value, it will take the default value 

############################################################
#AWS Creditials to access the AWS Cloud
#############################################################
aws_access_key = ""

aws_secret_key = ""

region = "ap-south-1"

############################################################
#Define New VPC in a specific Region and Avilability Zone 
#############################################################

vpc_name = "Transit-Service-VPC1"

vpc_cidr = "10.0.0.0/16"

# Generate the key if you want to login thru the  key
keyname = ""

instances_per_az        = 1

availability_zone_count = 1

##################################################################################
#Define CIDR, Subnets for managment and three for Inside, Outisde and Diag
###################################################################################

mgmt_subnet_cidr = ["10.0.1.0/24"]

outside_subnet_cidr = ["10.0.3.0/24"]

inside_subnet_cidr = ["10.0.5.0/24"]

diag_subnet_cidr = ["10.0.4.0/24"]

ftd_mgmt_ip = ["10.0.1.10"]

ftd_outside_ip = ["10.0.3.10"]

ftd_inside_ip = ["10.0.5.10"]

ftd_diag_ip = ["10.0.4.10"]

inside_subnet_name = ["inside1"]

outside_subnet_name = ["outside1"]

mgmt_subnet_name = ["mgmt1"]

diag_subnet_name = ["diag1"]

ftd_size = "c5.xlarge"

FTD_version = "ftdv-7.1.0"
