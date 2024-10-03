# How to Automate Scripts by Scheduling via cron Jobs:

Cron is a job scheduling utility present in Unix like systems. You can schedule jobs to execute daily, weekly, monthly or in a specific time of the day. Automation in Linux heavily relies on cron jobs like network troubleshooting, process managment,cpu and memory management day to day same time.

Below is the syntax to schedule crons:

``` * * * * * sh /path/to/script.sh ```

`sh` represents that the script is a bash script and should be run from `/bin/bash`.
`/path/to/script.sh` specifies the path to script

Here, * represents minute(s) hour(s) day(s) month(s) weekday(s), respectively.

1. 1th (*) for : minutes -> 0-59
2. 2nd (*) for : hour    -> 0-24
3. 3rd (*) for : date    -> 1-31
4. 4th (*) for : month   -> 1-12
5. 5th (*) for : days    -> 0-6   [0 is for sunday]

`5 0 8 : at 00.05 in august`
`5 4 6 : at 4.05 on sunday `
`0 22 1-5 : At 22:00 on every day-of-week from Monday through Friday.`
# most important crontab command:

1. edits crontab entries to add, delete, or edit cron jobs:
`$ crontab -e`
2. list all the cron jobs for the current user:
`$ crontab -l`
3. list another user's crons:
`crontab -u userName -l`
4. edit another user's crons:
`crontab -u username -e`





