resource "proxmox_vm_qemu" "cloudinit-vm1" {
  name          = "yoshi"
  desc          = "A test using terraform and cloudinit"
  target_node   = "pve"
  clone         = var.vm-name

# The destination resource pool for the new VM
#  pool         = "pool0"

# Activate QEMU agent for this VM
  agent = 1
  
  bios = "ovmf"

  cores   = 2
  sockets = 1
  memory  = 4096
  scsihw = "virtio-scsi-pci"
  
  # Setup the disk    
      disk {
        size = "20G"
        type = "scsi"
        storage = "local-zfs"
        # storage_type = "rbd"
        # iothread = 1
        # ssd = 1
        # discard = "on"
    }
    # Setup the network interface and assign a vlan tag: 256
    network {
        model = "virtio"
        bridge = "vmbr0"
        # tag = 256
    }

    ipconfig0 = "ip=dhcp"


}

resource "proxmox_vm_qemu" "cloudinit-vm2" {
  name          = "bowser"
  desc          = "A test using terraform and cloudinit"
  target_node   = "pve"
  clone         = var.vm-name

# The destination resource pool for the new VM
#  pool         = "pool0"

# Activate QEMU agent for this VM
  agent = 1

   bios = "ovmf"

  cores   = 2
  sockets = 1
  memory  = 4096
  scsihw = "virtio-scsi-pci"
  
  # Setup the disk    
      disk {
        size = "20G"
        type = "scsi"
        storage = "local-zfs"
        # storage_type = "rbd"
        # iothread = 1
        # ssd = 1
        # discard = "on"
    }
    # Setup the network interface and assign a vlan tag: 256
    network {
        model = "virtio"
        bridge = "vmbr0"
        # tag = 256
    }

    ipconfig0 = "ip=dhcp"


}

resource "proxmox_vm_qemu" "cloudinit-vm3" {
  name          = "mario"
  desc          = "A test using terraform and cloudinit"
  target_node   = "pve"
  clone         = var.vm-name

# The destination resource pool for the new VM
#  pool         = "pool0"

# Activate QEMU agent for this VM
  agent = 1

 bios = "ovmf"  

  cores   = 2
  sockets = 1
  memory  = 4096
  scsihw = "virtio-scsi-pci"
  
  # Setup the disk    
      disk {
        size = "20G"
        type = "scsi"
        storage = "local-zfs"
        # storage_type = "rbd"
        # iothread = 1
        # ssd = 1
        # discard = "on"
    }
    # Setup the network interface and assign a vlan tag: 256
    network {
        model = "virtio"
        bridge = "vmbr0"
        # tag = 256
    }

    ipconfig0 = "ip=dhcp"


}