IBDF2B1 ;ALB/CJM - ENCOUNTER FORM - (continuation of IBDF2B);12/15/92
 ;;3.0;AUTOMATED INFO COLLECTION SYS;;APR 24, 1997
 ;
TXTPRINT ;for printing a word-processing field
 ;
 ;if the this is not the first time this form is being printed and the data doesn't change then don't print it!
 Q:(('IBPRINT("ENTIRE"))&('RTN("CHANGES")))
 ;
 N LINE,LNSUSED,SPACE,QUIT S LNSUSED=0 ;LNSUSED keeps track of number of available lines for text are used already
 S SPACE=$S(SPACING=2:2,1:1)
 I 'HIO!('WIO)!(XIO'=+XIO)!(YIO'=+YIO) Q
 I LABEL'="",(('IBPRINT("WITH_DATA"))!($G(@RTN("DATA_LOCATION")@(1,0))="")) D
 .D DRWSTR^IBDFU(YIO+SPACE-1,XIO,LABEL,DISPLAY)
 .D DRWSTR^IBDFU(YIO+SPACE-1,XIO+$L(LABEL)," "_$$HLINE^IBDFU(WIO-($L(LABEL)+1)))
 .S LNSUSED=SPACE
 I IBPRINT("WITH_DATA"),($G(@RTN("DATA_LOCATION")@(1,0))'="") D
 .D FORMAT^IBDFU6("^TMP(""IB"",$J,""INTERFACES"",+$G(DFN),RTN(""NAME""))",WIO,LABEL)
 .S (LNSUSED,LINE,QUIT)=0 F  S LINE=$O(^UTILITY($J,"W",1,LINE)) D  Q:QUIT
 ..I 'LINE!(LNSUSED+SPACE>HIO) S QUIT=1 D:(LINE&('IBDEVICE("LISTMAN"))&RTN("FULL")) OVERFLOW^IBDF2B("CURRENT") Q
 ..D DRWSTR^IBDFU(YIO+LNSUSED+(SPACE-1),XIO,$$PADRIGHT^IBDFU($G(^UTILITY($J,"W",1,LINE,0)),WIO))
 ..S LNSUSED=LNSUSED+SPACE
 D ADDLINES^IBDF2B
 K ^UTILITY($J,"W",1)
 Q
