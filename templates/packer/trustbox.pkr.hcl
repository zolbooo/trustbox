source "qemu" "trustbox" {
  accelerator  = "none"
  communicator = "none"

  iso_checksum = "{{ iso_checksum }}"
  iso_url      = "{{ iso_url }}"

  cd_files = ["/opt/trustbox/cloud-init.iso"]
  cd_label = "cloud-init"

  boot_wait    = "10s"
  boot_command = ["e"]
}

build {
  sources = ["source.qemu.trustbox"]
}
