BPSRPT3 ;BHAM ISC/BEE - ECME REPORTS ;14-FEB-05
 ;;1.0;E CLAIMS MGMT ENGINE;**1,3,5,7,11,14,19,20,23**;JUN 2004;Build 44
 ;;Per VA Directive 6402, this routine should not be modified.
 ;
 ;Reference to IB NCPCP NON-BILLABLE STATUS REASONS (#366.17) supported by ICR 6136
 ;
 Q
 ;
 ; Select the ECME Pharmacy or Pharmacies
 ; 
 ; Input Variable -> none
 ; Return Value ->   "" = Valid Entry or Entries Selected
 ;                                        ^ = Exit
 ;                                       
 ; Output Variable -> BPPHARM = 1 One or More Pharmacies Selected
 ;                          = 0 User Entered 'ALL'
 ;                            
 ; If BPPHARM = 1 then the BPPHARM array will be defined where:
 ;    BPPHARM(ptr) = ptr ^ BPS PHARMACY NAME and
 ;    ptr = Internal Pointer to BPS PHARMACIES file (#9002313.56)
 ;                    
SELPHARM() N DIC,DIR,DIRUT,DTOUT,DUOUT,X,Y
 ;
 ;Reset BPPHARM array
 K BPPHARM
 ;
 ;First see if they want to enter individual divisions or ALL
 S DIR(0)="S^D:DIVISION;A:ALL"
 S DIR("A")="Select Certain Pharmacy (D)ivisions or (A)LL"
 S DIR("L",1)="Select one of the following:"
 S DIR("L",2)=""
 S DIR("L",3)="     D         DIVISION"
 S DIR("L",4)="     A         ALL"
 D ^DIR K DIR
 ;
 ;Check for "^" or timeout, otherwise define BPPHARM
 I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^"
 E  S BPPHARM=$S(Y="A":0,1:1)
 ;
 ;If division selected, ask prompt
 I $G(BPPHARM)=1 F  D  Q:Y="^"!(Y="") 
 .;
 .;Prompt for entry
 .K X S DIC(0)="QEAM",DIC=9002313.56,DIC("A")="Select ECME Pharmacy Division(s): "
 .W ! D ^DIC
 .;
 .;Check for "^" or timeout 
 .I ($G(DUOUT)=1)!($G(DTOUT)=1) K BPPHARM S Y="^" Q
 .;
 .;Check for blank entry, quit if no previous selections
 .I $G(X)="" S Y=$S($D(BPPHARM)>9:"",1:"^") K:Y="^" BPPHARM Q
 .;
 .;Handle Deletes
 .I $D(BPPHARM(+Y)) D  Q:Y="^"  I 1
 ..N P
 ..S P=Y  ;Save Original Value
 ..S DIR(0)="S^Y:YES;N:NO",DIR("A")="Delete "_$P(P,U,2)_" from your list?"
 ..S DIR("B")="NO" D ^DIR
 ..I ($G(DUOUT)=1)!($G(DTOUT)=1) K BPPHARM S Y="^" Q
 ..I Y="Y" K BPPHARM(+P),BPPHARM("B",$P(P,U,2),+P)
 ..S Y=P  ;Restore Original Value
 ..K P
 .E  D
 ..;Define new entries in BPPHARM array
 ..S BPPHARM(+Y)=Y
 ..S BPPHARM("B",$P(Y,U,2),+Y)=""
 .;
 .;Display a list of selected divisions
 .I $D(BPPHARM)>9 D
 ..N X
 ..W !,?2,"Selected:"
 ..S X="" F  S X=$O(BPPHARM("B",X)) Q:X=""  W !,?10,X
 ..K X
 .Q
 ;
 K BPPHARM("B")
 Q Y
 ;
 ; Select to Include Eligibility of (V)ETERAN, (T)RICARE, (C)HAMPVA or (A)ll
 ; 
 ; Input Variable -> DFLT = 0 = All
 ;                          1 = VETERAN
 ;                          2 = TRICARE
 ;                          3 = CHAMPVA
 ; 
 ; Return Value ->  V, T, C or 0 for All
 ;
SELELIG(DFLT) N DIC,DIR,DIRUT,DUOUT,DTOUT,DIROUT,X,Y
 S DFLT=$S($G(DFLT)=1:"V",$G(DFLT)=2:"T",$G(DFLT)=3:"C",1:"A")
 S DIR(0)="S^V:VETERAN;T:TRICARE;C:CHAMPVA;A:ALL"
 S DIR("A")="Include Certain Eligibility Type or (A)ll",DIR("B")=DFLT
 D ^DIR
 I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^"
 S Y=$S(Y="A":0,1:Y)
 Q Y
 ;
 ; Display (S)ummary or (D)etail Format
 ;
 ; Input Variable -> DFLT = 1 Summary
 ;                          2 Detail
 ;
 ; Return Value ->   1 = Summary
 ;                   0 = Detail
 ;                   ^ = Exit
 ;
SELSMDET(DFLT) N DIR,DIRUT,DTOUT,DUOUT,X,Y
 S DFLT=$S($G(DFLT)=1:"Summary",$G(DFLT)=0:"Detail",1:"Detail")
 S DIR(0)="S^S:Summary;D:Detail",DIR("A")="Display (S)ummary or (D)etail Format",DIR("B")=DFLT
 D ^DIR
 I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^"
 S Y=$S(Y="S":1,Y="D":0,1:Y)
 Q Y
 ;
 ; Display (C)MOP or (M)ail or (W)indow or (A)ll
 ; 
 ;    Input Variable -> DFLT = C CMOP
 ;                             W Window
 ;                             M Mail
 ;                             A All
 ;                          
 ;    Return Value ->   C = CMOP
 ;                      W = Window
 ;                      M = Mail
 ;                      A = All
 ;                      ^ = Exit
 ; 
SELMWC(DFLT) N DIR,DIRUT,DTOUT,DUOUT,X,Y
 S DFLT=$S($G(DFLT)="C":"CMOP",$G(DFLT)="W":"Window",$G(DFLT)="M":"Mail",1:"ALL")
 S DIR(0)="S^C:CMOP;M:Mail;W:Window;A:ALL"
 S DIR("A")="Display (C)MOP or (M)ail or (W)indow or (A)LL",DIR("B")=DFLT
 D ^DIR
 I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^"
 Q Y
 ;
 ;
SELMWC1(DFLT) ;
 ; Upon completion of prompt, values will be placed into a string delimited
 ; by commas. e.g. C,M
 ; 
 ; If user includes (A)ll as a code, "A" will be stored in BPARR
 ; array. e.g. Entry of C,M,A will save as BPARR("MWC")="A"
 ; 
 ; User input values are temporary stored in array BPSMWC to eliminate duplicate 
 ; entries. e.g. Entry of C,M,C will save as BPARR("MWC")="C,M"
 ; 
BPSMWC ;
 N DIR,DIRUT,DTOUT,DUOUT,X,Y
 N BPARR,BPSMWC,BPSERR,BPSMWCSTR,BPSSEL,BPSX
 ;
 S BPSMWCSTR=",C,M,W,A,"
 S DIR(0)="FO^0:7"
 S DIR("A",1)=""
 S DIR("A",2)="     Select one or more of the following:"
 S DIR("A",3)=""
 S DIR("A",4)="          C         CMOP"
 S DIR("A",5)="          M         Mail"
 S DIR("A",6)="          W         Window"
 S DIR("A",7)="          A         ALL"
 S DIR("A",8)=""
 S DIR("A")="Display (C)MOP or (M)ail or (W)indow or (A)ll"
 S DIR("B")="A" S:$G(BPARR("MWC"))'="" DIR("B")=BPARR("MWC")
 S DIR("?",1)="Enter a single response or multiple responses separated by commas."
 S DIR("?",2)=" Example:"
 S DIR("?",3)="  C"
 S DIR("?")="  C,M"
 D ^DIR K DIR
 I ($G(DUOUT)=1)!($G(DTOUT)=1)!($D(DIRUT)) Q "^"
 ;
 ;Convert any lower case to upper case
 S X=$TR(X,BPSLC,BPSUC)
 ;
 ;If 'A' was one of the selections,reset X to include all available selections.
 I X[",",X["A" S X="C,M,W"
 ;
 ; Loop through user input (returned in variable X).
 ; Display warning message if any user input selection is not included
 ; in the string of acceptable codes (BPSMWCSTR) and re-prompt question.
 ; Assign valid selections to BPSMWC array. This array will prevent
 ; duplicate entries from being saved to the user's profile.
 ;
 K BPSMWC
 S BPSERR=""
 F BPSX=1:1:$L(X,",") D
 . S BPSSEL=$P(X,",",BPSX)
 . I BPSMWCSTR'[(","_BPSSEL_",") W !," ",BPSSEL," is not a valid entry." S BPSERR=1 Q
 . S BPSMWC(BPSSEL)=""
 ;
 I $G(BPSERR)=1 G BPSMWC
 ;
 ; If user included (A)ll as a selection, set profile setting to "A".
 ;
 I $D(BPSMWC("A")) S BPARR("MWC")="A"
 E  D  ; User did not enter "A".
 . ;
 . ; At this point user selections are valid, do not include "A".
 . ; Loop through and set selections into a comma delimited
 . ; string before assigning to BPARR array.
 . ;
 . S BPSSEL=""
 . F  S BPSSEL=$O(BPSMWC(BPSSEL)) Q:BPSSEL=""  D
 . . ; Display the user selections
 . . W !,?10,$S(BPSSEL="C":"CMOP",BPSSEL="M":"MAIL",BPSSEL="W":"WINDOW",1:"")
 . . S BPSMWC=$G(BPSMWC)_BPSSEL_","
 . S BPSMWC=$E(BPSMWC,1,($L(BPSMWC)-1))
 . S BPARR("MWC")=BPSMWC
 ;
 Q BPARR("MWC")
 ;
 ; Display (R)ealTime Fills or (B)ackbills or (P)RO option or Re(S)ubmission or (A)LL
 ;
 ;    Input Variable -> DFLT = 5 Resubmission
 ;                             4 PRO Option
 ;                             3 Backbill
 ;                             2 Real Time Fills
 ;                             1 ALL
 ;                          
 ;    Return Value ->   5 = Resubmision
 ;                      4 = PRO Option
 ;                      3 = Backbill (manually)
 ;                      2 = Real Time Fills (automatically during FINISH)
 ;                      1 = ALL
 ;                      ^ = Exit
 ;
SELRTBCK(DFLT) N DIR,DIRUT,DTOUT,DUOUT,DIROUT,X,Y
 S DFLT=$S($G(DFLT)=2:"Real Time",$G(DFLT)=3:"Backbill",$G(DFLT)=4:"PRO Option",$G(DFLT)=5:"Resubmission",1:"A")
 S DIR(0)="S^R:Real Time Fills;B:Backbill;P:PRO Option;S:ReSubmission;A:ALL"
 S DIR("A")="Display (R)ealTime, (B)ackbills, (P)RO Option, Re(S)ubmission or (A)LL",DIR("B")=DFLT
 D ^DIR
 I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^"
 S Y=$S(Y="A":1,Y="R":2,Y="B":3,Y="P":4,Y="S":5,1:Y)
 Q Y
 ;
SELRBPS() ;
 ;
 ; BPSRBSTR = string of valid codes
 ;
 ; Upon completion of prompt, values will be placed into a string delimited
 ; by commas. e.g. P,R
 ;
 ; If user selected (A)ll then 1 will be stored in BPARR
 ;
 ; User input values are temporary stored in array BPSRBPS to eliminate duplicate 
 ; entries.
 ;
BPRBPS ; Realtime / Backbills / Pro Option / Resubmission / All
 N BPARR,BPSRBPS,BPSERR,BPSRBSTR,BPSSEL,BPSX
 N DIR,DIRUT,DTOUT,DUOUT,X,Y
 ;
 S BPSRBSTR=",R,B,P,S,A,"
 S DIR(0)="FO^0:7"
 S DIR("A",1)=""
 S DIR("A",2)="     Select one or more of the following:"
 S DIR("A",3)=""
 S DIR("A",4)="          R         Real Time Fills"
 S DIR("A",5)="          B         Backbill"
 S DIR("A",6)="          P         PRO Option"
 S DIR("A",7)="          S         ReSubmission"
 S DIR("A",8)="          A         ALL"
 S DIR("A",9)=""
 S DIR("A")="Display (R)ealTime, (B)ackbills, (P)RO Option, Re(S)ubmission or (A)ll"
 S DIR("B")="A" S:$G(BPARR("RBPS"))'="" DIR("B")=BPARR("RBPS")
 S DIR("?",1)="Enter a single response or multiple responses separated by commas."
 S DIR("?",2)=" Example:"
 S DIR("?",3)="  B"
 S DIR("?")="  B,P"
 D ^DIR K DIR
 ;
 I ($G(DUOUT)=1)!($G(DTOUT)=1)!($D(DIRUT)) Q "^"
 ;
 ;Convert any lower case to upper case
 S X=$TR(X,BPSLC,BPSUC)
 ;
 ;If 'A' was one of the selections,reset X to include all available selections.
 I X[",",X["A" S X="R,B,P,S"
 ;
 ; Loop through user input (returned in variable X).
 ; Display warning message if any user input selection is not included
 ; in the string of acceptable codes (BPSRBSTR) and re-prompt question.
 ; Assign valid selections to BPRTBCK array. This array will prevent
 ; duplicate entries from being saved to the user's profile.
 ;
 K BPSRBPS
 S (BPSSEL,BPSERR)=""
 F BPSX=1:1:$L(X,",") D
 . S BPSSEL=$P(X,",",BPSX)
 . I BPSRBSTR'[(","_BPSSEL_",") W !," ",BPSSEL," is not a valid entry." S BPSERR=1 Q
 . S BPSRBPS(BPSSEL)=""
 ;
 I $G(BPSERR)=1 G BPRBPS
 ;
 ; If user selected (A)ll, set profile setting to ALL.
 I $D(BPSRBPS("A")) S BPARR("RBPS")=1
 E  D  ; User did not enter "A".
 . ;
 . ; At this point user selections are valid and do not include "A".
 . ; Loop through valid user selections. Set selections into a
 . ; comma delimited string before assigning to BPARR array.
 . ;
 . S (BPSSEL,BPSSELN)=""
 . F  S BPSSEL=$O(BPSRBPS(BPSSEL)) Q:BPSSEL=""  D
 . . ; Display the user selections
 . . W !,?10,$S(BPSSEL="R":"REALTIME",BPSSEL="B":"BACKBILLS",BPSSEL="P":"PRO OPTION",BPSSEL="S":"RESUBMISSION",1:"")
 . . S BPSRBPS=$G(BPSRBPS)_BPSSEL_","
 . S BPSRBPS=$E(BPSRBPS,1,($L(BPSRBPS)-1))
 ;
 ; If ALL wasn't selected convert BPSRBPS to numerical a value, like existing functionality in SELRTBCK^BPSRPT3.
 I '$D(BPSRBPS("A")) D
 . N RTBCKX,NRTBCK
 . S NRTBCK=""
 . I $L(BPSRBPS)=1 D
 . . S NRTBCK=$S(BPSRBPS="R":2,BPSRBPS="B":3,BPSRBPS="P":4,BPSRBPS="S":5,1:"")
 . . S BPARR("RBPS")=NRTBCK
 . E  D
 . . F I=1:1:$L(BPSRBPS,",") S RTBCKX=$P(BPSRBPS,",",I),NRTBCK=NRTBCK_$S(RTBCKX="R":2,RTBCKX="B":3,RTBCKX="P":4,RTBCKX="S":5,1:"")_","
 . . S BPARR("RBPS")=$E(NRTBCK,1,$L(NRTBCK)-1)
 ;
 Q BPARR("RBPS")
 ;
 ; Display Specific (D)rug or Drug (C)lass
 ; 
 ;    Input Variable -> DFLT = 3 Drug Class
 ;                             2 Drug
 ;                             1 ALL
 ;                          
 ;     Return Value ->   3 = Drug Class
 ;                       2 = Drug
 ;                       1 = ALL
 ;                       ^ = Exit
 ;                       
SELDRGAL(DFLT) N DIR,DIRUT,DTOUT,DUOUT,X,Y
 S DFLT=$S($G(DFLT)=2:"Drug",$G(DFLT)=3:"Drug Class",1:"ALL")
 S DIR(0)="S^D:Drug;C:Drug Class;A:ALL"
 S DIR("A")="Display Specific (D)rug or Drug (C)lass or (A)LL",DIR("B")=DFLT
 D ^DIR
 I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^"
 S Y=$S(Y="A":1,Y="D":2,Y="C":3,1:Y)
 Q Y
 ;
 ; Select Drug
 ; 
 ; Input Variable -> none
 ; 
 ; Return Value -> ptr = pointer to DRUG file (#50)
 ;                   ^ = Exit
 ;                   
SELDRG() N DIC,DIRUT,DUOUT,X,Y
 ;
 ;Prompt for entry
 W ! D SELDRG^BPSRPT6
 ;
 ;Check for "^", timeout, or blank entry
 I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^"
 ;
 ;Check for Valid Entry
 I +Y>0 S Y=+Y
 ;
 Q Y
 ;
 ; Select Drug Class
 ; 
 ; Input Variable -> none
 ; 
 ; Return Value -> ptr = pointer to VA DRUG CLASS file (#50.605)
 ;                   ^ = Exit
 ;
SELDRGCL() N DIC,DIRUT,DUOUT,Y
 ;
 ;Prompt for entry
 ;Using DIC^PSNDI per ICR 4554 - BPS*1*14 ticket 313337
 S DIC="50.605",DIC(0)="QEAMZ" D DIC^PSNDI(DIC,"BPS",.DIC,,,)
 ;
 ;call returns DRUG CLASS CODE, need to extract DRUG CLASSIFICATION
 I +$G(Y)>0 S Y=$P($G(Y(0)),"^",2) I $G(Y)="" S Y=-1
 ;
 ;If nothing was returned set Y="-1" so report knows 
 I $G(Y)=-1 S Y="^"
 ;
 Q Y
 ;
 ; Enter Date Range
 ;
 ; Input Variable -> TYPE = 7 CLOSE REPORT
 ;                          1-6 OTHER REPORTS
 ;
 ; Return Value -> P1^P2
 ; 
 ;           where P1 = From Date
 ;                    = ^ Exit
 ;                 P2 = To Date
 ;                    = blank for Exit
 ;                 
SELDATE(TYPE) N BPSIBDT,DIR,DIRUT,DTOUT,DUOUT,VAL,X,Y
 S TYPE=$S($G(TYPE)=7:"CLOSE",1:"TRANSACTION")
SELDATE1 S VAL="",DIR(0)="DA^:DT:EX",DIR("A")="START WITH "_TYPE_" DATE: ",DIR("B")="T-1"
 W ! D ^DIR
 ;
 ;Check for "^", timeout, or blank entry
 I ($G(DUOUT)=1)!($G(DTOUT)=1)!($G(X)="") S VAL="^"
 ;
 I VAL="" D
 .S $P(VAL,U)=Y
 .S DIR(0)="DA^"_VAL_":DT:EX",DIR("A")="  GO TO "_TYPE_" DATE: ",DIR("B")="T"
 .D ^DIR
 .;
 .;Check for "^", timeout, or blank entry
 .I ($G(DUOUT)=1)!($G(DTOUT)=1)!($G(X)="") S VAL="^" Q
 .;
 .;Define Entry
 .S $P(VAL,U,2)=Y
 ;
 Q VAL
 ;
 ; Select to Include Open or Closed or All claims
 ; 
 ; Input Variable -> DFLT = 0 = All
 ;                          1 = Closed
 ;                          2 = Open
 ; 
 ; Return Value -> 0 = All, 1 = Closed, 2 = Open
SELOPCL(DFLT) N DIC,DIR,DIRUT,DUOUT,X,Y
 ;
 S DFLT=$S($G(DFLT)=1:"C",$G(DFLT)=2:"O",1:"A")
 S DIR(0)="S^O:OPEN;C:CLOSED;A:ALL"
 S DIR("A")="Include (O)pen, (C)losed, or (A)ll Claims",DIR("B")=DFLT
 D ^DIR
 I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^"
 ;
 S Y=$S(Y="C":1,Y="O":2,1:0)
 Q Y
 ;
SELELIG1() ;
 ; Select multiple Eligibilities
 ; 
 ; Input Variable -> none
 ; Return Value   -> 0: All, 1: Selected Eligibilities; '^' = Exit
 ;                                       
 ; Output Variable -> BPELIG1 = 1 - One or More Eligibilities Selected
 ;                            = 0 - User Entered 'ALL'
 ;                            = "^" - User quit
 ;                            
 ; If BPELIG1 = 1 then the BPELIG1 array will be defined where:
 ;    BPELIG1("C")="CHAMPVA"
 ;    BPELIG1("T")="TRICARE"
 ;    BPELIG1("V")="VETERAN"
 ;
 ;
BPSELIG1 ;
 ;Reset BPELIG1 array
 K BPELIG1
 N DIR,DTOUT,DUOUT,DIRUT,DIROUT,X,Y,P
 N BPSVTC,BPSERR,BPSVTCSTR,BPSSEL,BPSX
 ;
 S BPSVTCSTR=",V,T,C,A,"
 S DIR(0)="FO^0:7"
 S DIR("A",1)=""
 S DIR("A",2)="Select one or more of the following:"
 S DIR("A",3)=""
 S DIR("A",4)="     V         VETERAN"
 S DIR("A",5)="     T         TRICARE"
 S DIR("A",6)="     C         CHAMPVA"
 S DIR("A",7)="     A         ALL"
 S DIR("A",8)=""
 S DIR("A")="Display (V)ETERAN or (T)RICARE or (C)HAMPVA or (A)LL"
 S DIR("B")="A" S:$G(BPARR("ELIG"))'="" DIR("B")=BPARR("ELIG")
 S DIR("?",1)="Enter a single response or multiple responses separated by commas."
 S DIR("?",2)=" Example:"
 S DIR("?",3)=" T"
 S DIR("?")=" T,C"
 D ^DIR K DIR
 I ($G(DUOUT)=1)!($G(DTOUT)=1)!($D(DIRUT)) Q "^"
 ;
 ;Convert any lower case to upper case
 S X=$TR(X,BPSLC,BPSUC)
 ;
 ;If 'A' was one of the selections, reset X to include all available selections.
 I X[",",X["A" S X="V,T,C"
 ;
 ; Loop through user input (returned in variable X).
 ; Display warning message if any user input selection is not included
 ; in the string of acceptable codes (BPSVTCSTR) and re-prompt question.
 ; Assign valid selections to BPSVTC array. This array will prevent
 ; duplicate entries from being saved to the user's profile.
 ;
 K BPSVTC
 S BPSERR=""
 F BPSX=1:1:$L(X,",") D
 . S BPSSEL=$P(X,",",BPSX)
 . I BPSVTCSTR'[(","_BPSSEL_",") W !," ",BPSSEL," is not a valid entry." S BPSERR=1 Q
 . ; if All was selected don't include in array
 .   I BPSSEL'="A" S BPELIG1(BPSSEL)=$S(BPSSEL="V":"VETERAN",BPSSEL="T":"TRICARE",BPSSEL="C":"CHAMPVA",1:"")
 ;
 I $G(BPSERR)=1 G BPSELIG1
 ;
 ; ALL was selected
 I X="A" S BPELIG1=0
 E  D  ; 
 . ;User selected one or more eligibilities
 . S BPELIG1=1
 . ;
 . ; Display the user selections
 . ;
 . S BPSSEL=""
 . F  S BPSSEL=$O(BPELIG1(BPSSEL)) Q:BPSSEL=""  W !,?10,BPELIG1(BPSSEL)
 ;
 Q BPELIG1
 ;
SELALRC() ; 
 ; Display Most (R)ecent or (A)ll
 ;
 ; Return Value ->   A: All
 ;                   R: Most Recent
 ;                   ^: Exit
 ;
 N DIR,X,Y,DIRUT,DTOUT,DUOUT,DIROUT
 ;
 S DIR(0)="S^R:Most Recent;A:ALL"
 S DIR("A")="Select Most (R)ecent or (A)ll"
 S DIR("B")="MOST RECENT"
 S DIR("L",1)="Select one of the following:"
 S DIR("L",2)=""
 S DIR("L",3)="     R         Most Recent Transaction Only"
 S DIR("L",4)="     A         ALL Transactions (will list the Rx/Fill each time resubmitted)"
 D ^DIR K DIR
 ;
 ;Check for "^" or timeout, 
 I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^"
 Q Y
 ;
SELNBSTS() ; 
 ; Select the Non-Billable Status Reason
 ; 
 ; Input Variable -> None
 ; Return Value   -> 0: All, 1: Selected Non-Billable Status; '^' = Exit
 ;                                       
 ; Output Variable -> BPNBSTS = 1 - One or More Non-Billable Statuses Selected
 ;                            = 0 - User Entered 'ALL'
 ;                            = "" - User quit
 ;                            
 ; If BPNBSTS = 1 then the BPNBSTS array will be defined where:
 ;    BPNBSTS(Non-Billable Status IEN)=Non-Billable Status Reason
 ;
 ;Reset BPNBSTS array
 K BPNBSTS
 N DIR,DTOUT,DUOUT,DIRUT,DIROUT,X,Y,P,DIC
 ;
 ;First see if they want to enter individual eligibilities or ALL
 S DIR(0)="S^S:NON-BILLABLE STATUS;A:ALL"
 S DIR("A")="Select Certain Non-Billable (S)tatus or (A)ll"
 S DIR("B")="ALL"
 S DIR("L",1)="Select one of the following:"
 S DIR("L",2)=""
 S DIR("L",3)="     S         NON-BILLABLE STATUS"
 S DIR("L",4)="     A         ALL"
 D ^DIR K DIR
 ;
 ;Check for "^" or timeout, otherwise define BPNBSTS
 I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^"
 S BPNBSTS=$S(Y="A":0,Y="^":"^",1:1)
 I BPNBSTS'=1 Q BPNBSTS
 ;
 ;Allow user to select multiple non-billable statuses
 F  D  Q:Y="^"!(Y="")
 .;Prompt for entry - ICR 6136
 .K X
 .S DIC(0)="QEAM",DIC=366.17,DIC("A")="Select Non-Billable Reason: "
 .W ! D ^DIC
 .I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^" Q
 .;
 .;Check for blank entry, quit if no previous selections
 .I $G(Y)=-1 S Y=$S($D(BPNBSTS)>9:"",1:"^") Q
 .;
 .; Add entry to array or handle duplicate entries
 .I '$D(BPNBSTS($P(Y,U,1))) S BPNBSTS($P(Y,U,1))=$P(Y,U,2),BPNBSTS("B",$P(Y,U,2),$P(Y,U,1))=""
 .E  D  I Y="^" Q
 ..;Already in the array, so ask whether to delete
 ..N P
 ..S P=Y  ;Save Original Value
 ..S DIR(0)="S^Y:YES;N:NO",DIR("A")="Delete "_$P(P,U,2)_" from your list?"
 ..S DIR("B")="NO"
 ..D ^DIR
 ..I ($G(DUOUT)=1)!($G(DTOUT)=1) S Y="^" Q
 ..I Y="Y" K BPNBSTS($P(P,U,1)),BPNBSTS("B",$P(P,U,2),$P(P,U,1))
 ..S Y=P  ;Restore Original Value
 ..K P
 .;
 .;Display a list of selected values
 .I $D(BPNBSTS)>9 D
 ..N X
 ..W !,?2,"Selected:"
 ..S X="" F  S X=$O(BPNBSTS("B",X)) Q:X=""  W !,?10,X
 ..K X
 .Q
 ;
 ; Reset BPNBSTS array if user exited
 I Y="^" K BPNBSTS S BPNBSTS="^" Q "^"
 ;
 ; Deleted 'x-ref' as we don't need to return that
 K BPNBSTS("B")
 ; 
 Q 1
 ;
