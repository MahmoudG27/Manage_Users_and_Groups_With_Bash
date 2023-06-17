#!/bin/bash

read -p " Enter UserName To Add :- " uname
    sudo useradd $uname
    unset uname