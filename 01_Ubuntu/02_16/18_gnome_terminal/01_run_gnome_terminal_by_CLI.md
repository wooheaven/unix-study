```{bash}
# get window infomation
$ xwininfo

xwininfo: Please select the window about which you
          would like information by clicking the
          mouse in that window.

xwininfo: Window id: 0x3800866 "rwoo@rwoo-A610: ~/02_WorkSpace/02_Hattrick/Hattrick-Study"

  Absolute upper-left X:  176
  Absolute upper-left Y:  52
  Relative upper-left X:  0
  Relative upper-left Y:  0
  Width: 1659
  Height: 1028
  Depth: 32
  Visual: 0x81
  Visual Class: TrueColor
  Border width: 0
  Class: InputOutput
  Colormap: 0x3800009 (not installed)
  Bit Gravity State: NorthWestGravity
  Window Gravity State: NorthWestGravity
  Backing Store State: NotUseful
  Save Under State: no
  Map State: IsViewable
  Override Redirect State: no
  Corners:  +176+52  -2005+52  -2005-0  +176-0
  -geometry 183x60+166--10
```

```{bash}
# open terminal with the same size/location.
$ gnome-terminal --geometry=183x60+166--10
```

```{bash}
# open terminal with the same size/location and specific folder
$ gnome-terminal --geometry=183x60+166--10 --working-directory=/home/rwoo/02_WorkSpace/02_Hattrick/Hattrick-Study/
```
