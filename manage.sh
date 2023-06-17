#!/bin/bash

while [ "$SEL" != q ]; do
cat >&2 << MENU

 Enter a Number For Your Jop:
  1 - Create a Group
  2 - Delete a Group
  3 - Create User
  4 - Delete User
  5 - Change Password User
  6 - Show Details Of User
  7 - Enable User 
  8 - Disable User
  9 - Add User To Group
  10 - Exit
MENU
 read -p " Enter Your Number Here Please :- " SEL
 SEL=${SEL,,}
 case $SEL in
 1 ) read -p " Enter Group Name To Add :- " uname
   [ -n $uname  ] && groupadd $uname
   unset uname
   ;;

 2 ) read -p " Enter Group Name To Delete :- " uname
   [ -n $uname  ] && groupdel $uname
   unset uname
   ;;

 3 ) read -p " Enter UserName To Add :- " uname
    [ -n $uname  ] && sudo useradd $uname
    unset uname
    ;;

 4 ) read -p " Enter UserName To Delete :- " uname
    [ -n $uname  ] && sudo userdel $uname
    unset uname
    ;;
 5 ) read -p " Enter The UserName To Change His Password :- " uname
    [ -n $uname  ] && sudo passwd $uname
    unset uname
    ;;

 6 ) read -p uname
    [ -n $uname  ] && id  $uname
    unset uname
    ;;

 7 ) read -p " Enter UserName To Enable :- " uname
    [ -n $uname  ] && sudo usermod -u  $uname
    unset uname
    ;;

 8 ) read -p " Enter UserName To Disable :- " uname
    [ -n $uname  ] && sudo usermod -L  $uname
    unset uname
    ;;

 9 ) read -p " Enter UserName To Add To Group :- " uname
     read -p " Enter Group Name" uname1
        [ -n $uname1 ] && [-n $uname ] && sudo usermod -a -G $uname1   $uname
        unset uname
        unset uname1
        ;;

 10 ) exit 0
   ;;
  * ) echo " Invalid Number !"
   ;;
 esac
done