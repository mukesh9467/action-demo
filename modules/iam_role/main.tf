resource "aws_iam_role" "this" {
  name = "example-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name = "Demo EC2 Role"
  }
}

resource "aws_iam_policy" "this" {
  name        = "DemoEC2Policy"
  description = "A policy to allow EC2 access to S3"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Action    = [
          "s3:ListBucket",
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject"
        ]
        Resource  = [
          "arn:aws:s3:::mymsplanet03",
          "arn:aws:s3:::mymsplanet03/*"
        ]
      }
    ]
  })
}