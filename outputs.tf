output "arn" {
  value = "${local.arn}"
}

output "listener_arn" {
  value = "${element(concat(aws_lb_listener.listener.*.arn, list("")), 0)}"
}

output "lb_dns_name" {
  value = "${var.type == "application" ? aws_lb.application.dns_name : aws_lb.network.dns_name}"
}
