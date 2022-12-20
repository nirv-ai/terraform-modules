variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}

variable "rt" {
  type = object({
    name    = string
    service = string
  })
}

variable "routes" {
  type = list(object({
    id-type = string
    id      = string
    cidr    = string
  }))
}
variable "vpc-id" {
  type = string
}
