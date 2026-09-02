# The hardware

You know it, computers are extremely powerful for those who can hold them. But as much as they can be forcible, they have limits.
The first thing that can be act as a wall for our cybersecurity lab is the hardware. If we don't have the minimal performances, setting up VM's (virtual machines) is
complicated, even impossible.

## Recommended hardware

- CPU : 8 cores is very confortable.
- RAM : 8 Gb is possible, but 16+ is much more confortable, even for the possibility of expanding your lab.
- Disk : SSD NVMe is the hard drive par excellence for a sweet experience, but is technically not a requirement, a SSD SATA does the work.
However, I recommend having at least 50 Gb of storage in your disk.

# What is a virtual machine ? 

Virtual Machines are at the core of the modern Internet technology. They can be used in many different ways : administrating servers, testing malwares... and also learning.
We cannot do mistakes on our real PC because it is fatal. So, for training, the best way is to use VM's.
A VM is simply like a computer in a computer. Typically, an OS (Operating System, like Windows, Linux, etc...) is installed in a virtual machine to make the vm usable, 
and it is managed by what is called a hypervisor.
In this way, we can learn how systems and actual technologies work, without taking the risk of damaging our host OS.

# What is a hypervisor ? 

A hypervisor is a logical program that manage VM's. It take the responsibility to isolate VM's from the host, to virtually simulating the CPU, the disk, the  RAM... and to 
provide an interface for accessing and using the VM's.

## There is 2 types of hypervisor:

- Bare-metal : the hypervisor is directyly installed on the hardware. Examples like Proxmox, VMware ESXi, Microsoft Hyper-V, Xen or KVM.
- Hosted : the hypervisor is installed in an existing OS. It is the way we are going to proceed. The most popular are VirtualBox & VMware Workstation.

---

Personally I was using VirtualBox in the beginning of my course, because it is free and very good hypervisor, but actually i am using VMware Workstation Pro because it has
become free since the Broadcom Inc. acquired it (as long as we only use it for personal use, not for a commercial utility or others). You can see THIS video 
if you want to install VMware, or THIS if you want VirtualBox. Videos will be more simple than just reading a step-by-step installation here, for you and for me.

# The Guest OS 

The Guest OS is the OS that will be installed in the VM. It is almost the same process as installing an OS on a real machine.
The first step before installing your VM's OS is to choose one. For now, we are going to use 2 Linux distributions :
- Kali Linux
- Ubuntu Server

Next, we have to download the .iso file on the distributions download page :

- For Ubuntu, go at https://ubuntu.com/download/desktop and download the latest version.
If you want the server version, much light but less intuitive, go at https://ubuntu.com/download/server.
- For Kali Linux, you can download the .iso file at https://www.kali.org/get-kali/#kali-installer-images. Download the Installer Image and make sure it is a .iso file.

Once downloaded (it may take little time), you can set them into any folder specific for .iso file 
(or not, it's your choice, but i recommend at least a folder for regrouping VM's and .iso, it's more clear for our mind)



