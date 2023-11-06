resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits = "4096"
}

resource "local_file" "public_key" {
  filename        = "server_public_openssh"
  content         = trimspace(tls_private_key.ssh_key.public_key_openssh)
  file_permission = "0400"
}

resource "local_sensitive_file" "private_key" {
  filename = "server_private_openssh"
  # IMPORTANT: Newline is required at end of open SSH private key file
  content         = tls_private_key.ssh_key.private_key_openssh
  file_permission = "0400"
}