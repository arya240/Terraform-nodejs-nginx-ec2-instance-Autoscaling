variable "access_key" {
default = "AKIA4ZYK4K7Jxxxxxxx"
}
variable "secret_key" {
default = "Ukf13xc0WCFlch8v+nV3xLxxxx"
}

variable "aws_default_user" {
  default = "ec2-user"
}

variable "region" {
  default = "ap-south-1"
}

variable "amiid" {
  default = "ami-0eacc5b7915ba9921"
}

variable "instancetype" {
  default = "t2.micro"
}

variable "private_key" {
default = "gogokey"
}

variable "public_key" {
default = "gogokey.pub"
}

variable "availability_zone1" {
  default = "ap-south-1a"
}

variable "availability_zone2" {
  default = "ap-south-1b"
}

variable "emails" {
  default = "daweralamsyah12@gmail.com"
}

variable "environment_tag" {
  description = "Environment Tag"
  default = "DEV"
}
