resource "local_file" "myfile" {
  filename = "dummy.txt"
  content = "This is a dummy file"
  file_permission = "0660"
}