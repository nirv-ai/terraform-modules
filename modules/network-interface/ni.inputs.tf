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

variable "sb" {
  type = object({
    id = string
  })
}

variable "sg-ids" {
  type = list(string)
}
