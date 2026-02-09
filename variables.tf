variable "server_data" {
  description = "Liste des serveurs pour générer inventory.yaml"
  type = list(object({
    name = string
    ip   = string
  }))
}
