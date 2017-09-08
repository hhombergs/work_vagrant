# Work example Environment
This is a helper repository to automagically set up your Work example system.


## Prerequisites
These packages must be installed and available globally in your shell

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [Virtualbox](https://www.virtualbox.org/manual/ch02.html)
- [Vagrant](http://docs.vagrantup.com/v2/installation/)
- [Node.js + npm](https://docs.npmjs.com/getting-started/installing-node)
- [PHP >= 7.1 + Composer](https://getcomposer.org/doc/00-intro.md)


## Get started
### Under Linux
First get a copy of the environment repository
```
git clone https://github.com/hhombergs/work_vagrant.git
```
Now initialize your environment. Let's say we want to install it into  `~/work_example`
```bash
    ~$ cd work_vagrant
    ~/work_vagrant$ ./scripts/host/init.sh ~/work_example
    ~/work_vagrant$ echo "echo \"127.0.0.1 work.example\" >> /etc/hosts" | sudo sh
```
If you don't see any severe errors, you're good to go.
```
    ~/work_vagrant$ vagrant up
```
and your work example environment should be available under  <http://work.example:8080/>

### Under Windows
Basically the same as Linux, but instead of:
```bash
    ~/work_vagrant# ./scripts/host/init.sh ~/work.example
```
you do:
```bash
    ~/work_vagrant# ./scripts/host/init.bat c:\work.example
```



## Main Vagrant Commands

These commands have to be run inside the work_vagrant repo/folder

- `vagrant up` - Starts the vagrant machine
- `vagrant halt` - Stops it
- `vagrant destroy` - Kills the machine and deletes all files created by vagrant
- `vagrant ssh`- Login on virtual machine via SSH
