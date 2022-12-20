variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}

variable "ng" {
  type = object({
    name    = string
    service = string
  })
}

variable "ip" {
  type = object({
    id = string
  })
}

variable "sb" {
  type = object({
    id = string
  })
}
