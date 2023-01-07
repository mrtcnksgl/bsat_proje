#!/bin/bash


directory="/home/mertcan/bsm/test"


interval=10


log_file="/home/mertcan/takip.txt"


while true; do

  modified_files=$(find "$directory" -maxdepth 1 -mmin -1)

  deleted_files=$(find "$directory" -maxdepth 1 -mmin -1 -type f ! -newerat 1)




  if [ -n "$modified_files" ]; then
    echo "The following files have been modified or deleted in the last 1 minutes:" >> "$log_file"
    echo "$modified_files" >> "$log_file"
  fi

  echo "Date: $(date)" >> /home/mertcan/takip.txt
  echo "" >> /home/mertcan/takip.txt
  
 

    sleep "$interval"
done
