# here is all text related command also vim text editor:-

1. write something on a text file using echo directly:
```
$ echo hello world > my_File.txt

```
2. you can copy a text file from another file using echo command:
```
$ echo < my_file.txt > > my_File2.txt

```
3. : environment variable by echo:
```
$ echo $VARIABLE
$ echo $USER
$ echo $HOME
$ env 
$ echo $PATH
$ VARIABLE_NAME = variable_value
$ unset                           [remove a variable]
$ export Variable = value         [set value of an environment variable]

```
4. cut something from text cut command:
```
$ cut -c 5-10 fileName.txt    [5-10 word index number mention]

```
5. using paste command to concatenate text file:
```
$ paste -s fileName.txt
$ paste -d ' ' -s fileName.txt [for space indentation]

```
6. to show any log file or file from head or sorting use head command:
```
$ head /var/logs/keybagd.log.0   [you see only the head part of the log file]
$ head -n 10 /var/logs/keybagd.log.0    [you can see exact 10th number of line just sorting by using -n]

```
7. to show any log file or file from tail or sorting use tail command:
```
$ tail /var/logs/keybagd.log.0   [you see only the tail part of the log file]
$ tail -n 10 /var/logs/keybagd.log.0    [you can see exact 10th number of line just sorting by using -n]
$ tail -f /var/logs/keybagd.log.0 

```
8. make two file join by join command:
```
$ vim file1.txt
$ vim file2.txt
$ join file1.txt file2.txt

```
9. sorting some text file by using sort:
```
$ sort fileName.txt
$ sort -r fileName.txt   [ reverse sorting ]

```
10. upercase to lower case by using tr command :
```
$ tr A-Z a-z

```
11. sorting by using uniq command for unique word:
```
$ uniq fileNAme.txt

```
12. word and line count from a log or text file by using wc and nl command :
```
$ wc fileName.txt or PATH 
$ nl fileName.txt or PATH

```
13. to sort anything in any file or directory we use `grep` command:
```
$ grep fox sampole.txt   [grep find fox from this file]
$ grep -i FOX sample.txt   [ this -i is getting for case insensitive result]
$ env | grep -i Users         [you can use grep with pipe(|) for more sorting] [you get only User info]

```

# here is all command and shortcuts for text editor vim:

14. go and write file with vim editor:
```
$ vi fileName.extention
$ vim fileName.extention

```
15. to write file in vim do insert mode by uing `i` in the keyboard:
```
$ press i button

```
16. if you search something unique just use `/` :
```
$ /searchWordName
$ go up to down press n
$ down to up press N

```
17. vim short cuts :
```
$ O -- for insert text on previous line
$ o -- for insert text on the next lien 
$ a -- for append text after the cursor 
$ A -- for append text at the end oif the line
$ x -- for cut the selected text also for deleting characters 
$ dd - for delete the current line 
$ y -- copy whatever is selected 
$ yy - copy the current line 
$ p -- paste the copied text before the cursor
$ :w - write and save file
$ :wq - write save and quite from vim
$ :q -- quite from vim
$ :q! - quite out from vim without saving
$ u -- undo your last action
$ ZZ - for :wq but more faster
$ Ctrl+r - redo your last action

```



