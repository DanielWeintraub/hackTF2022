resource "aws_s3_bucket" "b" {
  bucket = format("dweintraub-hack2022-%s", var.bucket_suffix)

  tags = {
    Instance    = var.bucket_suffix
    Environment = "hack"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
