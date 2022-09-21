variable "the_input" {
  type        = string
  description = "The input"
  default     = "world"
}

output "the_output" {
  description = "The output"
  value       = format("Hello, %s", var.the_input)
}
