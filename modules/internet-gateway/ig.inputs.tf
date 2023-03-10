variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}

variable "ig" {
  type = object({
    name    = string
    service = string
  })
}

variable "vpc" {
  type = object({
    id = string
  })
}
