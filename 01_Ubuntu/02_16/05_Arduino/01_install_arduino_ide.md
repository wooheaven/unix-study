# Download the Arduino IDE 
[Download Link](ttps://www.arduino.cc/en/Main/Software)  

# uncompress
```{bash}
$ cd /opt
$ tree
.
└── arduino-1.8.8-linux64.tar.xz

0 directories, 1 file

$ xz -d arduino-1.8.8-linux64.tar.xz 
$ tree
.
└── arduino-1.8.8-linux64.tar

0 directories, 1 file

$ tar xf arduino-1.8.8-linux64.tar 
$ tree -L 2
.
├── arduino-1.8.8
│   ├── arduino
│   ├── arduino-builder
│   ├── arduino-linux-setup.sh
│   ├── examples
│   ├── hardware
│   ├── install.sh
│   ├── java
│   ├── lib
│   ├── libraries
│   ├── reference
│   ├── revisions.txt
│   ├── tools
│   ├── tools-builder
│   └── uninstall.sh
└── arduino-1.8.8-linux64.tar

9 directories, 7 files
```

# install
```{bash}
$ cd arduino-1.8.8
$ ./install.sh 
Adding desktop shortcut, menu item and file associations for Arduino IDE... done!

$ cat ~/Desktop/arduino-arduinoide.desktop 
[Desktop Entry]
Type=Application
Name=Arduino IDE
GenericName=Arduino IDE
Comment=Open-source electronics prototyping platform
Exec=/opt/arduino-1.8.8/arduino
Icon=arduino-arduinoide
Terminal=false
Categories=Development;IDE;Electronics;
MimeType=text/x-arduino;
Keywords=embedded electronics;electronics;avr;microcontroller;
StartupWMClass=processing-app-Base
```

# connect usb computer to arduino then Verify
```{bash}
# Click Verify on Arduino IDE
# Sketch uses 930 bytes (2%) of program storage space. Maximum is 32256 bytes.
# Global variables use 9 bytes (0%) of dynamic memory, leaving 2039 bytes for local variables. Maximum is 2048 bytes.
# avrdude: ser_open(): can't open device "/dev/ttyACM0": Permission denied
# An error occurred while uploading the sketch

$ ll /dev/ttyACM0 
crw-rw---- 1 root dialout 166, 0  1월  8 16:52 /dev/ttyACM0

$ sudo usermod -aG tty rwoo
$ sudo usermod -aG dialout rwoo

# Click Verify on Arduino IDE
# Sketch uses 930 bytes (2%) of program storage space. Maximum is 32256 bytes.
# Global variables use 9 bytes (0%) of dynamic memory, leaving 2039 bytes for local variables. Maximum is 2048 bytes.
```
