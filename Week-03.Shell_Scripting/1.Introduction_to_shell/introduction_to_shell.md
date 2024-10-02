# Introduction to Shell and shell scripting:

If we are using any major operating system, we are indirectly interacting with the shell. While running Ubuntu, Linux Mint, or any other Linux distribution, we are interacting with the shell by using the terminal. In this article we will discuss Linux shells and shell scripting so before understanding shell scripting we have to get familiar with the following terminologies:

1. Kernel
2. Shell
3. Terminal

## What is Kernel?
The kernel is a computer program that is the core of a computer’s operating system, with complete control over everything in the system. It manages the following resources of the Linux system –

1. File management
2. Process management
3. I/O management
4. Memory management
5. Device management etc.

It is often mistaken that Linus Torvalds has developed Linux OS, but actually, he is only responsible for the development of the Linux kernel.

Complete Linux system = Kernel + GNU system utilities and libraries + other management scripts + installation scripts.

## What is Shell?

A shell is a special user program that provides an interface for the user to use operating system services. Shell accepts human-readable commands from users and converts them into something which the kernel can understand. It is a command language interpreter that executes commands read from input devices such as keyboards or from files. The shell gets started when the user logs in or starts the terminal.

## Shell is broadly classified into two categories –

1. Command Line Shell
2. Graphical shell

## Command Line Shell

Shell can be accessed by users using a command line interface. A special program called Terminal in Linux/macOS, or Command Prompt in Windows OS is provided to type in the human-readable commands such as “cat”, “ls” etc. and then it is being executed. The result is then displayed on the terminal to the user.

## Graphical Shells

Graphical shells provide means for manipulating programs based on the graphical user interface (GUI), by allowing for operations such as opening, closing, moving, and resizing windows, as well as switching focus between windows. Window OS or Ubuntu OS can be considered as a good example which provides GUI to the user for interacting with the program. Users do not need to type in commands for every action.

## There are several shells are available for Linux systems like –

1. BASH (Bourne Again SHell) – It is the most widely used shell in Linux systems. It is used as default login shell in Linux systems and in macOS. It can also be installed on Windows OS.

2. CSH (C SHell) – The C shell’s syntax and its usage are very similar to the C programming language.

3. KSH (Korn SHell) – The Korn Shell was also the base for the POSIX Shell standard specifications etc.

Each shell does the same job but understands different commands and provides different built-in functions.

The Linux command line is provided by a program called the shell. Over the years, the shell program has evolved to cater to various options.

Different users can be configured to use different shells. But most users prefer to stick with the current default shell. The default shell for many Linux distros is the GNU Bourne-Again Shell (bash). Bash is succeeded by Bourne shell `(sh)`.

When you first launch the shell, it uses a startup script located in the `.bashrc` or `.bash_profile` file which allows you to customize the behavior of the shell.

When a shell is used interactively, it displays a `$` when it is waiting for a command from the user. This is called the shell prompt.

`[username@host ~]$`

If shell is running as root, the prompt is changed to #. The superuser shell prompt looks like this:

`[root@host ~]#`

Bash is very powerful as it can simplify certain operations that are hard to accomplish efficiently with a GUI. Remember that most servers do not have a GUI, and it is best to learn to use the powers of a command line interface (CLI).

## What is a Bash Script?

A bash script is a series of commands written in a file. These are read and executed by the bash program. The program executes line by line.

For example, you can navigate to a certain path, create a folder and spawn a process inside it using the command line.

You can do the same sequence of steps by saving the commands in a bash script and running it. You can run the script any number of times.

## How Do You Identify a Bash Script? 

File extension of `.sh.`
By naming conventions, bash scripts end with a `.sh`. However, bash scripts can run perfectly fine without the sh extension.

## Scripts start with a bash bang.
Scripts are also identified with a `shebang`. `Shebang` is a combination of bash `#` and bang `!` followed the the bash shell path. This is the first line of the script. Shebang tells the shell to execute it via bash shell. Shebang is simply an absolute path to the bash interpreter.

Below is an example of the shebang statement.

```#! /bin/bash```

The path of the bash program can vary. We will see later how to identify it.

## Execution rights

Scripts have execution rights for the user executing them.

An execution right is represented by `x`. `rwx`(read, write, execute) 

## File colour

Executable scripts appear in a different colour from rest of the files and folders.

In my case, the scripts with execution rights appear as green.

## How to Create Your First Bash Script
Let's create a simple script in bash that outputs `Hello World`.

Create a file named hello_world.sh
```touch hello_world.sh```
Find the path to your bash shell.
```which bash```

In my case, the path is /bin/bash and I will include this in the `shebang`.

## Write the command.

We will `echo` "hello world" to the console.

Our script will look something like this:

`#! /usr/bin/bash`
`echo "Hello World"`

Edit the file hello_world.sh using a text editor of your choice it is vim

## Provide execution rights to your user.

Modify the file permissions and allow execution of the script by using the command below:

`chmod u+x hello_world.sh`

chmod modifies the existing rights of a file for a particular user. We are adding `+x` to user `u`.

## Run the script.

You can run the script in the following ways:

```./hello_world.sh```

```bash hello_world.sh.```

and see the output

Two ways to run scripts