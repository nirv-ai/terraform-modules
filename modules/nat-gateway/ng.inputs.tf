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

variable "ip-id" {
  type = string
}

variable "sb-id" {
  type = string
}
