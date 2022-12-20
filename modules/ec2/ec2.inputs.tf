variable "ec2" {
  type = object({
    type        = string
    ami         = string
    iam-profile = string
    key         = string
    monitor     = bool
    name        = string
    on-shutdown = string
    root-size   = number
    root-type   = string
    service     = string
  })
}

variable "az" {
  type = string
}

variable "ni-device-index" {
  type = number
}

variable "tags" {
  type = object({
    env     = string
    appname = string
    tf      = number
  })
}


variable "ni-id" {
  type = string
}
