module "april" {
  source  = "abdykanyeva/april/vpc"
  version = "4.0.0"
  region = "us-east-2"
  vpc_cidr = "10.0.0.0/16"
  subnet1_cidr = "10.0.1.0/24"
  subnet2_cidr = "10.0.2.0/24"
  subnet3_cidr = "10.0.3.0/24"
  ip_on_launch = true
  port = [
  {from_port = 22, to_port = 22},
  {from_port = 80, to_port = 80}

]

}