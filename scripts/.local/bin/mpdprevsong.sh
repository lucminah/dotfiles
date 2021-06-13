#!/bin/sh

test=$(mpc | grep -Eo '[0-9]+:[0-9][0-9]/' | sed 's|\([0-9].*\):\([0-9][0-9]\)/|\1\2|')
if [ "$test" -ge 5 ]; then
 mpc seek 0
else
 mpc prev
fi
