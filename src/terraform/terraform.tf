provider "aws" {
	region = "eu-central-1"
}

resource "aws_s3_bucket" "site" {
    bucket = "my-site.d2-si.eu"
    acl = "public-read"

    website {
        index_document = "index.html"
        error_document = "error.html"
    }
}