variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}

variable "ni" {
  type = object({
    name    = string
    service = string
  })
}

variable "sb-id" {
  type = string
}

variable "sg-ids" {
  type = list(string)
}
