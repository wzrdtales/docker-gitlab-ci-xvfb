#!/bin/bash

Xvfb :99 -ac &
kill_xvfb=$!
sleep 1

exec $@

wait

kill $kill_xvfb
exit $?
