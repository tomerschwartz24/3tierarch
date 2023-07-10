public_subnets     =   ["172.20.1.0/24", "172.20.2.0/24"] 

private_subnets    =   ["172.20.3.0/24", "172.20.4.0/24", "172.20.5.0/24", "172.20.6.0/24", "172.20.7.0/24", "172.20.8.0/24" ]

region             =   "eu-west-2"

azs                =   ["eu-west-2a", "eu-west-2b"]


#Strings 
public_subnet_name  =   "tomers-public-sub-eu-west-2" 

private_subnet_name =   "tomers-private-sub-eu-west-2"

region              =   "eu-west-1-eu-west-2"

vpc_name            =   "tomers-vpc-eu-west-2"

igw_name            =   "tomers-igw-eu-west-2"

ngw_name            =   "tomers-natgateway-eu-west-2"

EIP_name            =   "tomers-EIP-eu-west-2"

vpc_cidr_block      =   "172.20.0.0/16"

rt_full_out         =   "0.0.0.0/0"

public_route_name   =   "tomers-pub-route-eu-west-2"

private_route_name  =   "tomers-priv-route-eu-west-2"