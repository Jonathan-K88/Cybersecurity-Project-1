#!/usr/bin/env bash


hourFind="$1" #user inputs hour including AM/PM

fileFind="/03-student/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$2_Dealer_schedule"  #user inputs four digit date for the beginning of a file

read -n1 -p "Which game? [1, 2, 3]" whichgame #user inputs the number associated with each casino game
 if [ "$whichgame" == 1 ];
 then
   grep "$hourFind" "$fileFind" | awk '{print "\n" $1, $2, $3, $4}'
 elif [ "$whichgame" == 2 ];
 then
   grep "$hourFind" "$fileFind" | awk '{print "\n" $1, $2, $5, $6}'
 elif [ "$whichgame" == 3 ];
 then
   grep "$hourFind" "$fileFind" | awk '{print "\n" $1, $2, $7, $8}'
 else
  echo "No game selected"
fi
