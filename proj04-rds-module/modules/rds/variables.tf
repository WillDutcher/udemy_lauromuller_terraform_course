##########################
#  GENERAL INFORMATION  #
##########################
variable "project_name" {
  type        = string
  description = "The project name; used to name RDS instance and add relevant tags."
}

##########################
#    DB CONFIGURATION    #
##########################
variable "instance_class" {
  type        = string
  default     = "db.t3.micro"
  description = "The instance class used to create the RDS instance. Requires a free-tier instance class."

  validation {
    condition     = contains(["db.t3.micro"], var.instance_class)
    error_message = "Only db.t3.micro is allowed due to free tier access."
  }
}

variable "storage_size" {
  type        = number
  default     = 10
  description = "The amount of storage to allocate to the RDS instance. Should be between 5 and 10 GB."

  validation {
    condition     = var.storage_size >= 5 && var.storage_size <= 10
    error_message = "DB storage must be between 5GB and 10GB."
  }
}

variable "engine" {
  type        = string
  default     = "postgres-latest"
  description = "Engine used for the RDS instance. Currently only postgres is supported."

  validation {
    condition     = contains(["postgres-latest", "postgres-14"], var.engine)
    error_message = "DB engine must be postgres-latest or postgres-14."
  }
}

##########################
#     DB CREDENTIALS     #
##########################
variable "credentials" {
  type = object({
    username = string
    password = string
  })

  sensitive   = true
  description = "The root username and password for the RDS instance creation."

  validation {
    condition = (
      length(var.credentials.password) >= 6 &&
      length(regexall("[a-zA-Z]", var.credentials.password)) > 0 &&
      length(regexall("[0-9]", var.credentials.password)) > 0 &&
      length(regexall("^[a-zA-Z0-9+_?!#$@%^&*.,-]+$", var.credentials.password)) > 0
    )
    error_message = <<-EOT
      Password must comply with the following format:
      1: Contain at least 1 character
      2: Contain at least 1 number
      3: Be at least 6 characters in length
      4. Contains only following characters: a-z, A-Z, 0-9, +, _, ?, 
         !, #, $, @, %, ^, &, *, ., ',', -.
    EOT
  }
}

##########################
#       DB NETWORK       #
##########################
variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs to deploy the RDS instance in."
}

variable "security_group_ids" {
  type        = list(string)
  description = "Security Group IDs to attach to the RDS instance."
}