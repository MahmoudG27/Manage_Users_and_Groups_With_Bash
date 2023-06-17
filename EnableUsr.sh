#!/bin/bash

read -p " Enter UserName To Enable :- " uname
    sudo usermod -u  $uname
    unset uname