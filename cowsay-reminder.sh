#!/bin/bash

# get the year, month, and day
year=$( date +%Y )
month=$( date +%m )
monthstr=$( date +%B )
day=$( date +%d )
file="$year/$month/$day.md"

# we need to do this from the script directory, otherwise the git stuff wont't work
SCRIPT_DIR=$(dirname $0)
echo "Moving to $SCRIPT_DIR"
cd $SCRIPT_DIR

# start xcowsay
xcowsay -t 0 --cow-size large --monitor 0 "write something in your research log" &

# keep xcowsay up until the file is saved
now=$(date +%s)
mod_dt=3600 # modified in the last hour
time_lim=7200
while :
do
    mod_date=$(date -r $file +%s)
    curr_time=$(date +%s)

    # if the file has been modified then close the cow and push commits
    # or if the current time is more than 2 hours after the script started we can also
    # kill the cow and move on
    if [ $mod_date -ge $((now - mod_dt)) ] || [ $curr_time -ge $(( now + 7200 )) ] 
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
