# Trustbox

Creating an encrypted VM image with a custom OS and software stack for working in an untrusted environment.

## Commands

Prepare a volume for the VM image:

```bash
qemu-img create -f qcow2 trustbox-ubuntu.qcow2 20G
```

Run an installer: `qemu-system-x86_64 -drive file=/opt/trustbox/cloud-init.iso,index=1,media=cdrom -cdrom /opt/trustbox/ubuntu-24.04.2-live-server-amd64.iso -vnc :0 -m 16G -smp 6 -drive file=trustbox-ubuntu.qcow2,format=qcow2 -daemonize`

Run a VM with the image: `qemu-system-x86_64 -vnc :0 -m 16G -smp 6 -drive file=trustbox-ubuntu.qcow2,format=qcow2 -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::2222-:22`
