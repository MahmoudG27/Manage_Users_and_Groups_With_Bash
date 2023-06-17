#!/bin/bash

read -p " Enter Group Name To Delete :- " uname
   sudo groupdel $uname
   unset uname