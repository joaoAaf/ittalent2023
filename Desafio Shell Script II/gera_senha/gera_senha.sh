#!/bin/bash

echo "Tamnho da senha:"
read num
pass=`</dev/random tr -dc A-Za-z0-9 | head -c${num}`
echo "$pass"