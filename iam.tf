resource "aws_iam_role" "my_infra" {
  name = "my-infra-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy" "my_infra" {
  name = "my-infra-policy"
  role = aws_iam_role.my_infra.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:DescribeInstances",
          "ec2:DescribeTags",
          "s3:ListBucket",
          "s3:GetObject",
          "dynamodb:Scan"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_instance_profile" "my_infra" {
  name = "my-infra-iam-profile"
  role = aws_iam_role.my_infra.name
}
