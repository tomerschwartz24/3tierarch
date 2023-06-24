variable "azs" {
 type        = list(string)
 description = "List of Possible availability zones to be used"
 default     = ["eu-central-1a", "eu-central-1b"]
}

#Public cidrs for 3tier-arch

variable "public_subnets" {
 type        = list(string)
 description = "Public Subnets"
 default     = ["172.20.1.0/24", "172.20.2.0/24"]
}

#private cidrs for 3tier-arch
variable "private_subnets" {
 type        = list(string)
 description = "Private Subnets"
 default     = ["172.20.3.0/24", "172.20.4.0/24", "172.20.5.0/24", "172.20.6.0/24", "172.20.7.0/24", "172.20.8.0/24" ]
}
