echo - | awk "{printf \"%.1f\",                     
$((                                                                                                                 
  $(cat /sys/class/power_supply/BAT1/power_now) * 
  $(cat /sys/class/power_supply/BAT1/voltage_now) 
)) / 1000000000000 }" ; echo " W"
