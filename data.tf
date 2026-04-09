data "aws_availability_zones" "available" {
    state = "available"
}
 # This is very important aws_database_group_name
data "aws_vpc" "default" {
    default = true
}
data "aws_route_table" "main" {
    vpc_id = data.aws_vpc.default.id
    filter {
      name = "association.main"
      values = ["true"]
    }
}