# here is all server management command in linux :

1. to start any service in linux there have 2 ways `service` and `systemctl`:
```
$ sudo service SERVICENAME start         [service name like httpd,mySQL etc]
$ sudo systemctl start SERVICENAME

```
2. to stop any service in linux :
```
$ sudo service SERVICENAME stop
# sudo systemctl stop SERVICENAME

```
3. restart any stop service again :
```
$ sudo service SERVICENAME restart
$ sudo systemctl restart SERVICENAME 

```
4. to check any service up and running or not :
```
$ sudo service SERVICENAME status
$ sudo systemctl status SERVICENAME
$ sudo systemctl is-active SERVICENAME 
$ sudo systemctl show SERVICENAME

```

# here is all download related linux command :

1. install some software we use `apt` and `yum` here `all yum command for RPM like centOS, alpine etc`:
```
$ sudo apt install AppName
$ sudo yum install appName

```
2. remove any app from your local linux machine :
```
$ sudo apt remove appName
$ sudo yum erase appName

```
3. get update and upgrade:
```
$ sudo apt update 
$ sudo apt upgrade
$ sudo yum update 

```
4. get any install package info:
```
$ sudo apt show appName
$ sudo yum info appName

```
5. download something from remote server or internet we use `curl` and `wget`:
```
$ curl downloadLink        [curl https://www.baeldung.com/] {curl show output in console}
$ wget downloadLink        [wget https://www.baeldung.com/] {wget download it into a file}
```
6. to compress a file in linux by .gz extention:
```
$ gzip myCompressFile

```
7. to decompress a file in linux from .gz extended file:
```
$ gunzip myfileName.gz

```
8. tar file with .tar extention :
```
$ tar cvf mytarFile.tar myDestinyFile      [here cvf's c stand for create]
$ tar xvf mytarFile.tar                    [here xvf's x stand for extract]
```
9. dpkg and rpm:
```
$ dpkg -i some_deb_ubuntu_package.deb   [for install debian and ubuntu package file]
$ rpm -i some_centOs_alpine_rpm_package.rpm    [for install redhat package file]
$ dpkg -r some_deb_ubuntu_package.deb    [remove file]
$ rpm -e some_centOs_alpine_rpm_package.rpm   [remove file]

```
10. list install packages in ubuntu debian and redhat:
```
$ dpkg -l       [for ubuntu and debian]
$ rpm -qa       [for red hat centOS,alpine ]

```


