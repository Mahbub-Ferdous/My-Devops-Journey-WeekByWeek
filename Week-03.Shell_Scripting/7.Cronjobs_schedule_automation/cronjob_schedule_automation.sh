#! /bin/bash

#make a date-script.sh file 

echo `date` >> date-output.txt

# make this file executabel:

chmod 774 date-script.sh

# add this in crontab for every minutes:

crontab -e 

#and paste this line:
*/1 * * * * sh date-script.shFilePath


#now do cat in date-output.txt you will see all the output