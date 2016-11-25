#!/bin/bash

if ! pgrep Xvfb
then
  Xvfb :99 -ac &
fi
