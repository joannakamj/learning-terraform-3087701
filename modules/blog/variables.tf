variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "filter for AMI"

  type=object {
    name=string
    owners=string
  }

  default={
    name="bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owners="979382823631"
  }
  }

variable "environment" {
  description = "blog environment"

  type=object {
    name=string
    network_prefix=string
  }

  default={
    name="dev"
    network_prefix="10.0"
  }
}

variable "asg_min_size" {
  description="minimum number of instances"

  default=1
}

variable "asg_max_size" {
  description="maximum number of instances"

  default=2
}