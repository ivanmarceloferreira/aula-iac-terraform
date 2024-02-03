resource "aws_s3_bucket" "meu_bucket" {
  bucket = "aula-ivan-02022004"
  acl = "private"

  versioning {
    enabled = true
  }
}