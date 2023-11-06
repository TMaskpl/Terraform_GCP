resource "local_file" "ext-ip-f" {
    content  = "${google_compute_instance.vm-from-tf.network_interface.0.access_config.0.nat_ip}"
    filename = "hosts"
}



output "ext-ip" {
    value = "${google_compute_instance.vm-from-tf.network_interface.0.access_config.0.nat_ip}"
}