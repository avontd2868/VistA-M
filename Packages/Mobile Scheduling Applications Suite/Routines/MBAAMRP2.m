MBAAMRP2 ;OIT-PD/CKU - APPOINTMENT RPC ;02/10/2016
 ;;1.0;Scheduling Calendar View;**1**;May 5, 2015;Build 85
 ;
 Q
MAKE(RV,DFN,SC,SD,TYPE,STYP,LEN,SRT,OTHR,CIO,LAB,XRAY,EKG,RQXRAY,CONS,LVL,DESDT) ; MBAA RPC: MBAA APPOINTMENT MAKE
 N STATUS,RESULT
 S STATUS=$$MAKE^MBAAMAP2(.RESULT,DFN,SC,SD,TYPE,STYP,LEN,SRT,$G(OTHR),$G(CIO),$G(LAB),$G(XRAY),$G(EKG),$G(RQXRAY),$G(CONS),$G(LVL),$G(DESDT))
 D MERGE^MBAAMRPC(.RV,.RESULT)
 S RV(0)=$G(RV)
 Q
 ;code below is not being used in the initial release of MBAA. It will be released at a later date in a future release of MBAA
 ;MAKEUS(RV,DFN,SC,SD,TYP,STYP) ; SD APPOINTMENT MAKE UNSCH
 ; N STATUS,RESULT S STATUS=$$MAKEUS^MBAAMAP2(.RESULT,DFN,SC,SD,TYP,STYP)
 ; D MERGE^MBAAMRPC(.RV,.RESULT)
 ; Q
 ;CHKAPP(RV,SC,DFN,SD,LEN) ; SD APPOINTMENT CHECK
 ; N STATUS,RESULT S STATUS=$$CHKAPP^MBAAMAP2(.RESULT,SC,DFN,SD,LEN)
 ; D MERGE^MBAAMRPC(.RV,.RESULT)
 ; Q
CHECKIN(RV,DFN,SD,SC,CHKINDT) ; SD APPOINTMENT CHECK-IN
 I $G(CHKINDT)="" D NOW^%DTC S CHKINDT=% K %
 N STATUS,RESULT S STATUS=$$CHECKIN^MBAAMAP2(.RESULT,DFN,SD,SC,CHKINDT)
 D MERGE^MBAAMRPC(.RV,.RESULT)
 Q
 ;CANCEL(RV,DFN,SC,SD,TYPE,RSN,RMK) ; SD APPOINTMENT CANCEL
 ; N STATUS,RESULT S STATUS=$$CANCEL^MBAAMAP2(.RESULT,DFN,SC,SD,TYPE,RSN,RMK)
 ; D MERGE^MBAAMRPC(.RV,.RESULT)
 ; Q
 ;NOSHOW(RV,DFN,SC,SD,LVL) ; SD APPOINTMENT NOSHOW
 ; N STATUS,RESULT S STATUS=$$NOSHOW^MBAAMAP2(.RESULT,DFN,SC,SD,LVL)
 ; I 'STATUS S RV=-1
 ; D MERGE^MBAAMRPC(.RV,.RESULT)
 ; Q
LSTAPPT(RV,SEARCH,START,NUMBER) ; MBAA RPC: MBAA APPOINTMENT LIST BY NAME
 N STATUS,RESULT S STATUS=$$LSTAPPT^MBAAMAP1(.RESULT,$G(SEARCH),$G(START),$G(NUMBER))
 I 'STATUS S RV=-1
 D MERGE^MBAAMRPC(.RV,.RESULT)
 Q
 ;code below is not being used in the initial release of MBAA. It will be released at a later date in a future release of MBAA
 ;GETAPPT(RV,TYPE) ; SD GET APPOINTMENT TYPE
 ; N STATUS,RESULT S STATUS=$$GETAPPT^MBAAMAP1(.RESULT,TYPE)
 ; I 'STATUS S RV=-1
 ; D MERGE^MBAAMRPC(.RV,.RESULT)
 ; Q
 ;GETELIG(RV,ELIG) ; SD GET ELIGIBILITY DETAILS
 ; N STATUS,RESULT S STATUS=$$GETELIG^MBAAMAP1(.RESULT,ELIG)
 ; I 'STATUS S RV=-1
 ; D MERGE^MBAAMRPC(.RV,.RESULT)
 ; Q
