#to show the disk usage, show the uptime on the system, and show the users that are logged into
#the system. it will display "Goodbye!" just before the script exits.
#will get "Invalid option." if the user enters anything other than 1, 2, 3, or q.
#!/bin/bash
#Using colors to print
 # regular colors

    K="\033[0;30m"    # black

    R="\033[0;31m"    # red

    G="\033[0;32m"    # green

    Y="\033[0;33m"    # yellow

    B="\033[0;34m"    # blue

    W="\033[0;37m"    # white

    M="\033[0;35m"    # magenta

    C="\033[0;36m"    # cyan

	N="\033[0m"       # nocolor

    

#Menu

menu() {

echo -e  "${W}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	

echo "~~~~~~~~~~~~~~~~~ M E N U ~~~~~~~~~~~~~~~~"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

echo "Please select an option below:"

echo "Press 1 to show disk usage"

echo "Press 2 to show uptime"

echo "Press 3 to show the users logged into"

echo -e "Press q to quit ${N}"

}



#Reading the option from keyboard

options(){

read -p 'Option:' OPTION

echo "$OPTION"

case "$OPTION" in

        1)

        echo -e  "${Y} $(df -h)${N}"

        ;;

        2)

        echo -e "${M} $(uptime) ${N}"

        ;;

        3)

        echo -e "${C} $(w) ${N}"

        ;;

        q)

        echo -e "${G} Good Bye ${N}"

        break

        ;;

        *)

        echo -e  "${R} This option is not valid${N}"

        ;;

esac

}



# ----------------------------------------------

# Trap CTRL+C, CTRL+Z and quit singles

# ----------------------------------------------

trap '' SIGINT SIGQUIT SIGTSTP



# -----------------------------------

# infinite loop

# ------------------------------------

while true

do

menu

options

done
