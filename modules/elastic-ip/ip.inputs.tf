
variable "alloc-id" {
  type = string

  default = ""
}

variable "ni" {
  type = object({
    id = optional(string)
  })

  default = {}
}

variable "ec2" {
  type = object({
    id = optional(string)
  })

  default = {}
}

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
