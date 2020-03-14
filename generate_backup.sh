#!/bin/bash
# generate a sql dump for user, topic and word tables in the EGL database
sudo mysqldump EGL myapp_user myapp_word myapp_topic > "$1"
