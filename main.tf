resource "local_file" "local_file_example" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}