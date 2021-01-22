#!/bin/bash

FILE="'$(pwd)/results.txt'"

unzip -o nc.zip
cut -f 1-15 results_pct_20201103.txt > results.txt
psql -f results.sql --set file=$FILE
