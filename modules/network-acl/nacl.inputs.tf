variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}

variable "nacl" {
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

variable "sb-ids" {
  type = list(string)
}
