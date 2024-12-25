variable "bucket_name" {
  type = string
  description = "Bucket name"
}
variable "bucket_access" {
  type = string
  description = "Access type of bucket"
  default = "private"
}
variable "bucket_desc" {
  type = string
  description = "Bucket name"
}
variable "bucket_env" {
  type = string
  description = "Bucket environment"
}