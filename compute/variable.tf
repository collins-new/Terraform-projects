variable "ami" {
  description = "ami for webserver instance"
  type        = string
  default     = "ami-0dfcb1ef8550277af"


}


variable "instance_type" {
  description = "instance type for webserver instance"
  type        = list(any)
  default     = ["t2.micro", "t2.nano", "t3.micro"]

}


variable "tags" {
  description = "public ip address for webserver instance, true or false"
  type        = map(any)
  default = {
    Name        = "Webserver"
    Project     = "terraform-project"
    Environment = "Prod"
  }
}

variable "associate_public_ip_address" {
  description = "tags for webserver instance"
  type        = bool
  default     = true

}