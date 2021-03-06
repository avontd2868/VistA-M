RCDPBPLI ;WISC/RFJ-bill profile (build array cont employee/vendor) ;1 Jun 99
 ;;4.5;Accounts Receivable;**114,153,301,315**;Mar 20, 1995;Build 67
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 Q
 ;
 ;
INIT ;  initialization for list manager list
 ;  report type for employee or vendor, show description field 106
 N COMMDA,DATA,DESCDA,TEXT
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("Date    ",RCLINE,1,80,0,IOUON,IOUOFF)
 D SET^RCDPBPLM("Description",RCLINE,12,80,0,IOUON,IOUOFF)
 D SET^RCDPBPLM("Quantity",RCLINE,35,80,0,IOUON,IOUOFF)
 D SET^RCDPBPLM("Units",RCLINE,46,80,0,IOUON,IOUOFF)
 D SET^RCDPBPLM("Cost",RCLINE,54,80,0,IOUON,IOUOFF)
 D SET^RCDPBPLM("Total Cost",RCLINE,64,80,0,IOUON,IOUOFF)
 S DESCDA=0 F  S DESCDA=$O(^PRCA(430,RCBILLDA,101,DESCDA)) Q:'DESCDA  D
 .   S DATA=$G(^PRCA(430,RCBILLDA,101,DESCDA,0)) I DATA="" Q
 .   S RCLINE=RCLINE+1
 .   D SET^RCDPBPLM($E($P(DATA,U),4,5)_"/"_$E($P(DATA,U),6,7)_"/"_$E($P(DATA,U),2,3),RCLINE,1,80)
 .   D SET^RCDPBPLM($J($P(DATA,U,3),8,2),RCLINE,35,80)
 .   D SET^RCDPBPLM($J($P($G(^PRCD(420.5,+$P(DATA,U,5),0)),U),5),RCLINE,46,80)
 .   D SET^RCDPBPLM($J($P(DATA,U,4),0,4),RCLINE,54,80)
 .   D SET^RCDPBPLM($J($P(DATA,U,6),10,2),RCLINE,64,80)
 .   ;  show description
 .   S DATA=""
 .   S COMMDA=0 F  S COMMDA=$O(^PRCA(430,RCBILLDA,101,DESCDA,1,COMMDA)) Q:'COMMDA  D
 .   .   S TEXT=$G(^PRCA(430,RCBILLDA,101,DESCDA,1,COMMDA,0)) I TEXT="" Q
 .   .   I $L(DATA_TEXT)>240 D SETDESC(11)
 .   .   S DATA=DATA_$S(DATA="":"",1:" ")_TEXT
 .   I DATA'="" D SETDESC(11)
 .   ;  make sure all data is processed
 .   I DATA'="" D SETDESC(11)
 Q
 ;
 ;
SETDESC(STARTCOL) ;  set the description line starting in column startcol+1
 N %,LENGTH,SPACE
 S LENGTH=80-STARTCOL-1
 S SPACE="",$P(SPACE," ",80)=""
 ;  break text at space if possible
 I $L(DATA)>LENGTH D
 .   F %=LENGTH-1:-1:0 Q:$E(DATA,%)=" "
 .   I % S LENGTH=%
 ;  set line
 S RCLINE=RCLINE+1 D SET^RCDPBPLM($E(SPACE,1,STARTCOL)_$E(DATA,1,LENGTH),RCLINE,1,80)
 S DATA=$E(DATA,LENGTH+1,255)
 I $L(DATA)>LENGTH D SETDESC(STARTCOL)
 Q
 ;
 ;
TRANINIT ;  initialization for transaction and ib data display
 N BILLCAT,DATA,IBDA,RCDATE,RCLIST,RCTOTAL,RCTRANDA,X
 ;  get the bill category
 S BILLCAT=$P($G(^PRCA(430,RCBILLDA,0)),U,2)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("Trans    Date      Type                Amount  Description                  User",RCLINE,1,80,0,IOUON,IOUOFF)  ;PRCA*4.5*315 Display User Ini
 S RCTOTAL=$$GETTRANS^RCDPBTLM(RCBILLDA)
 S RCDATE=0 F  S RCDATE=$O(RCLIST(RCDATE)) Q:'RCDATE  D
 .   S RCTRANDA=0 F  S RCTRANDA=$O(RCLIST(RCDATE,RCTRANDA)) Q:'RCTRANDA  D
 .   .   S RCLINE=RCLINE+1
 .   .   D SET^RCDPBPLM(RCTRANDA,RCLINE,1,80)
 .   .   D SET^RCDPBPLM($E(RCDATE,4,5)_"/"_$E(RCDATE,6,7)_"/"_$E(RCDATE,2,3),RCLINE,10,20)
 .   .   D SET^RCDPBPLM($E($P(RCLIST(RCDATE,RCTRANDA),U),1,14),RCLINE,20,34)  ;PRCA*4.5*315
 .   .   S X=$P(RCLIST(RCDATE,RCTRANDA),U,2)+$P(RCLIST(RCDATE,RCTRANDA),U,3)+$P(RCLIST(RCDATE,RCTRANDA),U,4)+$P(RCLIST(RCDATE,RCTRANDA),U,5)+$P(RCLIST(RCDATE,RCTRANDA),U,6)
 .   .   D SET^RCDPBPLM($J(X,10,2),RCLINE,36,75)  ;PRCA*4.5*315
 .   .   S X=$P(RCLIST(RCDATE,RCTRANDA),U,7)  ;PRCA*4.5*315
 .   .   D SET^RCDPBPLM(X,RCLINE,77,80)  ;PRCA*4.5*315
 .   .   ;
 .   .   ;  for category c-means test, rx copay (sc/nsc)
 .   .   I BILLCAT=18!(BILLCAT=22)!(BILLCAT=23) D
 .   .   .   D STMT^IBRFN1(RCTRANDA)
 .   .   .   I '$D(^TMP("IBRFN1",$J)) Q
 .   .   .   S IBDA=0 F  S IBDA=$O(^TMP("IBRFN1",$J,IBDA)) Q:'IBDA  D
 .   .   .   .   S DATA=^TMP("IBRFN1",$J,IBDA)
 .   .   .   .   ;  show rx
 .   .   .   .   I BILLCAT=22!(BILLCAT=23) D  Q
 .   .   .   .   .   D SET^RCDPBPLM("RX "_$P(DATA,U,2),RCLINE,48,58)  ;PRCA*4.5*315 Spacing changed next several lines
 .   .   .   .   .   D SET^RCDPBPLM($P(DATA,U,3),RCLINE,60,75)
 .   .   .   .   .   ; D SET^RCDPBPLM("Qty "_$P(DATA,U,6),RCLINE,77,80)
 .   .   .   .   ;  show outpatient (type of care 430.2 = 4 outpatient care)
 .   .   .   .   I $P(^PRCA(430,RCBILLDA,0),U,16)=4 D  Q
 .   .   .   .   .   D SET^RCDPBPLM("Outpatient Visit Date: "_$E($P(DATA,U,2),4,5)_"/"_$E($P(DATA,U,2),6,7)_"/"_$E($P(DATA,U,2),2,3),RCLINE,48,80)
 .   .   .   .   ;  show inpatient
 .   .   .   .   D SET^RCDPBPLM("Inpatient Adm Date: "_$E($P(DATA,U,2),4,5)_"/"_$E($P(DATA,U,2),6,7)_"/"_$E($P(DATA,U,2),2,3),RCLINE,48,80)
 .   .   .   K ^TMP("IBRFN1",$J)
 Q
 ;
