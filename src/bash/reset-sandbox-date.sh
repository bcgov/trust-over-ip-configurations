#!/usr/bin/env bash

# Is this the back half of the month?
if [[ $(date +%d) -ge 15 ]]
then
  day="1st"
  month=$(date +%B -d "1 month")
else
  day="15th"
  month=$(date +%B)
fi

# If it's the 1st but next year, we need to increment the year
if [[ $day == "1st" && $month == "January" ]]
then
  year=$(date +%Y -d "1 year")
else
  year=$(date +%Y)
fi

echo "This environment will reset on $month $day, $year."