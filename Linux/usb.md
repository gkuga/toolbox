
```
usb-devices
lsusb
ls /sys/module/xhci_hcd
sudo modprobe xhci_hcd
dmesg | grep -i usb
```

usb 039 testing

```
modprobe ftdi_sio
echo ftdi_sio | sudo tee -a /etc/modules
echo 0f87 1032 | sudo tee /sys/bus/usb-serial/drivers/ftdi_sio/new_id
```
