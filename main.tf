resource "aws_iam_user" "first_user" {
  name = var.iam_user_name
  path = var.user_path
  tags = var.iam_user_tags
}

resource "aws_iam_group" "this" {
  name = var.iam_group_name

  depends_on = [
    aws_iam_user.first_user
  ]
}

resource "aws_iam_group_membership" "developer_list" {
  name  = var.group_membership_name
  users = [aws_iam_user.first_user.name]
  group = aws_iam_group.this.name 
}
