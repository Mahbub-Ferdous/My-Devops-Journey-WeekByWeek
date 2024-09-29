# here is all linux user management and permission command :- 

1. use sudo command to see some confidential or root user access file:
```
$ cat /var/etc/shadow         [you cant see access denied]
$ sudo cat /var/etc/shadow        [noew you can see]
$ sudo cat /var/etc/passwd
$ sudo cat /var/etc/group

```
2. add some user by using useradd command:
```
$ sudo useradd userName

```
3. delete some user by using userdel command:
```
$ sudo userdel userName

```
4. cahnging some user password :
```
$ sudo passwd userName

```
5. if we want to know our ssh key :
```
$ cat ~/.ssh/id_rsa.pub

```
6. connect your machine with remote machine via ssh :
```
$ ssh -i "key-pair_fileName_PATH ubuntu@ip_address    [ubuntu or any os]

```
7. something copy from remote server:
```
$ scp -i <keypair_PATH> < keypair_PATH> <user@ip_address>: filePath 

```
# here all linux permission command:

8. check file permission:
```
$ ls -l

```
9. to change any file permission by using chmod(rwx):
```
$ chmod +x fileName            [make executable file]
$ chmod +rwx fileName          [ make permission read,write, executable]
$ chmod -rwx fileName          [ remove all permission]
$ chmod -x fileName            [remove executable permission]

```
10. we can give permission by using numaric command like 777:
```
Description: for read - 4, write - 2, execute -1. all together 7. for 777 means 1st 7 for user, 2nd for group and 3rd for all user

$ chmod 777 fileName    [all permission for user,group and all]
$ chmod 742 fileName    [all permission for user, read for group, write for all]
$ chmod 124 fileName    [execute permission for user, write for group, read for all]
$ chmod 711 fileName    [ all permission for user, execute for groups and all]

```
11. modifying ownership permission :

```
$ sudo chown userName fileName    [it will change files user ownership]
$ sudo chgrp groupName fileName    [it will change files group ownership]
$ sudo chmod userName:groupName fileName     [it will change both user & group ownership]

```
12. if you want to change your user password:
```
$ passwd

```
13. to see our system name :
```
$ uname

```
15. to see our system name and details:
```
$ uname -a
$ uname -r     [to check only version numaric ]

```
16. add a user to a group :
```
$ sudo usermod -a -g groupName userName

```
17. remove a user from a group:
```
$ sudo deluser userName groupName

```
18. Shows information of all the users logged in:
```
$ finger

```
19. show information of a particular user:
```
$ finger userName

```

