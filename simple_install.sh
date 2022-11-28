#!/bin/bash 
# Tools needs for Udemy course: CMake, Tests and Tooling for C/C++ Projects

function must_sudo() 
{
	if [[ $(id -u) -ne 0 ]];
	then
		echo "Usage: sudo $0";
		echo "Bye.";
		exit 1;
	fi;
}

function do_upgrade()
{
	sudo apt-get update;
	sudo apt-get upgrade -y;
}

function do_install()
{
	sudo apt-get install -y $1
	if [[ $? -ne 0 ]];
	then
		echo "Failed to install: $1";
		exit;
	fi;
}


must_sudo;
do_upgrade;
do_install 'build-essential';
do_install gcc;
do_install g++;
do_install gdb;
do_install make;
do_install cmake;
do_install git;
do_install doxygen;
do_install python3;
do_install python3-pip;
do_install lcov;
do_install gcovr;
do_install ccache;
do_install cppcheck;
do_install clang-format;


