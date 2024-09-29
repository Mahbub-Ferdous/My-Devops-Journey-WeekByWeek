# here is all process related linux command :

1. Go ahead and run the ps command to see a list of running processes:
```
$ ps

```
```
PID: Process ID
TTY: Controlling terminal associated with the process (we'll go in detail about this later)
STAT: Process status code
TIME: Total CPU usage time
CMD: Name of executable/command

```
2. another details process running command :
```
$ ps aux

```
```
USER: The effective user (the one whose access we are using)
PID: Process ID
%CPU: CPU time used divided by the time the process has been running
%MEM: Ratio of the process's resident set size to the physical memory on the machine
VSZ: Virtual memory usage of the entire process
RSS: Resident set size, the non-swapped physical memory that a task has used
TTY: Controlling terminal associated with the process
STAT: Process status code
START: Start time of the process
TIME: Total CPU usage time
COMMAND: Name of executable/command

```
3. more details if we see the running process command:
```
$ ps l

```
3. what processes are taking up a lot of your resources command niceness level of process:
```
$ top

```
```
1st line: This is the same information you would see if you ran the uptime command (more to come)

The fields are from left to right:

Current time
How long the system has been running
How many users are currently logged on
System load average (more to come)

```
```
2nd line: Tasks that are running, sleeping, stopped and zombied

```
```
3rd line: Cpu information

us: user CPU time - Percentage of CPU time spent running users’ processes that aren’t niced.
sy: system CPU time - Percentage of CPU time spent running the kernel and kernel processes
ni: nice CPU time - Percentage of CPU time spent running niced processes
id: CPU idle time - Percentage of CPU time that is spent idle
wa: I/O wait - Percentage of CPU time that is spent waiting for I/O. If this value is low, the problem probably isn’t disk or network I/O
hi: hardware interrupts - Percentage of CPU time spent serving hardware interrupts
si: software interrupts - Percentage of CPU time spent serving software interrupts
st: steal time - If you are running virtual machines, this is the percentage of CPU time that was stolen from you for other tasks

```
```
4th and 5th line: Memory Usage and Swap Usage

```
```
Processes List that are Currently in Use

PID: Id of the process
USER: user that is the owner of the process
PR: Priority of process
NI: The nice value
VIRT: Virtual memory used by the process
RES: Physical memory used from the process
SHR: Shared memory of the process
S: Indicates the status of the process: S=sleep, R=running, Z=zombie,D=uninterruptible,T=stopped
%CPU - this is the percent of CPU used by this process
%MEM - percentage of RAM used by this process
TIME+ - total time of activity of this process
COMMAND - name of the process


```
4. you can kill some process by using kill command, first you run top than get the PID:
```
$ kill PID         [PID - process ID get when you run top command]

```
5. sending a job to background :
```
$ sleep 1000 &
$ jobs                     [to see the job id what you make before]
$ bg                       [too see all job in background]

```
6. a list of all the open files and their associated process:
```
$ lsof

```
7. To view process threads, you can use:
```
$ ps m

```
8. CPU monitoring command :
```
$ uptime

```
9. we can see CPU details with I/O command :
```
$ iostat

```
```
tps - Indicate the number of transfers per second that were issued to the device. A transfer is an I/O request to the device. Multiple logical requests can be combined into a single I/O request to the device. A transfer is of indeterminate size.
kB_read/s - Indicate the amount of data read from the device expressed in kilobytes per second.
kB_wrtn/s - Indicate the amount of data written to the device expressed in kilobytes per second.
kB_read - The total number of kilobytes read.
kB_wrtn - The total number of kilobytes written.

```
10. memory monitoring command :
```
$ vmstat

```
```
procs

r - Number of processes for run time
b - Number of processes in uninterruptible sleep


memory

swpd - Amount of virtual memory used
free - Amount of free memory
buff - Amount of memory used as buffers
cache - Amount of memory used as cache


swap

si - Amount of memory swapped in from disk
so - Amount of memory swapped out to disk

io

bi - Amount of blocks received in from a block device
bo - Amount of blocks sent out to a block device

system

in - Number of interrupts per second
cs - Number of context switches per second

cpu

us - Time spent in user time
sy - Time spent in kernel time
id - Time spent idle
wa - Time spent waiting for IO

```
11. make a cronjob every day :
```
$ 00 08 * * * home/mahbub/script/change_wallpaper.sh   [here is my script path]

```
```
here three * means everyday in every month and 00 means min and 08 means 08 am

```
12. to create a cronjobs just edit a crontab:
```
$ crontab -e

```
# here is all device command :

13. listing usb devices:
```
$ lsusb

```
14. Listing PCI Devices:
```
$ lspci

```
15. Listing SCSI Devices:
```
$ lsscsi

```

# here some monitoring command :

16. if you want to see background task:
```
$ bg

```
17. Gives free hard disk space on your system:
```
$ df
$ df -h         [ -h gives you a human readable file]
# du -h        [This shows you the disk usage of the current directory you are in]
```
18. Gives free RAM on your system:
```
$ free

```