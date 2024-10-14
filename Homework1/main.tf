
resource "aws_iam_user" "hw1" {
  name = "jenny"
}
resource "aws_iam_user" "hw2" {
  name = "rose"
}
resource "aws_iam_user" "hw3" {
  name = "lisa"
}
resource "aws_iam_user" "hw4" {
  name = "jisoo"
}

resource "aws_iam_user" "hw5" {
  name = "jihyo"
}
resource "aws_iam_user" "hw6" {
  name = "sana"
}
resource "aws_iam_user" "hw7" {
  name = "momo"
}
resource "aws_iam_user" "hw8" {
  name = "dahyun"
}

resource "aws_iam_group" "blackpink" {
  name = "blackpink"
}

resource "aws_iam_group" "twice" {
  name = "twice"
}

resource "aws_iam_group_membership" "blackpink" {
  name = "blackpink"

  users = [
    aws_iam_user.hw1.name,
    aws_iam_user.hw2.name,
    aws_iam_user.hw3.name,
    aws_iam_user.hw4.name,
    aws_iam_user.hw9.name,
  ]

  group = aws_iam_group.blackpink.name
}

resource "aws_iam_group_membership" "twice" {
  name = "twice"

  users = [
    aws_iam_user.hw5.name,
    aws_iam_user.hw6.name,
    aws_iam_user.hw7.name,
    aws_iam_user.hw8.name,
    aws_iam_user.hw10.name,
  ]

  group = aws_iam_group.twice.name
}
resource "aws_iam_user" "hw9" {
    name = "miyeon"
}
resource "aws_iam_user" "hw10" {
    name = "mina"
}
/*
terraform import aws_iam_user.hw9 miyeon
terraform import aws_iam_user.hw10 mina
*/