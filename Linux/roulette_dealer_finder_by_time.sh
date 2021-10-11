#!/usr/bin/env bash

hourFind="$1" #user inputs hour including AM/PM

fileFind="/03-student/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$2_Dealer_schedule"  #user inputs four digit date for the beginning of a file


grep "$hourFind" "$fileFind" | awk '{print $1, $2, $5, $6}'


