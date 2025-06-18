# Trustbox

Creating an encrypted VM image with a custom OS and software stack for working in an untrusted environment.

## Commands

Build a VM: `cd /opt/trustbox && packer build vm.pkr.hcl`

Run a VM with the image: `qemu-system-x86_64 -vnc :0 -m 16G -smp 6 -drive file=trustbox-ubuntu.qcow2,format=qcow2 -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::2222-:22`
