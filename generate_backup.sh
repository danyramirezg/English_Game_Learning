#!/bin/bash
# generate a sql dump for topic and word tables in the EGL database
sudo mysqldump EGL myapp_word myapp_topic > "$1"
