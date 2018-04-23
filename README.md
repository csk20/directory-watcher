# directory-watcher
## instructions use
### CentOS or RHEL
This script is based on `inotify-tools` to install it

inotify-tools is available through the EPEL repository. Install EPEL :

`sudo yum install -y epel-release`

and then

`sudo yum update`

if you using Amazon Linux on EC2 execute this command

`sudo yum-config-manager --enable epel`

then install to tools

`yum install inotify-tools`

now open script and configure which directory you want to watch

example 

`mavenrepo=/home/krish/.m2`

set script as executable

`chmod +x kwatch.sh`

now run the script

`./kwatch.sh`

all good. now it will create log for any file change.

## Todo
you can use this script to copy newly added files to somewhere or anything. it can catch what happend to the file such as created updated or deleted. or can do any kind of process
as example lets consider you need to get GAV of newly added pom file

`groupId=$(grep -v '\[' <(mvn help:evaluate -Dexpression="project.groupId"));
artifactId=$(grep -v '\[' <( mvn help:evaluate -Dexpression="project.artifactId"));
version=$(grep -v '\[' <( mvn help:evaluate -Dexpression="project.version"));
echo  "$groupId";
echo "$artifactId";
echo "$version"`

but to do this you need to use `if` statement to figureout which file added



