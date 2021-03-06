IBJPC ;ALB/MAF - IBSP CLAIMS TRACKING PARAMETER SCREEN ;23-OCT-2014
 ;;2.0;INTEGRATED BILLING;**39,517**;21-MAR-94;Build 240
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
EN ; -- main entry point for IBJP CLAIMS TRACKING
 D EN^VALM("IBJP CLAIMS TRACKING")
 Q
HDR ; -- header code
 S VALMHDR(1)="Only authorized persons may edit this data."
 Q
 ;
INIT ; -- Display tracking parameters
 K ^TMP("IBJPC",$J)
 D BLD
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 K ^TMP("IBJPC",$J)
 D CLEAR^VALM1
 Q
 ;
BLD ; -- build screen array, no variables required for input
 N IBGRPB,IBGRPE,IBLN,IBLR,IBNC,IBTRKR,IBTRKR5,IBTRKR62,IBTC,IBSW,IBTW  ; IB*2.0*517 added IBTRKR62
 S IBNC(3)=11,IBSW(3)=9,IBTC(3)=2,IBTW(3)=57    ; IB*2.0*517 added line
 S IBNC(1)=11,IBTW(1)=21,IBTC(1)=2,IBSW(1)=19,IBNC(2)=48,IBTW(2)=21,IBTC(2)=45,IBSW(2)=10
 S IBTRKR=$G(^IBE(350.9,1,6)),IBTRKR5=$G(^IBE(350.9,1,5))
 S IBTRKR62=$G(^IBE(350.9,1,62))                ; IB*2.0*517 added line
 ;
 S (VALMCNT,IBLN)=1,IBLR=1,IBLN=$$SET("","",IBLN,IBLR),IBGRPB=IBLN
 ;
 ; - claim tracking parameters
 S IBLN=$$SETN("Tracking Parameters",IBLN,IBLR,1)
 S IBLN=$$SET("Track Inpatient: ",$$EXSET^IBJU1($P(IBTRKR,U,2),350.9,6.02),IBLN,IBLR)
 S IBLN=$$SET("Track Outpatient: ",$$EXSET^IBJU1($P(IBTRKR,U,3),350.9,6.03),IBLN,IBLR)
 S IBLN=$$SET("Track Rx: ",$$EXSET^IBJU1($P(IBTRKR,U,4),350.9,6.04),IBLN,IBLR)
 S IBLN=$$SET("Track Prosthetics: ",$$EXSET^IBJU1($P(IBTRKR,U,5),350.9,6.05),IBLN,IBLR)
 S IBLN=$$SET("Reports Can Add CT: ",$S(+$P(IBTRKR,U,23):"YES",1:"NO"),IBLN,IBLR)
 ;
 S IBGRPE=IBLN,IBLN=IBGRPB,IBLR=2
 ;
 ; - random sample parameters
 S IBLN=$$SETN("Random Sample Parameters",IBLN,IBLR,1)
 S IBLN=$$SET("Medicine Sample: ",$P(IBTRKR,U,8),IBLN,IBLR)
 S IBLN=$$SET("Medicine Admissions: ",$P(IBTRKR,U,9),IBLN,IBLR)
 S IBLN=$$SET("Surgery Sample: ",$P(IBTRKR,U,13),IBLN,IBLR)
 S IBLN=$$SET("Surgery Admissions: ",$P(IBTRKR,U,14),IBLN,IBLR)
 S IBLN=$$SET("Psych Sample: ",$P(IBTRKR,U,18),IBLN,IBLR)
 S IBLN=$$SET("Psych Admissions: ",$P(IBTRKR,U,19),IBLN,IBLR)
 ;
 S (IBLN,VALMCNT)=$S(IBLN>IBGRPE:IBLN,1:IBGRPE),IBLN=$$SET("","",IBLN,IBLR)
 S IBGRPB=IBLN,IBLR=1,IBSW(1)=55
 ;
 ; - general parameters
 S IBLN=$$SETN("General Parameters",IBLN,IBLR,1)
 S IBLN=$$SET("Initialization Date: ",$$DATE^IBJU1($P(IBTRKR,U,1)),IBLN,IBLR)
 S IBLN=$$SET("Use Admission Sheet: ",$S(+$P(IBTRKR,U,6):"YES",1:"NO"),IBLN,IBLR)
 S IBLN=$$SET("Header Line 1: ",$P(IBTRKR5,U,1),IBLN,IBLR)
 S IBLN=$$SET("Header Line 2: ",$P(IBTRKR5,U,2),IBLN,IBLR)
 S IBLN=$$SET("Header Line 3: ",$P(IBTRKR5,U,3),IBLN,IBLR)
 ;
 ; IB*2.0*517 added new section - HCSR Parameters
 S (IBLN,VALMCNT)=$S(IBLN>IBGRPE:IBLN,1:IBGRPE),IBLN=$$SET("","",IBLN,IBLR)
 S IBGRPB=IBLN,IBLR=3
 S IBLN=$$SETN("Health Care Services Review (HCSR) Parameters",IBLN,IBLR,1)
 S IBLN=$$SET("CPAC Future Appointments Search: ",$J($P(IBTRKR62,U,13),4)_" days",IBLN,IBLR)  ;14 days
 S IBLN=$$SET("CPAC Future Admissions Search: ",$J($P(IBTRKR62,U,2),4)_" days",IBLN,IBLR)
 S IBLN=$$SET("CPAC Past Appointments Search: ",$J($P(IBTRKR62,U,3),4)_" days",IBLN,IBLR)
 S IBLN=$$SET("CPAC Past Admissions Search: ",$J($P(IBTRKR62,U,4),4)_" days",IBLN,IBLR)
 S IBLN=$$SET("TRICARE/CHAMPVA Future Appointments Search: ",$J($P(IBTRKR62,U,5),4)_" days",IBLN,IBLR)
 S IBLN=$$SET("TRICARE/CHAMPVA Future Admissions Search: ",$J($P(IBTRKR62,U,6),4)_" days",IBLN,IBLR)
 S IBLN=$$SET("TRICARE/CHAMPVA Past Appointments Search: ",$J($P(IBTRKR62,U,7),4)_" days",IBLN,IBLR)
 S IBLN=$$SET("TRICARE/CHAMPVA Past Admissions Search: ",$J($P(IBTRKR62,U,8),4)_" days",IBLN,IBLR)
 S IBLN=$$SET("Inquiry can be Triggered for Appointment: ",$J($P(IBTRKR62,U,10),4)_" days",IBLN,IBLR)
 S IBLN=$$SET("Inquiry can be Triggered for Admission: ",$J($P(IBTRKR62,U,11),4)_" days",IBLN,IBLR)
 S IBLN=$$SET("Days to wait to purge entry on HCSR Response: ",$J($P(IBTRKR62,U,12),4)_" days",IBLN,IBLR)
 S IBLN=$$SET("Clinics Included In the Search: ",$J(+$P($G(^IBE(350.9,1,63,0)),U,4),4),IBLN,IBLR)
 S IBLN=$$SET("Wards Included In the Search: ",$J(+$P($G(^IBE(350.9,1,64,0)),U,4),4),IBLN,IBLR)
 S IBLN=$$SET("Insurance Companies Included In the Appointments Search: ",$J(+$P($G(^IBE(350.9,1,65,0)),U,4),4),IBLN,IBLR)
 S IBLN=$$SET("Insurance Companies Included In the Admissions Search: ",$J(+$P($G(^IBE(350.9,1,66,0)),U,4),4),IBLN,IBLR)
 ;
 S (IBLN,VALMCNT)=$S(IBLN>IBGRPE:IBLN,1:IBGRPE)-1
 Q
 ;
