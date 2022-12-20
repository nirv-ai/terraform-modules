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

variable "vpc_id" {
  type = string
}

variable "sb_ids" {
  type = list(string)
}
