#!/bin/bash

if [ -f "kibana.pid" ]; then
  kill -9 `cat kibana.pid`
fi

rm kibana.pid
mv ../logs/kibana.log ../logs/kibana.log.`date +"%Y%m%d%H%M%S"`
