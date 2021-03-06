SROESPR2 ;BIR/ADM - SURGERY E-SIG UTILITY ; [ 06/25/02  04:09 PM ]
 ;;3.0; Surgery ;**100**;24 Jun 93
 ;
 ;** NOTICE: This routine is part of an implementation of a nationally
 ;**         controlled procedure.  Local modifications to this routine
 ;**         are prohibited.
 ;
 ; This routine was cloned in part or in whole from TIUPRPN2.
FOOTER(SRFOOT,SRFLAG,SRPFNBR,SRHDR,SRCONT1,SRDA) ; Control Pagination
 ; position, write footer when appropriate
 ; IF SRHDR=1, HEADER WILL NOT BE PRINTED
 S SRCONT=1
 I $E(IOST)="C" G FOOTX:$Y+3<IOSL S SRCONT=$$STOP G FOOTW
 G FTR:+$G(SRHDR)
 G:$Y+7<IOSL FOOTX
FTR I (IOT'="HFS")!(IOSL<250) F  Q:$Y+6'<IOSL  W ! ;moves ftr to pg bottom
 N SRFNUM,SRLINE,LOC,DIV,SRDIV,SRDIVI,SRPRTDT,SRPRTNM,SRNOW,SRCASE
 S $P(SRLINE,"-",81)=""
 W ?21,$S(+$G(SRCONT1):"** THIS NOTE CONTINUED ON NEXT PAGE **",1:""),!
 I '+$G(SRFLAG) W "WORK COPY ========== UNOFFICIAL "
 I  W "- NOT FOR MEDICAL RECORD =========== DO NOT FILE"
 E  W SRLINE
 W !,SRFOOT("PNMP")
 S SRDIVI="",SRCASE=$P($G(^TMP("SRLQ",$J,SRDA,1405,"I")),";") S:SRCASE DIV=$$SITE^SROUTL0(SRCASE) I DIV S SRDIV=$P(^SRO(133,DIV,0),"^"),SRDIVI=$$EXTERNAL^DILFD(133,.01,"",SRDIV)
 I SRDIVI="",$G(^TMP("SRLQ",$J,SRDA,1205,"I")) S LOC=+^("I") D
 .S SRDIV=+$P($G(^SC(LOC,0)),U,4) I SRDIV S SRDIVI=$$GET1^DIQ(4,SRDIV,.01)
 S SRPRTNM=$S($G(SRDIVI)]"":SRDIVI,$G(SRFOOT("INTNM"))]"":SRFOOT("INTNM"),1:SRFOOT("SITE"))
 S SRNOW=$$NOW^XLFDT,SRPRTDT="Printed:"_$$DATE^SROESPR(SRNOW,"MM/DD/CCYY HR:MIN")
 I $L(SRPRTNM)<36 D
 . W ?(80-$L(SRPRTNM)\2),SRPRTNM,?56,SRPRTDT
 ELSE  D
 . W ?58,SRPRTDT,!?(80-$L(SRPRTNM)\2),SRPRTNM
 W !,SRFOOT("SSN")," ",SRFOOT("DOB"),?(80-$L(SRFOOT("LOCP"))\2),SRFOOT("LOCP")
 I +$G(SRFLAG) W ?(80-$L(SRPFNBR)),SRPFNBR
 I '+$G(SRFLAG) W ?(80-$L(SRFOOT("PH#"))),SRFOOT("PH#")
 I +$G(SRFLAG) W !,SRLINE
 E  W !,"=========================== CONFIDENTIAL INFORMATION ==========================="
 W @IOF
FOOTW I '+$G(SRHDR),+$G(SRCONT) D HEADER(.SRFOOT,SRFLAG,.SRPFHDR,.SRCONT1)
FOOTX ;
 Q SRCONT
HEADER(SRFOOT,SRFLAG,SRPFHDR,SRCONT1) ; Header
 N SRLINE S $P(SRLINE,"-",81)="",SROPAGE=+$G(SROPAGE)+1
 I $E(IOST)="C" D
 .W @IOF,!,?71,"Page: ",$J(SROPAGE,2)
 .W !,SRLINE,!,SRFOOT("PNMP")_"  "_SRFOOT("SSN")
 .W ?(78-$L(SRPFHDR)),SRPFHDR,!,SRLINE,!
 .I +$G(SRCONT1) W $$DATE^SROESPR(^TMP("SRLQ",$J,SRDA,1301,"I"),"MM/DD/CCYY HR:MIN"),?21,"** CONTINUED FROM PREVIOUS SCREEN **",!
 E  D
 .W !?71,"Page: ",$J(SROPAGE,2)
 .W !,SRLINE,!,$S('+$G(SRFLAG):"** WORK COPY - NOT FOR ",1:"")
 .W "MEDICAL RECORD" W:'+$G(SRFLAG) " **" W ?(80-$L(SRPFHDR)),SRPFHDR
 .W !,SRLINE,!
 .I +$G(SRCONT1) W $$DATE^SROESPR(^TMP("SRLQ",$J,SRDA,1301,"I"),"MM/DD/CCYY HR:MIN"),?21,"** CONTINUED FROM PREVIOUS PAGE **",!!
 K SRCONT1
 Q
STOP() ;on screen paging check
 ; quits SRCONT=1 if cont. ELSE quits SRCONT=0
 N DIR,Y
 S DIR(0)="E" D ^DIR
 S SRCONT=Y
 Q SRCONT
