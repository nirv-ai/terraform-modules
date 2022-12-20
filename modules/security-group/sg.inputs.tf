variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}

variable "sg" {
  type = object({
    name    = string
    service = string
    desc    = string
  })
}

variable "in" {
  type = list(object({
    desc     = string
    from     = number
    to       = number
    protocol = string
    cidrs    = list(string)
  }))
}
variable "out" {
  type = list(object({
    desc     = string
    from     = number
    to       = number
    protocol = string
    cidrs    = list(string)
  }))

  default = [{
    desc     = "out to everything"
    from     = 0
    to       = 0
    protocol = "-1"
    cidrs    = ["0.0.0.0/0"]
  }]
}

variable "vpc-id" {
  type = string
}
