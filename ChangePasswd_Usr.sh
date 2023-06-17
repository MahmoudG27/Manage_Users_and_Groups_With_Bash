#!/bin/bash

read -p " Enter The UserName To Change His Password :- " uname
    sudo passwd $uname
    unset uname