output "website_url" {
  description = "URL of the static website"
  value       = aws_s3_bucket_website_configuration.site_config.website_endpoint
}

output "cloudfront_url" {
  description = "CloudFront HTTPS URL"
  value       = "https://${aws_cloudfront_distribution.static_site_cdn.domain_name}"
}

output "cloudfront_alarm_name" {
  value = aws_cloudwatch_metric_alarm.cloudfront_5xx_alarm.alarm_name
}

output "sns_topic_arn" {
  value = aws_sns_topic.alert_topic.arn
}

