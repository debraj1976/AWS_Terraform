resource "aws_s3_bucket" "caxntna" {
  bucket = "caxntna"
  acl = "private"
  
  tags = {
    Name = "caxntna"
 }
}

resource "aws_s3_bucket_public_access_block" "caxntna" {
  bucket = "${aws_s3_bucket.caxntna.id}"

  block_public_acls   = true
  block_public_policy = true
}
