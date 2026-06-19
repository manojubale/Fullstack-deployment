terraform {
  backend "s3" {
    bucket = "s3-demo-b-d"               # must be globally unique
    key    = "ec2/dev-app.tfstate"       # path inside bucket
    region = "ap-south-1"                # Mumbai region
  }
}
