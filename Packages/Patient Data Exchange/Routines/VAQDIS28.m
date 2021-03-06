VAQDIS28 ;ALB/JFP - PDX, BUILDS DISPLAY ARRAY FOR MAS DATA ;01MAR93
 ;;1.5;PATIENT DATA EXCHANGE;**13**;NOV 17, 1993
SCR5 ; -- Builds MAS DATA SCREEN 5, INSURANCE DATA
ROW0 ; -- HEADER
 D BLANK^VAQDIS20
 S VAQLN=$$REPEAT^VAQUTL1(" ",79)
 S VAQCTR=" -- INSURANCE DATA -- "
 S X=$$CENTER^VAQDIS20(VAQLN,VAQCTR)
 D TMP,BLANK^VAQDIS20
 K VAQLN,VAQCTR
ROW1 ;
 S VAQTMP=$G(@XTRCT@("VALUE",2,.3192,0))
 S VAQINF=$S(VAQTMP'="":VAQTMP,1:"UNANSWERED")
 S X=$$SETSTR^VALM1("Covered by Health Insurance: "_VAQINF,"",5,79)
 D TMP K VAQTMP,VAQINF
ROW2 ;
 S VAQTMP=$G(@XTRCT@("VALUE",2,.381,0))
 S VAQINF=$S(VAQTMP'="":VAQTMP,1:"UNANSWERED")
 S X=$$SETSTR^VALM1("Eligible for MEDICAID: "_VAQINF,"",5,35)
 I VAQINF'="UNANSWERED" D
 .S VAQTMP=$G(@XTRCT@("VALUE",2,.382,0)) D SCR6A^VAQDIS29
 .S X=$$SETSTR^VALM1("[last updated: "_VAQINF_" ]",X,41,38)
 D TMP K VAQTMP,VAQINF
ROW3 ;
 D BLANK^VAQDIS20
 S X=$$SETSTR^VALM1("Insurance Co.","",2,17)
 S X=$$SETSTR^VALM1("Policy #",X,20,20)
 S X=$$SETSTR^VALM1("Group",X,41,12)
 S X=$$SETSTR^VALM1("Holder",X,53,8)
 S X=$$SETSTR^VALM1("Effective",X,61,10)
 S X=$$SETSTR^VALM1("Expires",X,71,8)
 D TMP
 S VAQLN=$$REPEAT^VAQUTL1("=",79)
 S X=$$SETSTR^VALM1(VAQLN,"",2,79)
 D TMP
 S SEQ=""
 F J=1:1 S SEQ=$O(@XTRCT@("VALUE",2.312,.01,SEQ))  Q:SEQ=""  D
 .S X=$$SETSTR^VALM1($G(@XTRCT@("VALUE",2.312,.01,SEQ)),"",2,17)
 .S X=$$SETSTR^VALM1($G(@XTRCT@("VALUE",2.312,1,SEQ)),X,20,20)
 .S VAQINF=$G(@XTRCT@("VALUE",355.3,.04,SEQ))
 .S:(VAQINF="") VAQINF=$G(@XTRCT@("VALUE",355.3,.03,SEQ))
 .S X=$$SETSTR^VALM1(VAQINF,X,41,12)
 .S X=$$SETSTR^VALM1($G(@XTRCT@("VALUE",2.312,6,SEQ)),X,53,8)
 .S VAQTMP=$G(@XTRCT@("VALUE",2.312,8,SEQ)) D SCR6A^VAQDIS29
 .S X=$$SETSTR^VALM1(VAQINF,X,61,10)
 .S VAQTMP=$G(@XTRCT@("VALUE",2.312,3,SEQ)) D SCR6A^VAQDIS29
 .S X=$$SETSTR^VALM1(VAQINF,X,71,8)
 .D TMP
 I J=1 S X=$$SETSTR^VALM1("No active (unexpired) insurance was on file","",2,79) D TMP
 K SEQ,J,VAQTMP,VAQINF,VAQLN
 ;
EXIT ;
 QUIT
 ;
TMP ; -- Sets up display array
 S VALMCNT=VALMCNT+1
 S @ROOT@(VALMCNT,0)=$E(X,1,79)
 QUIT
 ;
END ; -- End of code
 QUIT
