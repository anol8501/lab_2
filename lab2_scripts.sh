#!/bin/bash
# Authors : Andrew Oliver
# Date: 2/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Number of phone numbers: "
grep -o '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]' regex_practice.txt | wc -l

echo "Number of emails: "
grep -o @ regex_practice.txt |wc -l

grep '^[3][0][3]' regex_practice.txt > phone_results.txt
grep '@geocities.com$' regex_practice.txt > email_results.txt

echo "Enter an expression: "
read input
grep $input regex_practice.txt > command_results.txt
