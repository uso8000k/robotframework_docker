#!/bin/bash

# Init
RESOL="1280x800x24"
DISPLAY=":"99
PREF_DIR="/opt"
WORK_DIR="$PREF_DIR/robots"
BROWSER="Firefox"

# Start Xvfb
Xvfb ${DISPLAY} -screen 0 ${RESOL} &
export DISPLAY=${DISPLAY}

# Exec robot
cd $WORKDIR
robot  --variable BROWSER:${BROWSER}  --outputdir ${PREF_DIR}/outputs ${WORK_DIR}/test.robot
