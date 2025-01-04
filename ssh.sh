#!/bin/bash

arg="$1"
: "${arg:=0}"
#: "${arg:='00'}"

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
RESET='\033[0m'

if [[ "$arg" -ge 0 && "$arg" -le 14 ]]; then
    echo "enter this:"

    OUTPUT=''
    SP='    '
    case $arg in
        0) OUTPUT="level00" ;;
        1) OUTPUT="x24ti5gi3x0ol2eh4esiuxias" ;;
        2) OUTPUT="f2av5il02puano7naaf6adaaf" ;;
        3) OUTPUT="kooda2puivaav1idi4f57q8iq" ;;
        4) OUTPUT="qi0maab88jeaj46qoumi7maus" ;;
        5) OUTPUT="ne2searoevaevoem4ov4ar8ap" ;;
        6) OUTPUT="viuaaale9huek52boumoomioc" ;;
        7) OUTPUT="wiok45aaoguiboiki2tuin6ub" ;;
        8) OUTPUT="fiumuikeil55xe9cu4dood66h" ;;
        9) OUTPUT="25749xKZ8L7DkSCwJkT9dyv6f" ;;
        10) OUTPUT="s5cAJpM8ev6XHw998pRWG728z" ;;
        11) OUTPUT="feulo4b72j7edeahuete3no7c" ;;
        12) OUTPUT="fa6v5ateaw21peobuub8ipe6s" ;;
        13) OUTPUT="g1qKMiRpXf53AWhDaU7FEkczr" ;;
    esac
    echo -e "${CYAN}${SP}${OUTPUT}${RESET}"
    echo -e "${GREEN}${SP}${SP}${OUTPUT}${RESET}"
    echo -e "${YELLOW}${SP}${SP}${SP}${OUTPUT}${RESET}"
    if [[ "$arg" -eq 0 ]]; then
        LV="level00"
    elif [[ "$arg" -lt 10 ]]; then
        LV="level0$1"
    else
        LV="level$1"
    fi
else
    LV="level00"
fi

IP=$(hostname -I|awk '{print $2}') # on site it's field 2
# IP=$(ifconfig|grep 'inet '|awk 'NR==1{first=$0}END{print $2}')

ssh -p 4242 ${LV}@${IP}
