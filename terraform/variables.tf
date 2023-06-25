variable "region" {
    type = string
    description = "Region to deploy infrastructure in"
}

variable "azs" {
 type        = list(string)
 description = "List of Possible availability zones to be used"
}

#Public cidrs for 3tier-arch

variable "public_subnets" {
 type        = list(string)
 description = "Public Subnets"
}

#private cidrs for 3tier-arch
variable "private_subnets" {
 type        = list(string)
 description = "Private Subnets"
}
