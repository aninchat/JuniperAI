locals {
  hosts = toset([
    "a100",
    "storage",
    "h100",
    "headend"
  ])
}

resource "apstra_tag" "host_tags" {
    for_each    = local.hosts
    name        = each.key
    description = each.key
}
