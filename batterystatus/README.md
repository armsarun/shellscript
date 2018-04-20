Show the Dialog box if battery full Centos os battery status
Also show when battery power is low

Full_battery:-
check battery status is full or battery percentage is 100

Low_battery:-
check the battery status is Dicharging and battery percentage is <=15

script has to be add to CRONTAB

* * * * * export DISPLAY=:0 && /home/arun/Public/./low_battery
 
 Note:-
1.
*****
 Every min,hour,dayofmonth,dayofweek

2.
"xhost local:arun > /dev/null" NEED TO BE ADD IN .ZSHRC OR .BASHRC SHELL to display zenity ("arun" is system username)

 DISPLAY=:0 ==> need to display zenity dialog box using crontab
 
 display various for each system to check display type "echo $DISPLAY"
 
 3.
 "/home/arun/Public/" ==> script directory

 ./low_battery ==> script file

4.
 script should be executable > chmod +x low_battery
 
 5.
 Crontab note:- 
 If it doesn't work by above steps then change the 
 shell of crontab by adding below line in the crontab 
 
SHELL=/bin/bash

Crontab use sh shell sometime so double set bracket"[[]]" can't work on sh shell
eventually need to change the shell to bash

