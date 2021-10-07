resource "aws_db_instance" "main" {
  instance_class        = "db.t2.micro"
  copy_tags_to_snapshot = true
  skip_final_snapshot   = true
  max_allocated_storage = 1000
}
