#!/bin/bash

# get the year, month, and day
year=$( date +%Y )
month=$( date +%m )
monthstr=$( date +%B )
day=$( date +%d )
file="$year/$month/$day.md"

# start xcowsay
xcowsay -t 0 --cow-size large --monitor 0 "write something in your research log" &

# keep xcowsay up until the file is saved
now=$(date +%s)
mod_dt=3600 # modified in the last hour
while :
do
    mod_date=$(date -r $file +%s)
    if [ $mod_date -ge $((now - mod_dt)) ]
    then
	# close xcowsay
	proc=$(pidof xcowsay)
	echo $proc
	kill $proc

	# push these changes to github
	git add .
	git commit -m "newest updates to $file"
	git push

	# and then we can exit this file
	break
    fi
done
