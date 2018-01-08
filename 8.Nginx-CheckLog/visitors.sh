#! /bin/bash

check_log(){
  DATE_IN=$1
  MONTH=$(echo $DATE_IN | awk -F'-' '{print $3}')
  DAY=$(echo $DATE_IN | awk -F'-' '{print $2}')
  YEAR=$(echo $DATE_IN | awk -F'-' '{print $1}')
  DATE_LOG=''
  ACCESS_FILE='/var/log/nginx/access.log'

  LANG=en_US

  DATE_LOG=$(date -d ${YEAR}-${MONTH}-${DAY} +%d/%b/%y)

  echo $DATE_LOG

  echo "Number of visitors"
  grep $DATE_LOG $ACCESS_FILE | wc -l

  echo "Hits | IP Address"
  grep $DATE $ACCESS_FILE | awk '{print $1}' | sort | uniq -c | sort -nr | limit 10
}

help() {
  echo "Sintaxis: visitors.sh 'Year-Day-Month'"
  echo "Example: visitors.sh '2018-08-01'"
}

case $1 in
  --help )
    help
    ;;
  * )
    check_log $1
  ;;
esac
