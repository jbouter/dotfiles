#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9][0-9][0-9]?%')

# Set urgent flag below 5% or use orange below 20%
[ "${BAT%?}" -ge 90 ] && echo " $BAT"
[ "${BAT%?}" -ge 75 ] && echo " $BAT"
[ "${BAT%?}" -ge 50 ] && echo " $BAT"
[ "${BAT%?}" -ge 25 ] && echo " $BAT"
[ "${BAT%?}" -lt 25 ] && echo " $BAT"
[ "${BAT%?}" -le 5 ] && exit 33
[ "${BAT%?}" -le 20 ] && echo "#FF8000"

exit 0
