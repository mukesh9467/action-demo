terraform {
  backend "s3" {
    bucket         = "mymsplanet01"      
    key            = "dev/state/terraform.tfstate"
    region         = "ap-south-1"                   
    dynamodb_table = "dev_state_file_lock"        
    encrypt        = true                          
  }
}