REJECT ;  ; prca*4.5*301 ; LEG
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("CS Reject Data",RCLINE,1,80,0,IOUON,IOUOFF)
 D PROFRJA^RCTCSJS1(RCBILLDA,.RCLINE,.OUTARY)
 M @VALMAR=OUTARY
 K OUTARY
 Q
 ;
 ;
 ;
REPAY ;  show repayment plan
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("Repayment Plan Data",RCLINE,1,80,0,IOUON,IOUOFF)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("     Repayment Plan Date",RCLINE,1,80,41)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("Day of Month Payment Due",RCLINE,1,80,42)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("    Repayment Amount Due",RCLINE,1,80,43)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("      Number of Payments",RCLINE,1,80,44)
 Q
 ;
 ;
IRS ;  irs data
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("Forwarded to IRS",RCLINE,1,80,0,IOUON,IOUOFF)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("On Date",RCLINE,40,80,68.7)
 D SET^RCDPBPLM("Amount",RCLINE,65,80,68.92)
 S DATA=$G(^PRCA(430,RCBILLDA,6))
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("       Principal Balance: "_$J($P(DATA,U,16),10,2),RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("        Interest Balance: "_$J($P(DATA,U,17),10,2),RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("  Administrative Balance: "_$J($P(DATA,U,18),10,2),RCLINE,1,80)
 Q
 ;
 ;
DMC ;  dmc data
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("Forwarded to DMC",RCLINE,1,80,0,IOUON,IOUOFF)
 D SET^RCDPBPLM("On Date",RCLINE,40,80,121)
 S DATA=$G(^PRCA(430,RCBILLDA,12))
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("       Principal Balance: "_$J($P(DATA,U,2),10,2),RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("        Interest Balance: "_$J($P(DATA,U,3),10,2),RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("  Administrative Balance: "_$J($P(DATA,U,4),10,2),RCLINE,1,80)
 Q
 ;
 ;
TOP ;  top data
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("Forwarded to TOP",RCLINE,1,80,0,IOUON,IOUOFF)
 D SET^RCDPBPLM("On Date",RCLINE,40,80,141)
 S DATA=$G(^RCD(340,+RCDPDATA(430,RCBILLDA,9,"I"),6))
 I $P(DATA,U,6) D
 .   S Y=$P(DATA,U,6) D DD^%DT
 .   S RCLINE=RCLINE+1 D SET^RCDPBPLM("  TOP Hold Date: "_Y,RCLINE,1,80)
 Q
 ;
 ;
TCSP ;  cross-servicing data referral
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("Debt Referred to Cross-Servicing",RCLINE,1,80)
 D SET^RCDPBPLM("  CS Referred Date",RCLINE,48,80,151)
 Q
 ;
 ;
TCSPRC ;  cross-servicing data recall
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("CS Recall Reason:",RCLINE,1,80)
 D SET^RCDPBPLM("",RCLINE,19,80,154)
 D SET^RCDPBPLM("  CS Recall Date",RCLINE,50,80,153)
 Q
 ;
 ;
INSUR ;  show insurance data
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" ",RCLINE,1,80)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("Insurance Data",RCLINE,1,80,0,IOUON,IOUOFF)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("         Insured Name",RCLINE,1,80,239)
 D SET^RCDPBPLM("Sex",RCLINE,50,80,240)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("            ID Number",RCLINE,1,80,242)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("           Group Name",RCLINE,1,80,243)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("         Group Number",RCLINE,1,80,244)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("        Employer Name",RCLINE,1,80,247)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("   Employee ID Number",RCLINE,1,80,248)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("    Employer Location",RCLINE,1,80,249)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM("Secondary Ins Carrier",RCLINE,1,80,19)
 S RCLINE=RCLINE+1 D SET^RCDPBPLM(" Tertiary Ins Carrier",RCLINE,1,80,19.1)
 Q
