# learn-ansible-terraform-k3s

After watching a video by @techno-tim where he creates a virtual machine template in proxmox with Ubuntu cloud images/init I wanted to try this myself and get some hands on experience with ansible, terraform and kubernetes (k3s).

In this repo you can find my first attempt at writing a ansible playbook that will create a VM template with the Ubuntu jammy cloud image. Create you inventory file in the ansible folder and run the playbook to give it a try. 

After the template is created terraform can be used to created VMs that will use the settings from the template 

As a final step I run the k3s ansible playbook to install k3s on my freshly created VMs. 


Use the terraform proxmox module with username and password

export PM_USER="terraform-prov@pve"
export PM_PASS="password"


References:

* https://technotim.live/posts/cloud-init-cloud-image/
* https://registry.terraform.io/modules/sdhibit/cloud-init-vm/proxmox/latest/examples/ubuntu_single_vm
* https://registry.terraform.io/providers/Telmate/proxmox/latest/docs 

ToDo:

* check out the ansible provider in terraform 