variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}

variable "ip" {
  type = object({
    name    = string
    service = string
  })
}
