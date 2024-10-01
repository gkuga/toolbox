usb-devices
lsusb
ls /sys/module/xhci_hcd
sudo modprobe xhci_hcd
dmesg | grep -i usb
