#!/bin/bash
# Program name: notify-send-fortune.sh
# Show a message from program fortune each minute

while [ 1 ]; do
  message=$(fortune)
  notify-send "Fortune says:" "$message"
  sleep 60
done
