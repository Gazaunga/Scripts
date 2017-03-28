#!/bin/bash
cd /gazbit/Music # Music library path
function video {
	echo "Processing $1"
	TITLE=`youtube-dl -J -i $1 | jq -r .title`
	if [[ ! -f "$TITLE.mp3" ]]
	then
		if youtube-dl -o "%(title)s.%(ext)s" -x --audio-format mp3 --add-metadata $1
		then
			mpc update "$TITLE.mp3" --wait
		fi
	fi
	mpc add "$TITLE.mp3"
}

function processed {
	notify-send 'YouTubeMPD' "Processed $1 songs!" -t 5000 --icon=dialog-information
}

INPUT=`zenity --entry --title="What YouTube URL to process?" --text="YouTube URL:" --width=512`

PARSE=`youtube-dl -i -J --flat-playlist "$INPUT" 2>/dev/null`
if [[ ! $? = 0 ]]
then
zenity --error --text="YTDL Failed!"
exit 1
fi
TYPE=`echo "$PARSE" | jq ._type -r`
if [[ $TYPE = "playlist" ]]
then
	URLS=`echo $PARSE | jq -r .entries | jq -r ".[] | .url"`
	TIME=`date +%s`
	PROCCESSED=0
	COUNT=`echo "$URLS" | wc -l`
	echo "$URLS" | while read -r line
	do
		(( PROCCESSED++ ))
		video "https://youtube.com/watch?v=$line"
		if (( TIME + 30 < `date '+%s'` )) 
		then
			if (command -v notify-send > /dev/null)
			then
				notify-send 'YouTubeMPD' "Processed $PROCCESSED out of $COUNT songs!" -t 2500 --icon=dialog-information
			fi
			TIME=`date +%s`
		fi
	done
	processed $PROCCESSED
else
	video $INPUT
	processed 1 
fi
