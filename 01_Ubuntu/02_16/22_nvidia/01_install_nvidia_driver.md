# ref
```
https://linuxconfig.org/how-to-install-the-latest-nvidia-drivers-on-ubuntu-16-04-xenial-xerus
http://www.nvidia.com/Download/index.aspx
```

# Verify VGA
```
lspci | grep -i nvidia
```

# search (not download just find out Version)
```
http://www.nvidia.com/download/driverResults.aspx/128737/en-us
```

# install nvidia-384
```
sudo apt-get install nvidia-384
```

# real log
```
ubuntu@ubuntu:~$ lspci | grep -i nvidia
01:00.0 3D controller: NVIDIA Corporation GM107M [GeForce GTX 950M] (rev a2)

ubuntu@ubuntu:~$ sudo apt-get install nvidia-384
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  adwaita-icon-theme apg aptdaemon aspell aspell-en at-spi2-core avahi-daemon avahi-utils bbswitch-dkms binutils bluez bluez-obexd build-essential cheese-common colord colord-data cpp cpp-5 cracklib-runtime cups-pk-helper dbus-x11 dconf-cli dconf-gsettings-backend
  dconf-service desktop-file-utils dictionaries-common diffstat dkms dpkg-dev emacsen-common enchant evolution-data-server evolution-data-server-common evolution-data-server-online-accounts fakeroot fontconfig fontconfig-config fonts-dejavu-core g++ g++-5 gcc gcc-5
  gcc-5-base gcr gdisk geoclue geoclue-ubuntu-geoip gettext gir1.2-atk-1.0 gir1.2-freedesktop gir1.2-gdkpixbuf-2.0 gir1.2-gnomekeyring-1.0 gir1.2-gtk-3.0 gir1.2-ibus-1.0 gir1.2-notify-0.7 gir1.2-packagekitglib-1.0 gir1.2-pango-1.0 gkbd-capplet glib-networking
  glib-networking-common glib-networking-services gnome-bluetooth gnome-desktop3-data gnome-keyring gnome-menus gnome-power-manager gnome-screensaver gnome-session-bin gnome-settings-daemon-schemas gnome-user-guide gnome-user-share gsettings-desktop-schemas
  gsettings-ubuntu-schemas gstreamer1.0-clutter-3.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-x gvfs gvfs-backends gvfs-common gvfs-daemons gvfs-libs hardening-includes hicolor-icon-theme humanity-icon-theme hunspell-en-us hwdata ibus ibus-gtk
  ibus-gtk3 im-config indicator-applet indicator-application indicator-bluetooth indicator-datetime indicator-keyboard indicator-messages indicator-power indicator-session indicator-sound intltool-debian ippusbxd iputils-arping lib32gcc1 libaa1 libaccount-plugin-1.0-0
  libaccount-plugin-generic-oauth libaccount-plugin-google libaccounts-glib0 libaccounts-qt5-1 libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libappindicator3-1 libapt-pkg-perl libarchive-zip-perl libarchive13 libasan2 libasound2
  libasound2-data libasound2-plugins libaspell15 libasprintf-dev libassuan0 libasyncns0 libatasmart4 libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data libatomic1 libatspi2.0-0 libauthen-sasl-perl libavahi-client3 libavahi-common-data libavahi-common3 libavahi-core7
  libavahi-glib1 libavc1394-0 libbluetooth3 libboost-filesystem1.58.0 libboost-system1.58.0 libc-dev-bin libc6 libc6-dev libc6-i386 libcaca0 libcairo-gobject2 libcairo2 libcamel-1.2-54 libcanberra-gtk3-0 libcanberra-gtk3-module libcanberra-pulse libcanberra0
  libcapnp-0.5.3 libcc1-0 libcdio-cdda1 libcdio-paranoia1 libcdio13 libcdparanoia0 libcgi-fast-perl libcgi-pm-perl libcgmanager0 libcheese-gtk25 libcheese8 libcilkrts5 libclass-accessor-perl libclone-perl libclutter-1.0-0 libclutter-1.0-common libclutter-gst-3.0-0
  libclutter-gtk-1.0-0 libcogl-common libcogl-pango20 libcogl-path20 libcogl20 libcolord2 libcolorhug2 libcrack2 libcroco3 libcuda1-384 libcups2 libdaemon0 libdata-alias-perl libdatrie1 libdbusmenu-glib4 libdbusmenu-gtk3-4 libdconf1 libdigest-hmac-perl
  libdouble-conversion1v5 libdpkg-perl libdrm-amdgpu1 libdrm-common libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdrm2 libdv4 libebackend-1.2-10 libebook-1.2-16 libebook-contacts-1.2-2 libecal-1.2-19 libedata-book-1.2-25 libedata-cal-1.2-28 libedataserver-1.2-21
  libegl1-mesa libemail-valid-perl libenchant1c2a libencode-locale-perl libepoxy0 libevdev2 libexif12 libexporter-tiny-perl libfakeroot libfcgi-perl libfcitx-config4 libfcitx-gclient0 libfcitx-utils0 libfftw3-single3 libfile-basedir-perl libfile-fcntllock-perl libflac8
  libfontconfig1 libfontenc1 libgbm1 libgcc-5-dev libgck-1-0 libgcr-3-common libgcr-base-3-1 libgcr-ui-3-1 libgd3 libgdata-common libgdata22 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libgee-0.8-2 libgeoclue0 libgeocode-glib0 libgeonames0 libgettextpo-dev libgettextpo0
  libgl1-mesa-dri libgl1-mesa-glx libglapi-mesa libglib2.0-bin libgnome-bluetooth13 libgnome-desktop-3-12 libgnome-keyring-common libgnome-keyring0 libgnome-menu-3-0 libgnomekbd-common libgnomekbd8 libgoa-1.0-0b libgoa-1.0-common libgomp1 libgphoto2-6 libgphoto2-l10n
  libgphoto2-port12 libgraphite2-3 libgstreamer-plugins-base1.0-0 libgstreamer-plugins-good1.0-0 libgstreamer1.0-0 libgtk-3-0 libgtk-3-bin libgtk-3-common libgtk2.0-0 libgtk2.0-bin libgtk2.0-common libgtop-2.0-10 libgtop2-common libgudev-1.0-0 libgusb2 libgweather-3-6
  libgweather-common libharfbuzz-icu0 libharfbuzz0b libhtml-parser-perl libhtml-tagset-perl libhttp-date-perl libhttp-message-perl libhunspell-1.3-0 libhyphen0 libibus-1.0-5 libical1a libice6 libido3-0.1-0 libiec61883-0 libieee1284-3 libimobiledevice6 libindicator3-7
  libinput-bin libinput10 libio-html-perl libio-pty-perl libio-socket-inet6-perl libio-socket-ssl-perl libio-string-perl libipc-run-perl libipc-system-simple-perl libisl15 libitm1 libjack-jackd2-0 libjansson4 libjavascriptcoregtk-4.0-18 libjbig0 libjpeg-turbo8 libjpeg8
  libjson-glib-1.0-0 libjson-glib-1.0-common liblcms2-2 libldb1 liblightdm-gobject-1-0 liblist-moreutils-perl libllvm5.0 liblsan0 liblwp-mediatypes-perl libmailtools-perl libmbim-glib4 libmbim-proxy libmirclient9 libmircommon7 libmircore1 libmirprotobuf3 libmm-glib0
  libmpc3 libmpx0 libmtdev1 libmtp-common libmtp-runtime libmtp9 libnautilus-extension1a libndp0 libnet-dns-perl libnet-domain-tld-perl libnet-ip-perl libnet-libidn-perl libnet-smtp-ssl-perl libnet-ssleay-perl libnih-dbus1 libnm-glib4 libnm-gtk-common libnm-gtk0
  libnm-util2 libnm0 libnma-common libnma0 libnotify4 libnspr4 libnss-mdns libnss3 libnss3-nssdb liboauth0 libogg0 libopus0 liborc-0.4-0 libp11-kit-gnome-keyring libpackagekit-glib2-16 libpam-gnome-keyring libpanel-applet0 libpango-1.0-0 libpangocairo-1.0-0
  libpangoft2-1.0-0 libpangoxft-1.0-0 libparse-debianchangelog-perl libpciaccess0 libpcre16-3 libpcsclite1 libperlio-gzip-perl libpixman-1-0 libplist3 libprotobuf-lite9v5 libproxy1v5 libpulse-mainloop-glib0 libpulse0 libpulsedsp libpwquality-common libpwquality1
  libpython-stdlib libpython2.7 libpython2.7-minimal libpython2.7-stdlib libqmi-glib1 libqmi-proxy libqt5core5a libqt5dbus5 libqt5gui5 libqt5network5 libqt5opengl5 libqt5printsupport5 libqt5qml5 libqt5quick5 libqt5sql5 libqt5sql5-sqlite libqt5svg5 libqt5webkit5
  libqt5widgets5 libqt5xml5 libquadmath0 libraw1394-11 librest-0.7-0 librsvg2-2 librsvg2-common libsamplerate0 libsane libsane-common libsecret-1-0 libsecret-common libsensors4 libshout3 libsignon-extension1 libsignon-glib1 libsignon-plugins-common1 libsignon-qt5-1
  libsm6 libsmbclient libsndfile1 libsocket6-perl libsoup-gnome2.4-1 libsoup2.4-1 libspeex1 libspeexdsp1 libstdc++-5-dev libstdc++6 libsub-name-perl libtag1v5 libtag1v5-vanilla libtalloc2 libtdb1 libtevent0 libtext-levenshtein-perl libthai-data libthai0 libtheora0
  libtiff5 libtimedate-perl libtimezonemap-data libtimezonemap1 libtsan0 libtxc-dxtn-s2tc0 libubsan0 libudisks2-0 libunistring0 libunity-control-center1 libunity-settings-daemon1 libupower-glib3 liburi-perl liburl-dispatcher1 libusbmuxd4 libv4l-0 libv4lconvert0
  libvdpau1 libvisual-0.4-0 libvorbis0a libvorbisenc2 libvorbisfile3 libvpx3 libwacom-bin libwacom-common libwacom2 libwavpack1 libwayland-client0 libwayland-cursor0 libwayland-egl1-mesa libwayland-server0 libwbclient0 libwebkit2gtk-4.0-37 libwebkit2gtk-4.0-37-gtk2
  libwebp5 libwebrtc-audio-processing-0 libx11-xcb1 libxaw7 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-present0 libxcb-randr0 libxcb-render-util0 libxcb-render0 libxcb-shape0 libxcb-shm0 libxcb-sync1 libxcb-util1
  libxcb-xfixes0 libxcb-xkb1 libxcomposite1 libxcursor1 libxdamage1 libxfixes3 libxfont1 libxft2 libxi6 libxinerama1 libxkbcommon-x11-0 libxkbcommon0 libxkbfile1 libxklavier16 libxmu6 libxnvctrl0 libxpm4 libxrandr2 libxrender1 libxshmfence1 libxslt1.1 libxt6 libxtst6
  libxv1 libxxf86dga1 libxxf86vm1 libyaml-libyaml-perl libyelp0 lightdm lintian linux-libc-dev make manpages-dev mesa-vdpau-drivers mobile-broadband-provider-info modemmanager mountall mousetweaks nautilus-data network-manager network-manager-gnome network-manager-pptp
  notification-daemon nvidia-opencl-icd-384 nvidia-prime nvidia-settings ocl-icd-libopencl1 p11-kit p11-kit-modules patchutils pinentry-gnome3 pkg-config policykit-1-gnome ppp pptp-linux pulseaudio pulseaudio-module-x11 pulseaudio-utils python python-minimal
  python-talloc python2.7 python2.7-minimal python3-aptdaemon python3-aptdaemon.pkcompat python3-bs4 python3-cairo python3-cups python3-cupshelpers python3-defer python3-html5lib python3-lxml python3-xdg python3-xkit qttranslations5-l10n rtkit samba-libs
  screen-resolution-extra session-migration signon-keyring-extension signon-plugin-oauth2 signon-plugin-password signon-ui signon-ui-service signon-ui-x11 signond sound-theme-freedesktop system-config-printer-common system-config-printer-gnome system-config-printer-udev
  t1utils ubuntu-mono ubuntu-system-service ubuntu-touch-sounds udisks2 unity-control-center unity-control-center-faces unity-control-center-signon unity-greeter unity-settings-daemon upower upstart usb-modeswitch usb-modeswitch-data usbmuxd vdpau-driver-all wamerican
  wpasupplicant x11-common x11-utils x11-xkb-utils xfonts-base xfonts-encodings xfonts-utils xserver-common xserver-xorg xserver-xorg-core xserver-xorg-input-all xserver-xorg-input-evdev xserver-xorg-input-synaptics xserver-xorg-input-vmmouse xserver-xorg-input-wacom
  xserver-xorg-legacy yelp yelp-xsl
Suggested packages:
  aspell-doc spellutils avahi-autoipd bumblebee binutils-doc colord-sensor-argyll cpp-doc gcc-5-locales debian-keyring evolution evolution-data-server-dbg g++-multilib g++-5-multilib gcc-5-doc libstdc++6-5-dbg gcc-multilib autoconf automake libtool flex bison gdb
  gcc-doc gcc-5-multilib libgcc1-dbg libgomp1-dbg libitm1-dbg libatomic1-dbg libasan2-dbg liblsan0-dbg libtsan0-dbg libubsan0-dbg libcilkrts5-dbg libmpx0-dbg libquadmath0-dbg gettext-doc autopoint apache2-bin libapache2-mod-dnssd samba-common hunspell
  openoffice.org-hunspell | openoffice.org-core ibus-clutter ibus-doc ibus-qt4 click powerd unity-system-compositor zenity unity-greeter-session-broadcast lrzip alsa-utils libgssapi-perl glibc-doc libcanberra-gtk0 libgles2-mesa | libgles2 cups-common libdv-bin
  oss-compat libenchant-voikko fcitx libfftw3-bin libfftw3-dev libgd-tools gphoto2 libvisual-0.4-plugins gstreamer1.0-tools libdata-dump-perl libusbmuxd-tools jackd2 liblcms2-utils avahi-autoipd | zeroconf opus-tools libhtml-template-perl libxml-simple-perl pcscd
  libqt5libqgtk2 qt5-image-formats-plugins qtwayland5 libraw1394-doc librsvg2-bin hplip libsane-extras sane-utils lm-sensors speex libstdc++-5-doc libwww-perl url-dispatcher bindfs binutils-multiarch libtext-template-perl make-doc nautilus
  network-manager-openconnect-gnome network-manager-openvpn-gnome network-manager-vpnc-gnome network-manager-pptp-gnome pinentry-doc pavumeter pavucontrol paman paprefs python-doc python-tk python2.7-doc binfmt-support python3-genshi python3-lxml-dbg python-lxml-doc
  python3-smbc reiserfsprogs exfat-utils libcanberra-gtk-module x11-xserver-utils lightdm-remote-session-freerdp lightdm-remote-session-uccsconfigure remote-login-service metacity | x-window-manager graphviz upstart-monitor comgt wvdial libvdpau-va-gl1
  nvidia-vdpau-driver nvidia-legacy-340xx-vdpau-driver wpagui libengine-pkcs11-openssl mesa-utils xfonts-100dpi | xfonts-75dpi xfonts-scalable gpointing-device-settings touchfreeze xinput
The following NEW packages will be installed:
  adwaita-icon-theme apg aptdaemon aspell aspell-en at-spi2-core avahi-daemon avahi-utils bbswitch-dkms binutils bluez bluez-obexd build-essential cheese-common colord colord-data cpp cpp-5 cracklib-runtime cups-pk-helper dbus-x11 dconf-cli dconf-gsettings-backend
  dconf-service desktop-file-utils dictionaries-common diffstat dkms dpkg-dev emacsen-common enchant evolution-data-server evolution-data-server-common evolution-data-server-online-accounts fakeroot fontconfig fontconfig-config fonts-dejavu-core g++ g++-5 gcc gcc-5 gcr
  gdisk geoclue geoclue-ubuntu-geoip gettext gir1.2-atk-1.0 gir1.2-freedesktop gir1.2-gdkpixbuf-2.0 gir1.2-gnomekeyring-1.0 gir1.2-gtk-3.0 gir1.2-ibus-1.0 gir1.2-notify-0.7 gir1.2-packagekitglib-1.0 gir1.2-pango-1.0 gkbd-capplet glib-networking glib-networking-common
  glib-networking-services gnome-bluetooth gnome-desktop3-data gnome-keyring gnome-menus gnome-power-manager gnome-screensaver gnome-session-bin gnome-settings-daemon-schemas gnome-user-guide gnome-user-share gsettings-desktop-schemas gsettings-ubuntu-schemas
  gstreamer1.0-clutter-3.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-x gvfs gvfs-backends gvfs-common gvfs-daemons gvfs-libs hardening-includes hicolor-icon-theme humanity-icon-theme hunspell-en-us hwdata ibus ibus-gtk ibus-gtk3 im-config
  indicator-applet indicator-application indicator-bluetooth indicator-datetime indicator-keyboard indicator-messages indicator-power indicator-session indicator-sound intltool-debian ippusbxd iputils-arping lib32gcc1 libaa1 libaccount-plugin-1.0-0
  libaccount-plugin-generic-oauth libaccount-plugin-google libaccounts-glib0 libaccounts-qt5-1 libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libappindicator3-1 libapt-pkg-perl libarchive-zip-perl libarchive13 libasan2 libasound2
  libasound2-data libasound2-plugins libaspell15 libasprintf-dev libassuan0 libasyncns0 libatasmart4 libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data libatomic1 libatspi2.0-0 libauthen-sasl-perl libavahi-client3 libavahi-common-data libavahi-common3 libavahi-core7
  libavahi-glib1 libavc1394-0 libbluetooth3 libboost-filesystem1.58.0 libboost-system1.58.0 libc-dev-bin libc6-dev libc6-i386 libcaca0 libcairo-gobject2 libcairo2 libcamel-1.2-54 libcanberra-gtk3-0 libcanberra-gtk3-module libcanberra-pulse libcanberra0 libcapnp-0.5.3
  libcc1-0 libcdio-cdda1 libcdio-paranoia1 libcdio13 libcdparanoia0 libcgi-fast-perl libcgi-pm-perl libcgmanager0 libcheese-gtk25 libcheese8 libcilkrts5 libclass-accessor-perl libclone-perl libclutter-1.0-0 libclutter-1.0-common libclutter-gst-3.0-0 libclutter-gtk-1.0-0
  libcogl-common libcogl-pango20 libcogl-path20 libcogl20 libcolord2 libcolorhug2 libcrack2 libcroco3 libcuda1-384 libcups2 libdaemon0 libdata-alias-perl libdatrie1 libdbusmenu-glib4 libdbusmenu-gtk3-4 libdconf1 libdigest-hmac-perl libdouble-conversion1v5 libdpkg-perl
  libdrm-amdgpu1 libdrm-common libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdv4 libebackend-1.2-10 libebook-1.2-16 libebook-contacts-1.2-2 libecal-1.2-19 libedata-book-1.2-25 libedata-cal-1.2-28 libedataserver-1.2-21 libegl1-mesa libemail-valid-perl libenchant1c2a
  libencode-locale-perl libepoxy0 libevdev2 libexif12 libexporter-tiny-perl libfakeroot libfcgi-perl libfcitx-config4 libfcitx-gclient0 libfcitx-utils0 libfftw3-single3 libfile-basedir-perl libfile-fcntllock-perl libflac8 libfontconfig1 libfontenc1 libgbm1 libgcc-5-dev
  libgck-1-0 libgcr-3-common libgcr-base-3-1 libgcr-ui-3-1 libgd3 libgdata-common libgdata22 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libgee-0.8-2 libgeoclue0 libgeocode-glib0 libgeonames0 libgettextpo-dev libgettextpo0 libgl1-mesa-dri libgl1-mesa-glx libglapi-mesa
  libglib2.0-bin libgnome-bluetooth13 libgnome-desktop-3-12 libgnome-keyring-common libgnome-keyring0 libgnome-menu-3-0 libgnomekbd-common libgnomekbd8 libgoa-1.0-0b libgoa-1.0-common libgomp1 libgphoto2-6 libgphoto2-l10n libgphoto2-port12 libgraphite2-3
  libgstreamer-plugins-base1.0-0 libgstreamer-plugins-good1.0-0 libgstreamer1.0-0 libgtk-3-0 libgtk-3-bin libgtk-3-common libgtk2.0-0 libgtk2.0-bin libgtk2.0-common libgtop-2.0-10 libgtop2-common libgudev-1.0-0 libgusb2 libgweather-3-6 libgweather-common
  libharfbuzz-icu0 libharfbuzz0b libhtml-parser-perl libhtml-tagset-perl libhttp-date-perl libhttp-message-perl libhunspell-1.3-0 libhyphen0 libibus-1.0-5 libical1a libice6 libido3-0.1-0 libiec61883-0 libieee1284-3 libimobiledevice6 libindicator3-7 libinput-bin
  libinput10 libio-html-perl libio-pty-perl libio-socket-inet6-perl libio-socket-ssl-perl libio-string-perl libipc-run-perl libipc-system-simple-perl libisl15 libitm1 libjack-jackd2-0 libjansson4 libjavascriptcoregtk-4.0-18 libjbig0 libjpeg-turbo8 libjpeg8
  libjson-glib-1.0-0 libjson-glib-1.0-common liblcms2-2 libldb1 liblightdm-gobject-1-0 liblist-moreutils-perl libllvm5.0 liblsan0 liblwp-mediatypes-perl libmailtools-perl libmbim-glib4 libmbim-proxy libmirclient9 libmircommon7 libmircore1 libmirprotobuf3 libmm-glib0
  libmpc3 libmpx0 libmtdev1 libmtp-common libmtp-runtime libmtp9 libnautilus-extension1a libndp0 libnet-dns-perl libnet-domain-tld-perl libnet-ip-perl libnet-libidn-perl libnet-smtp-ssl-perl libnet-ssleay-perl libnih-dbus1 libnm-glib4 libnm-gtk-common libnm-gtk0
  libnm-util2 libnm0 libnma-common libnma0 libnotify4 libnspr4 libnss-mdns libnss3 libnss3-nssdb liboauth0 libogg0 libopus0 liborc-0.4-0 libp11-kit-gnome-keyring libpackagekit-glib2-16 libpam-gnome-keyring libpanel-applet0 libpango-1.0-0 libpangocairo-1.0-0
  libpangoft2-1.0-0 libpangoxft-1.0-0 libparse-debianchangelog-perl libpciaccess0 libpcre16-3 libpcsclite1 libperlio-gzip-perl libpixman-1-0 libplist3 libprotobuf-lite9v5 libproxy1v5 libpulse-mainloop-glib0 libpulse0 libpulsedsp libpwquality-common libpwquality1
  libpython-stdlib libpython2.7 libpython2.7-minimal libpython2.7-stdlib libqmi-glib1 libqmi-proxy libqt5core5a libqt5dbus5 libqt5gui5 libqt5network5 libqt5opengl5 libqt5printsupport5 libqt5qml5 libqt5quick5 libqt5sql5 libqt5sql5-sqlite libqt5svg5 libqt5webkit5
  libqt5widgets5 libqt5xml5 libquadmath0 libraw1394-11 librest-0.7-0 librsvg2-2 librsvg2-common libsamplerate0 libsane libsane-common libsecret-1-0 libsecret-common libsensors4 libshout3 libsignon-extension1 libsignon-glib1 libsignon-plugins-common1 libsignon-qt5-1
  libsm6 libsmbclient libsndfile1 libsocket6-perl libsoup-gnome2.4-1 libsoup2.4-1 libspeex1 libspeexdsp1 libstdc++-5-dev libsub-name-perl libtag1v5 libtag1v5-vanilla libtalloc2 libtdb1 libtevent0 libtext-levenshtein-perl libthai-data libthai0 libtheora0 libtiff5
  libtimedate-perl libtimezonemap-data libtimezonemap1 libtsan0 libtxc-dxtn-s2tc0 libubsan0 libudisks2-0 libunistring0 libunity-control-center1 libunity-settings-daemon1 libupower-glib3 liburi-perl liburl-dispatcher1 libusbmuxd4 libv4l-0 libv4lconvert0 libvdpau1
  libvisual-0.4-0 libvorbis0a libvorbisenc2 libvorbisfile3 libvpx3 libwacom-bin libwacom-common libwacom2 libwavpack1 libwayland-client0 libwayland-cursor0 libwayland-egl1-mesa libwayland-server0 libwbclient0 libwebkit2gtk-4.0-37 libwebkit2gtk-4.0-37-gtk2 libwebp5
  libwebrtc-audio-processing-0 libx11-xcb1 libxaw7 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-present0 libxcb-randr0 libxcb-render-util0 libxcb-render0 libxcb-shape0 libxcb-shm0 libxcb-sync1 libxcb-util1 libxcb-xfixes0
  libxcb-xkb1 libxcomposite1 libxcursor1 libxdamage1 libxfixes3 libxfont1 libxft2 libxi6 libxinerama1 libxkbcommon-x11-0 libxkbcommon0 libxkbfile1 libxklavier16 libxmu6 libxnvctrl0 libxpm4 libxrandr2 libxrender1 libxshmfence1 libxslt1.1 libxt6 libxtst6 libxv1
  libxxf86dga1 libxxf86vm1 libyaml-libyaml-perl libyelp0 lightdm lintian linux-libc-dev make manpages-dev mesa-vdpau-drivers mobile-broadband-provider-info modemmanager mountall mousetweaks nautilus-data network-manager network-manager-gnome network-manager-pptp
  notification-daemon nvidia-384 nvidia-opencl-icd-384 nvidia-prime nvidia-settings ocl-icd-libopencl1 p11-kit p11-kit-modules patchutils pinentry-gnome3 pkg-config policykit-1-gnome ppp pptp-linux pulseaudio pulseaudio-module-x11 pulseaudio-utils python python-minimal
  python-talloc python2.7 python2.7-minimal python3-aptdaemon python3-aptdaemon.pkcompat python3-bs4 python3-cairo python3-cups python3-cupshelpers python3-defer python3-html5lib python3-lxml python3-xdg python3-xkit qttranslations5-l10n rtkit samba-libs
  screen-resolution-extra session-migration signon-keyring-extension signon-plugin-oauth2 signon-plugin-password signon-ui signon-ui-service signon-ui-x11 signond sound-theme-freedesktop system-config-printer-common system-config-printer-gnome system-config-printer-udev
  t1utils ubuntu-mono ubuntu-system-service ubuntu-touch-sounds udisks2 unity-control-center unity-control-center-faces unity-control-center-signon unity-greeter unity-settings-daemon upower upstart usb-modeswitch usb-modeswitch-data usbmuxd vdpau-driver-all wamerican
  wpasupplicant x11-common x11-utils x11-xkb-utils xfonts-base xfonts-encodings xfonts-utils xserver-common xserver-xorg xserver-xorg-core xserver-xorg-input-all xserver-xorg-input-evdev xserver-xorg-input-synaptics xserver-xorg-input-vmmouse xserver-xorg-input-wacom
  xserver-xorg-legacy yelp yelp-xsl
The following packages will be upgraded:
  gcc-5-base libc6 libdrm2 libstdc++6
4 upgraded, 606 newly installed, 0 to remove and 93 not upgraded.
Need to get 292 MB of archives.
After this operation, 1,331 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
```
