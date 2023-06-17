#!/bin/bash

read -p " Enter UserName To Add To Group :- " uname
read -p " Enter Group Name :- " uname1
    sudo usermod -a -G $uname1   $uname
    unset uname
    unset uname1