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

# if the file exists print an error message and exit
if [[ -e $logfile ]]; then
    echo "File already exists! Edit it directly!"
    emacs $logfile
    exit 1
fi

# make the file from the template
cp template-log.txt $logfile
sed -i "s/TODAYSDATE/$monthstr $day, $year Research Log/g" $logfile
emacs $logfile
