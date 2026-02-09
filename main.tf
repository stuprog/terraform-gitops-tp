terraform {
  required_version = ">= 1.5.0"
}

resource "local_file" "inventory_dynamic" {
  filename = "ansible_inputs/inventory.yaml"

  content = <<EOT
inventory:
%{for idx, server in var.server_data~}
  vm${idx + 1}:
    name: ${server.name}
    ip: ${server.ip}
%{endfor~}
EOT
}
