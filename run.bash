#!/bin/bash
set -vx

#http://stackoverflow.com/questions/59895/can-a-bash-script-tell-which-directory-it-is-stored-in
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

logfile="./output.$(date -u +%Y%m%d.%H%M%S)utc.log"

time ./maintenance.yaml | tee ${logfile}

echo data written to ${logfile}
