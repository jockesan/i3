OUT1=$1
OUT2=$2


#if [$OUT1 != null && $OUT2 != null ) 

xrandr --output $OUT1 --same-as  $OUT2

notify-send -t 4 "PowerPoint time!" "Monitor setup -> Mirror"
