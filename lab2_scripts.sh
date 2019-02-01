#!/bin/bash
# Authors : Andrew Oliver
# Date: 2/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "File Name: $0"
echo "Command Line Argument 1: $1"
echo "Command Line Argument 2: $2"

echo "Input a file name"
read file

echo "Input a regular expression"
read exp

grep $exp $file

echo "Number of phone numbers: "
grep -o '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]' $2 | wc -l

echo "Number of emails: "
grep -o @ $2 |wc -l

grep '^[3][0][3]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]' $2 > phone_results.txt
grep '@geocities.com$' $2 > email_results.txt

grep $1 $2 > command_results.txt
