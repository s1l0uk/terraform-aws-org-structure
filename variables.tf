variable "default_accounts" {
  description = "[Optional] A List of default accounts."
  type        = list(string)
  default     = ["logging", "billing"]
}

variable "region" {
  description = "[Optional] The Master Region to operate in."
  type        = list(string)
  default     = ["projectx"]
}

variable "project_accounts" {
  description = "[Required] A List of Project Accounts to host your Projects."
  type        = list(string)
  default     = ["projectx"]
}

variable "environments" {
  description = "[Required] A List of Environments for each Product."
  type        = string
  default     = ["lab","dev","prod"]
}

variable "tags" {
  description = "[Optional] Extra Tags to add to your stack."
  type        = map
  default = {
    BU = "cloud"
  }
}
