resource "local_file" "myfile" {
  filename = upper(replace(var.filename,"m","p"))
  content = lower(var.filecontent)
  file_permission = var.file_permission
}