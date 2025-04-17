# Define variables for Terraform

variable "callbacks" {
    description = "Redirect Uri"
    type    = list(string)
    default = ["http://localhost:3000"]
    
}

