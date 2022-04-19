#!/bin/bash
awk '!seen[$0]++' $1
exit 0