SET(TTL,DATA,LN,LR) ;
 N IBY
 S IBY=$J(TTL,IBTW(LR))_DATA D SET1(IBY,LN,IBTC(LR),(IBTW(LR)+IBSW(LR)))
 S LN=LN+1
 Q LN
 ;
SETN(TTL,LN,LR,RV) ;
 N IBY
 S IBY=" "_TTL_" " D SET1(IBY,LN,IBNC(LR),$L(IBY),$G(RV))
 S LN=LN+1
 Q LN
 ;
SET1(STR,LN,COL,WD,RV) ; set up TMP array with screen data
 N IBX S IBX=$G(^TMP("IBJPC",$J,LN,0))
 S IBX=$$SETSTR^VALM1(STR,IBX,COL,WD)
 D SET^VALM10(LN,IBX) I $G(RV)'="" D CNTRL^VALM10(LN,COL,WD,IORVON,IORVOFF)
 Q
 ;
CTEDIT(IBJDR) ; -- IBJP CT EDIT ACTIONS (TP,RS,GP,EA): Edit Claims Tracking Parameters
 ; flag indicating which set of parameters to edit passed in
 D FULL^VALM1
 I IBJDR'="" S DR=$P($T(@IBJDR),";;",2,999)
 ;
 ; IB*2.0*517 from ;62.1 added If statement below
 I IBJDR=0,$D(^XUSEC("IB HCSR PARAM EDIT",DUZ)) D
 . S DR=DR_";62.1Inquiry can be Triggered for Appointment"
 . S DR=DR_";62.11Inquiry can be Triggered for Admission;"
 . S DR=DR_"62.12Days to wait to purge entry on HCSR Response"
 ;
 I DR'="" S DIE="^IBE(350.9,",DA=1 D ^DIE K DA,DR,DIE,DIC,X,Y
 D INIT^IBJPC S VALMBCK="R"
 Q
 ;
0 ;;6.02;6.03;6.04;6.05;6.23;6.08;6.09;6.13;6.14;6.18;6.19;4.01;6.01;6.06;I 'X S Y="@50";5.01;5.02;5.03;@50
1 ;;6.02;6.03;6.04;6.05;6.23
2 ;;6.08;6.09;6.13;6.14;6.18;6.19
3 ;;4.01;6.01;6.06;I 'X S Y="@50";5.01;5.02;5.03;@50
