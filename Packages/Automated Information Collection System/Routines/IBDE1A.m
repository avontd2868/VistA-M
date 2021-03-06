IBDE1A ; ALB/ISC - ENCOUNTER FORM UTILITIES - INSTRUCTIONS FOR EXECUTING DIFROM ;AUG 16, 1993
 ;;3.0;AUTOMATED INFO COLLECTION SYS;;APR 24, 1997
MSG() ;QUIT is an output
 N COUNT,LINE,QUIT
 S (QUIT,COUNT)=0
 W @IOF
 F  S LINE=$P($T(LINES+COUNT),";;",2) Q:QUIT!(LINE="")  D
 .S COUNT=COUNT+1
 .W !,LINE
 .I $Y>(IOSL-5) W !! D PAUSE
 I 'QUIT W !! D PAUSE
 Q QUIT
PAUSE ;
 K DIR S DIR(0)="E" D ^DIR K DIR S QUIT=$S(+Y:0,1:1)
 W:'QUIT @IOF
 Q
 ;
LINES ;;===================================================================
 ;;You must enter these parameters to the prompts generated by DIFROM:
 ;;===================================================================
 ;;     
 ;;  
 ;;Enter the Name of the Package (2-4 characters): IBDE
 ;;I am going to create a routine called 'IBDEINIT'.
 ;;but 'IBDEINIT' is ALREADY ON FILE!
 ;;Is that OK? YES
 ;;Would you like to include Data Dictionaries? YES// YES
 ;;Would you like to see the package definition? NO// NO
 ;;Do you want to accept the current definition? NO// YES
 ;;    
 ;;===================================================================
 ;;{now DIFROM lists the files.....}
 ;;===================================================================
 ;;  
 ;;Now you must enter the information that goes on the second line
 ;;of the INIT routines.
 ;;  
 ;;Select VERSION: 3.0// 
 ;;DATE DISTRIBUTED: AUG 3,1993// TODAY
 ;;Would you like to include OPTIONS?       YES// NO
 ;;Would you like to include BULLETINS?     YES// NO
 ;;Would you like to include SECURITY KEYS? YES// NO
 ;;Would you like to include FUNCTIONS?     YES// NO
 ;;Would you like to include HELP FRAMES?   YES// NO
 ;;Would you like security codes sent along: NO// NO
 ;;Would you like this sent via the network: NO// NO
 ;;Maximum Routine Size    (2000 - 9999) : 4000// 4000
 ;;  
 ;;===================================================================
 ;;            OKAY, READY TO RUN DIFROM!
 ;;===================================================================
