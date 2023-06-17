#!/bin/bash 

#num=$PWD/DB_Stored
#export num

echo "-------------> Welcome $USER What Do You Need ? <-------------"

select num in Create_Grp Delete_Grp Create_Usr Delete_Usr ChangePasswd_Usr ShowDetails_Usr Enable_Usr Disable_Usr AddUsr_to_Gp Exit
do 
	case $num in 
	"Create_Grp" )
		. ./Create_Grp.sh		
	;;

	"Delete_Grp" )
		. ./Delete_Grp.sh	
	;;

	"Create_Usr" )
		. ./Create_Usr.sh
	;;

	"Delete_Usr" ) 
		. ./Delete_Usr.sh
	;;

	"ChangePasswd_Usr" ) 
		. ./ChangePasswd_Usr.sh
	;;

	"ShowDetails_Usr" ) 
		. ./ShowDetails_Usr.sh
	;;

	"Enable_Usr" ) 
		. ./EnableUsr.sh
	;;

	"Disable_Usr" ) 
		. ./DisableUsr.sh
	;;

	"AddUsr_to_Gp" ) 
		. ./AddUsr_to_Gp.sh
	;;

	"Exit" )
		break

	;;
	* )
	echo "Invalid choice"
	esac 
done	