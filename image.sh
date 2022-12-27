#while getopts ":f" opt; do
#  case ${opt} in
#    f ) 
#				#      ;;
#    \? ) echo "Usage: cmd [-h] [-t]"
#      ;;
#  esac
#done

#!/bin/bash
# example_args.sh
final="feh"
while [ $# -gt 0 ] ; do
  case $1 in
    -f | --full) 
				final="$final --auto-zoom --full-screen"
		;;
    -p | --path) 
				final="$final $2"
		;;
		-s | --search)
				final="fzf | $final -f-"
		;;
  esac
  shift
done

#echo $final
#if [ "$final"=="feh --auto-zoom --full-screen" ]; then
#		echo "Usage: image [-f] -p | -s"
#		echo "-f | --full \t fullscreen"
#		echo "-p | --path \t path to the file"
#		echo "-s | --search \t search using fzf"
#else
#		echo $final
#fi

echo $final
eval "$final"
