variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}

variable "sb" {
  type = object({
    name    = string
    service = string
  })
}

variable "cidr" {
  type = string
}

# variable "ig_id" {
#   type = string
# }

variable "vpc" {
  type = object({
    id = string
  })
}

variable "az" {
  type = string
}
