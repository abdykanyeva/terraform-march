

provider aws {
    region = "us-east-2"
}


resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")

  }

# resource "aws_s3_bucket" "example" {
#   bucket = "kaizen-adelina97"
#   force_destroy = true

  
# }


# resource "time_sleep" "wait" {
#   depends_on = [aws_s3_bucket.example]

#   create_duration = "10s"
# }



# resource "aws_s3_object" "object" {
#   depends_on = [time_sleep.wait] # this line means that it will not try to add an object while it is trying to create a bucket
#   bucket = "kaizen-adelina97"
#   key    = "main.tf"
#   source = "main.tf"

# }


# resource "aws_s3_bucket" "example1" {
#   bucket_prefix = "kaizen-"
#   force_destroy = true

  
# }

