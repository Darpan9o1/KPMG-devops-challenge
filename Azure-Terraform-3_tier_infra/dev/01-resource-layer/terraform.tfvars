# Name for the environment
environment                              = "dev"

# Azure Resources
region                                   = "uksouth"
resource_group_name                      = "kpmgnetworking"
# Virtual network and Subnets
vnet_name                                = ["3Tier-infra-project"]
vnet_address                             = ["10.100.0.0/16"]
subnet_names                             = ["Web","App","DB"]
subnet_er                                = ["GatewaySubnet"]
subnet_er_range                          = ["10.100.3.0/24"]
subnet_range                             = ["10.100.0.0/24","10.100.1.0/24","10.100.2.0/24"]

# Network Security Groups
nsg_names                                = ["Web","App","DB"]

# Route Table
rt_names                                 = ["Web","App","DB","gateway","management"]

# Tags
tagvalue                           =  {

      environment                  = "Development"
}  

