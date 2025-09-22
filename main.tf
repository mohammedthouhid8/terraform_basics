terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

resource "local_file" "example1" {
  content  = "ex1!"
  filename = "${path.module}/${var.filename_1}.txt"
  count = var.count_num
}

resource "local_file" "example2" {
  content  = "ex2!"
  filename = "${path.module}/${var.filename_2}.md"
  count = var.count_num
}

resource "local_file" "example3" {
  content  = "ex3!"
  filename = "${path.module}/${var.filename_3}.demo"
  count = var.count_num
}