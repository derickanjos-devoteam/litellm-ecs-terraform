# AWS Secrets Manager for API keys and sensitive data
resource "aws_secretsmanager_secret" "aws_credentials" {
  name = "litellm/aws-credentials"
  description = "AWS credentials for LiteLLM Bedrock access"
}

resource "aws_secretsmanager_secret_version" "aws_credentials" {
  secret_id = aws_secretsmanager_secret.aws_credentials.id
  secret_string = jsonencode({
    AWS_ACCESS_KEY_ID     = "access key id"
    AWS_SECRET_ACCESS_KEY = "secret access key"
  })
}