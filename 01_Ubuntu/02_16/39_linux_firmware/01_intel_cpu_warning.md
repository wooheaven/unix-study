# intel cpu warning  
```bash
$ sudo update-initramfs -u 
W: possible missing firmware /lib/firmware/i915/kbl_guc_ver9_14.bin for module i915
W: possible missing firmware /lib/firmware/i915/bxt_guc_ver8_7.bin for module i915
update-initramfs: Generating /boot/initrd.img-4.15.0-51-generic
```

# resolve intel cpu warnings  
```bash
$ wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915/kbl_guc_ver9_14.bin
$ wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915/bxt_guc_ver8_7.bin
$ sudo cp kbl_guc_ver9_14.bin bxt_guc_ver8_7.bin /lib/firmware/i915/
```

# ref  
```
https://askubuntu.com/questions/832524/possible-missing-frmware-lib-firmware-i915/832528#832528
```
