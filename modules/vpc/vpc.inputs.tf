variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}

variable "vpc" {
  type = object({
    name    = string
    service = string
  })
}

variable "cidr" {
  type = string
}
