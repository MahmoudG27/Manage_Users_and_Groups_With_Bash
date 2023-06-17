#!/bin/bash

read -p " Enter UserName To Delete :- " uname
    sudo userdel $uname
    unset uname