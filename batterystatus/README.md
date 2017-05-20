Show the Dialog box if battery full Centos os battery status
Also show when battery power is low

Full_battery:-
check battery status is full or battery percentage is 100

Low_battery:-
check the battery status is Dicharging and battery percentage is <=15

script has to be add to CRONTAB

* * * * * DISPLAY=:0 /home/arun/Public/./low_battery
 Note:-

 Every min,hour,dayofmonth,dayofweek

 DISPLAY=:0 ==> need to add to dislay the zenity dialog box

 "/home/arun/Public/" ==> script directory

 ./low_battery ==> script file

 script should be executable > chmod +x low_battery
