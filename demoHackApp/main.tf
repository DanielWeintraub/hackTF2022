resource "aws_s3_bucket" "b" {
  bucket = format("dweintraub-hack2022-%s", var.name)

  tags = {
    Name        = var.name
    Environment = "hack"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
