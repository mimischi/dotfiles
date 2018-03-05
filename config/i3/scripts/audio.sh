full=""
short=""
color=""
status=0

CEILING="${BLOCK_INSTANCE%/*}"
CEILING="${CEILING:-100}"

STEP="${BLOCK_INSTANCE#*/}"
STEP="${STEP:-5}"


getVolume() {
	  ponymix get-volume
}


isMuted() {
	  ponymix is-muted
}


case $BLOCK_BUTTON in

	  # right click
	  # mute/unmute
	  3) ponymix toggle >/dev/null ;;

	  # scroll up
	  # raise volume
	  4) ponymix --max-volume $CEILING increase $STEP >/dev/null ;;

	  # scroll down
	  # lower volume
	  5) ponymix --max-volume $CEILING decrease $STEP >/dev/null ;;

esac


vol=`getVolume`

# determine icon
if [ $vol -eq 0 ] || isMuted; then
	  icon=""
else
	  if [ $vol -le 33 ]; then
		    icon=""
	  else
		    icon=""
	  fi
fi

determine mute status
if isMuted; then
	  color="#8a8a8a"
fi

full="$icon $vol%"
short="$vol"

echo $full
echo $short
echo $color
exit $status
