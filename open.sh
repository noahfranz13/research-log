#!/bin/bash

# get the year, month, and day
year=$( date +%Y )
month=$( date +%m )
monthstr=$( date +%B )
day=$( date +%d )
logfile="$year/$month/$day.md"

# check if the directories exist
if [[ ! -d $year ]]; then
    mkdir $year
fi

if [[ ! -d $year/$month ]]; then
    mkdir $year/$month
fi

# if the file exists open it and exit
if [[ -e $logfile ]]; then
    emacs $logfile
    exit 1
fi

# Otherwise, make the file from the template and open it
cp template-log.txt $logfile
sed -i "s/TODAYSDATE/$monthstr $day, $year Research Log/g" $logfile
emacs $logfile
