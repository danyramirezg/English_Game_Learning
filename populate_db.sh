#!/bin/bash
# populate the database EGL on user, topic and word tables with the
# passed argument file name
sudo mysql -u root -p EGL < "$1"
