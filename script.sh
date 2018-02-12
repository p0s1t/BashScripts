#!bin/bash

declare -a emails
declare -a client
declare -a agents
declare -a phone
declare -a rental
declare -a day1
declare -s day2

$client=( $(awk '{print $1}' ./Documents/data.txt)

$email=( $(awk '{print $2}' ./Documents/data.txt)

$rental=( $(awk '{print $3}' ./Documents/data.txt)

$agent=( $(awk '{print $4}' ./Documents/data.txt)

$phone=( $(awk '{print $5}' ./Documents/data.txt)

$day1=( $(awk '{print $6}' ./Documents/data.txt)

$day2=( $(awk '{print $7}' ./Documents/data.txt)

len < wc -l ./Documents/data.txt


t = 0;

while($t < $len){

$message = "Dear ${client[$t]},\n
\tMy name is ${agent[$t]}, and I am emailing you today to discuss arranging a meeting. You contacted us regarding a your need to find a nice place to rent in the greater Las Vegas area, and so I though we could chat by phone and discuss your best options.\n
\tI'm available this ${day1[$t]} and ${day2[$t]}, and if you'll take a brief moment to  respond to this email, or call (or text) me  at ${phone_number[$t]}, we can arrange a time to show you the rental at ${rental[$t]}.\n
\tWith great respect and appreciation, your friend,\n
\t\t\t\t ${agent[$t]}"

mail -s $message ${emails[$t]}

t = $t + 1
} # while

#eof	
