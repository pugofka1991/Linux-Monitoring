#!/bin/bash


#Памятка, Таблица цветов и фонов
#Цвет		код	   код текста	 код фона
 
#black		30	40	\033[30m	\033[40m
#red		31	41	\033[31m	\033[41m
#green		32	42	\033[32m	\033[42m
#yellow		33	43	\033[33m	\033[43m
#blue		34	44	\033[34m	\033[44m
#magenta	35	45	\033[35m	\033[45m
#cyan		36	46	\033[36m	\033[46m
#white		37	47	\033[37m	\033[47m

mas[0]=$backNAME
mas[1]=$textNAME
mas[2]=$backTEXT
mas[3]=$textTEXT

back_color_1="\033[47m"     
back_color_2="\033[41m"      
back_color_3="\033[42m"      
back_color_4="\033[44m"      
back_color_5="\033[45m"      
back_color_6="\033[40m"      

text_color_1="\033[37m"    
text_color_2="\033[31m"	
text_color_3="\033[32m"     
text_color_4="\033[34m"     
text_color_5="\033[35m"     
text_color_6="\033[30m"
text_err1="\033[5m" 
text_err2="\033[31m"    

clear="\e[0m"

for i in 0 1 2 3;
    do
        if [[ ${mas[$i]} < 1 || ${mas[$i]} > 6 ]];
            then    
                echo -e "${text_err2}You entered an invalid parameter. ${text_err1}${text_err2}Please try again.$clear"
                    exit 1
                fi
done 

if [[ ${mas[0]} == ${mas[1]} || ${mas[2]} == ${mas[3]} ]];
	then   
		echo -e "${text_err2}The font and background colors of the same column must not match. ${text_err1}${text_err2}Please try again.$clear"
		exit 1
fi



for i in 0 2;
    do
        if [[ ${mas[i]} == 1 ]];
            then    
                color[$i]=$back_color_1
        elif [[ ${mas[i]} == 2 ]];
            then
                color[$i]=$back_color_2
        elif [[ ${mas[i]} == 3 ]];
            then
                color[$i]=$back_color_3
        elif [[ ${mas[i]} == 4 ]];
            then
                color[$i]=$back_color_4
        elif [[ ${mas[i]} == 5 ]];
            then
                color[$i]=$back_color_5
        elif [[ ${mas[i]} == 6 ]];
            then
                color[$i]=$back_color_6
        fi
done

for i in 1 3;
	do
		if [[ ${mas[$i]} == 1 ]];
			then
				color[$i]=$text_color_1
		elif [[ ${mas[$i]} == 2 ]];
			then
				color[$i]=$text_color_2
		elif [[ ${mas[$i]} == 3 ]];
			then
				color[$i]=$text_color_3
		elif [[ ${mas[$i]} == 4 ]];
			then
				color[$i]=$text_color_4
		elif [[ ${mas[$i]} == 5 ]];
			then
				color[$i]=$text_color_5
		elif [[ ${mas[$i]} == 6 ]];
			then
				color[$i]=$text_color_6
		fi
done

echo -e "${color[0]}${color[1]}HOSTNAME$clear = ${color[2]}${color[3]}$HOSTNAME$clear"
echo -e "${color[0]}${color[1]}TIMEZONE$clear  = ${color[2]}${color[3]}$TIMEZONE$clear"
echo -e "${color[0]}${color[1]}USER$clear  = ${color[2]}${color[3]}$USER$clear"
echo -e "${color[0]}${color[1]}OS$clear  = ${color[2]}${color[3]}$OS$clear"
echo -e "${color[0]}${color[1]}DATE$clear  = ${color[2]}${color[3]}$DATE$clear"
echo -e "${color[0]}${color[1]}UPTIME$clear  = ${color[2]}${color[3]}$UPTIME$clear"
echo -e "${color[0]}${color[1]}UPTIME_SEC$clear  = ${color[2]}${color[3]}$UPTIME_SEC$clear"
echo -e "${color[0]}${color[1]}IP$clear  = ${color[2]}${color[3]}$IP$clear"
echo -e "${color[0]}${color[1]}MASK$clear  = ${color[2]}${color[3]}$MASK$clear"
echo -e "${color[0]}${color[1]}GATEWAY$clear  = ${color[2]}${color[3]}$GATEWAY$clear"
echo -e "${color[0]}${color[1]}RAM_TOTAL$clear  = ${color[2]}${color[3]}$RAM_TOTAL$clear"
echo -e "${color[0]}${color[1]}RAM_USED$clear  = ${color[2]}${color[3]}$RAM_USED$clear"
echo -e "${color[0]}${color[1]}RAM_FREE$clear  = ${color[2]}${color[3]}$RAM_FREE$clear"
echo -e "${color[0]}${color[1]}SPACE_ROOT$clear  = ${color[2]}${color[3]}$SPACE_ROOT$clear"
echo -e "${color[0]}${color[1]}SPACE_ROOT_USED$clear  = ${color[2]}${color[3]}$SPACE_ROOT_USED$clear"
echo -e "${color[0]}${color[1]}SPACE_ROOT_FREE$clear  = ${color[2]}${color[3]}$SPACE_ROOT_FREE$clear"