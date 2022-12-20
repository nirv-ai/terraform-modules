variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}

variable "ebs" {
  type = object({
    name    = string
    service = string
    type = string
    size = number
  })
}

variable "az" {
  type = string
}
