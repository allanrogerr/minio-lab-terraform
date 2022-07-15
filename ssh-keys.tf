resource "tls_private_key" "gen_ssh_key" {
  algorithm   = "RSA"
  rsa_bits = "4096"
}

resource "local_file" "ssh_key" {
  filename = "./files/private-key.pem"
  content = tls_private_key.gen_ssh_key.private_key_pem
  file_permission = "0600"
}