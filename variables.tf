variable "pet_filename" {
  description = "File path where the pet file will be created"
  type        = string
  default     = "/root/pets.txt"
}

variable "pet_content" {
  description = "Content to be written into the pet file"
  type        = string
  default     = "my horse is black in colour!"
}

variable "random_pet_prefix" {
  description = "Prefix for the random pet name"
  type        = string
  default     = "MR"
}

variable "random_pet_separator" {
  description = "Separator used in the random pet name"
  type        = string
  default     = "."
}

variable "random_pet_length" {
  description = "Number of words in the random pet name"
  type        = number
  default     = 1
}
