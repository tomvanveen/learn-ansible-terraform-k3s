terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.14"
    }
  }
}

provider "proxmox" {
  # Change this to your proxmox instance url or ip
  pm_api_url  = "https://proxmox.homelabxyz.duckdns.org/api2/json"
}