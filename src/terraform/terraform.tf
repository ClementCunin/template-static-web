variable "region" { default = "eu-central-1" }
variable "url" {}

provider "aws" {
	region = "${var.region}"
}

resource "aws_s3_bucket" "site" {
    bucket = "${var.url}"
    acl = "public-read"

    website {
        index_document = "index.html"
        error_document = "error.html"
    }
}