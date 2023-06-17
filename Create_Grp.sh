#!/bin/bash

read -p " Enter Group Name To Add :- " uname
    sudo groupadd $uname
    unset uname