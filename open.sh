#!/bin/bash

Help()
{
    echo "Open todays research log"
    echo
    echo "This will, by default, open with emacs,"
    echo "you can change it with the -e (--editor) option"
    echo
    echo "Options:"
    echo "-e | --editor   The editor to use, default is emacs."
    echo "-h | --help     Display this help message."
    echo
}

editor=""
while [ $# -gt 0 ]; do
  case "$1" in
    -e|--editor) editor="$2"; shift 2 ;;
    -h|--help) Help; exit ;;
    *) echo "Invalid option: $1" >&2; exit 1 ;;
  esac
done

if [[ -z $editor ]]; then
    editor="emacs"
fi

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
    $editor $logfile
    exit 1
fi

# Otherwise, make the file from the template and open it
cp template-log.txt $logfile
sed -i "s/TODAYSDATE/$monthstr $day, $year Research Log/g" $logfile
$editor $logfile
