locals {
  timestamp = "${replace("${timestamp()}", "/[- TZ :]", "")}"
}