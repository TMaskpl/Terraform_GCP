data "cloudflare_zone" "this" {
  name = var.dns_zone
}

resource "cloudflare_record" "vm-instance" {
  zone_id = data.cloudflare_zone.this.id
  name    = "vm-instance"
  value   = "${google_compute_instance.vm-from-tf.network_interface.0.access_config.0.nat_ip}"
  type    = "A"
  proxied = false
}
