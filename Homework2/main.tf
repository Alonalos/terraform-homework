resource "aws_key_pair" "bastion" {
  key_name   = "bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_s3_bucket" "bucket1" {
  bucket = "kaizen-alona"

}
resource "aws_s3_bucket" "bucket2" {
  bucket_prefix = "kaizen-"

}

resource "aws_s3_bucket" "bucket3" {
  bucket = "alona-b3"
}

resource "aws_s3_bucket" "bucket4" {
  bucket = "alona-b4"
}
/*
//terraform import aws_s3_bucket.bucket3 alona-b3
erraform import aws_s3_bucket.bucket4 alona-b4
*/

 resource "aws_iam_user" "hw" {
  for_each = toset(["jenny", "rose", "lisa", "jisoo"])
  name = each.value
 }

 resource "aws_iam_group" "gr1" {
   name = "blackpink"
 }

resource "aws_iam_group_membership" "hw2" {
  name = "testing-group-membership2"
  
  users = [
      for i in aws_iam_user.hw : i.name 
  ]

  group = aws_iam_group.gr1.name
    
  
}

