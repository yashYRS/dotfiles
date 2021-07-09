## DotFiles
Configuration files for my system, Will keep updating as I keep experimenting 

## Current Setup 
  
1. Terminal Used : Suckless [Terminal!](https://github.com/LukeSmithxyz/st) 
2. Status Bar : Polybar 
3. Window Manager : i3wm
4. Notification Manager : dunst 
5. Blog reader : newboat



## Potential Pitfalls

### Controlling Brightness with i3wm
`xbacklight`  may not work out of the box. In a lot of systems, a file needs to be made and stored to /usr/share/X11/ . Full instructions found  [here!](https://unix.stackexchange.com/questions/301724/xbacklight-not-working)


### Setting up Polybar

#### WiFi Connectivity 
Look at the output of `ip-link` . The output corresponding to Wifi interfacing needs to be entered in the place of interface in the  polybar config file.
```
[module/wireless-network]
type = internal/network
interface = wlp0s20f3
```

#### Font Awesome 5
Apart from installing font-awesome on your system. The Font-Awesome glyphs (both otf and svg folders) needs to be stored in appropriate locations for polybar to have access to them. A good idea is to use `fc-match` to look at where the traditional fonts are stored. For Ubuntu users  - 
1. Store the otf files in /usr/share/fonts/opentype/
2. Store the svg folders in /usr/share/font-fonts-awesome

#### Battery Status
For the Battery module, it will most likely be trying to get the charge state from a non existent battery. To fix this, 
```
# Gives you the battery and adapter class
ls -1 /sys/class/power_supply
```
Update the same in the polybar config
```
[module/battery]
type = internal/battery
full-at = 98

battery = BAT1
adapter = ACAD
```