variable "access_key" {
    description = "Access key to AWS console"
    default     =    ""
    type        =    string
}

variable "secret_key" {
    description = "Secret key to AWS console"
    default     =    ""
    type        =    string
}

variable "region" {
    type              =    string
    default           =    ""

}

variable "bucket_name" {
    type              =    map
    default           =    {
        dev       = ["mohit-dev-bucket"]
        prod      = ["mohit-prod1-bucket", "mohit-prod2-bucket"]
    }

}