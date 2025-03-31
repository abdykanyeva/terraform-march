terraform {
  backend "s3" {  #this part i am telling please work with remote part and the remote part is s3
    bucket = "kaizen-adelina123"
    key    = "terraform.tfstate"  #what kind of file we are storing, the name of the file locally. File name will be terraform.tfstate when we are uploading to the bucket
    region = "us-east-2"
    dynamodb_table = "lock-state"

  }
}
