#!/bin/bash

read -p " Enter UserName To Disable :- " uname
    sudo usermod -L  $uname
    unset uname