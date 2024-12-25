output "lb_dns_name" {
  description = "DNS name of the load balancer"
  value       = aws_lb.this.dns_name
}

output "tg_arn" {
  description = "ARN of the target group"
  value       = aws_lb_target_group.this.arn
}

output "listener_arn" {
  description = "ARN of the load balancer listener"
  value       = aws_lb_listener.this.arn
}
