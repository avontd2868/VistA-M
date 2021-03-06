IBJTU5 ;ALB/ARH - TPI UTILITIES - BILLS/CLAIMS TRACKING ; 2/14/95
 ;;Version 2.0 ; INTEGRATED BILLING ;**39**; 21-MAR-94
 ;;Per VHA Directive 10-93-142, this routine should not be modified.
 ;
IFNTRN(IBIFN,ARRAY,ARR2) ; find CT records for events on a bill: inpt adm, outpt vsts, rx refills, prosthetics
 ; sets ARRAY=COUNT, ARRAY(IBTRN)="", if bill passed in defined
 ;                   ARR2(DATE_TRN)=TRN
 ;
 N IBI,IBX,IBY,IBD0,DFN,IBTYP,IBTRN,IBDT,IBBDT,IBEDT,IBRX,IBRXN,IBPR,IBPRN,IBPM,IBPTF K ARRAY,ARR2
 S ARRAY=0,IBD0=$G(^DGCR(399,+$G(IBIFN),0)) I IBD0="" G IFNQ
 S DFN=$P(IBD0,U,2)
 ;
 ; -- directly linked through 356.399  (not always correct)
 ;S IBI=0 F  S IBI=$O(^IBT(356.399,"C",IBIFN,IBI)) Q:'IBI  S IBX=+$G(^IBT(356.399,IBI,0)) I +IBX S ARRAY(+IBX)=""
 ;
 ; -- scheduled admissions (all on event date of inpatient bills)
 S IBTYP=5 I $P(IBD0,U,5)<3 D
 . S IBDT=$P(IBD0,U,3),IBBDT=$E(IBDT,1,7)-.00001,IBEDT=$E(IBDT,1,7)+.7
 . F  S IBBDT=$O(^IBT(356,"APTY",DFN,IBTYP,IBBDT)) Q:'IBBDT!(IBBDT>IBEDT)  D
 .. S IBTRN=0 F  S IBTRN=$O(^IBT(356,"APTY",DFN,IBTYP,IBBDT,IBTRN)) Q:'IBTRN  D
 ... S ARRAY(IBTRN)="",IBY=IBBDT_"_"_IBTRN,ARR2(IBY)=IBTRN
 ;
 ; -- inpt admission (CT records on bill event date whose PM matches the bills PTF)
 S IBTYP=1 S IBPTF=+$P(IBD0,U,8) I +IBPTF  D
 . S IBDT=$P(IBD0,U,3),IBBDT=$E(IBDT,1,7)-.00001,IBEDT=$E(IBDT,1,7)+.7
 . F  S IBBDT=$O(^IBT(356,"APTY",DFN,IBTYP,IBBDT)) Q:'IBBDT!(IBBDT>IBEDT)  D
 .. S IBTRN=0 F  S IBTRN=$O(^IBT(356,"APTY",DFN,IBTYP,IBBDT,IBTRN)) Q:'IBTRN  D
 ... S IBPM=+$P($G(^IBT(356,IBTRN,0)),U,5) I +IBPM,$D(^DGPM("APTF",IBPTF,IBPM)) D
 .... S ARRAY(IBTRN)="",IBY=IBBDT_"_"_IBTRN,ARR2(IBY)=IBTRN
 ;
 ; -- outpatient visits (all CT visits on bills's opt visit dates)
 S IBTYP=2,IBDT=0 F  S IBDT=$O(^DGCR(399,IBIFN,"OP",IBDT)) Q:'IBDT  D
 . S IBBDT=$E(IBDT,1,7)-.00001,IBEDT=$E(IBDT,1,7)+.7
 . F  S IBBDT=$O(^IBT(356,"APTY",DFN,IBTYP,IBBDT)) Q:'IBBDT!(IBBDT>IBEDT)  D
 .. S IBTRN=0 F  S IBTRN=$O(^IBT(356,"APTY",DFN,IBTYP,IBBDT,IBTRN)) Q:'IBTRN  D
 ... S ARRAY(IBTRN)="",IBY=IBBDT_"_"_IBTRN,ARR2(IBY)=IBTRN
 ;
 ; -- rx refills (matches rx's (52: (362.4,.05)=(356,.08)) for refill dates on bill)
 S IBTYP=4,IBI=0 F  S IBI=$O(^IBA(362.4,"C",IBIFN,IBI)) Q:'IBI  D
 . S IBRX=$G(^IBA(362.4,IBI,0)),IBDT=$P(IBRX,U,3),IBRXN=$P(IBRX,U,5) Q:'IBRXN
 . S IBBDT=$E(IBDT,1,7)-.00001,IBEDT=$E(IBDT,1,7)+.7
 . F  S IBBDT=$O(^IBT(356,"APTY",DFN,IBTYP,IBBDT)) Q:'IBBDT!(IBBDT>IBEDT)  D
 .. S IBTRN=0 F  S IBTRN=$O(^IBT(356,"APTY",DFN,IBTYP,IBBDT,IBTRN)) Q:'IBTRN  D
 ... I $P($G(^IBT(356,IBTRN,0)),U,8)=IBRXN S ARRAY(IBTRN)="",IBY=IBBDT_"_"_IBTRN,ARR2(IBY)=IBTRN
 ;
 ; -- prosthetics (matches pd's (660: (362.5,.04)=(356,.09)) for delivery dates on bill)
 S IBTYP=3,IBX="AIFN"_IBIFN,IBDT=0 F  S IBDT=$O(^IBA(362.5,IBX,IBDT)) Q:'IBDT  D
 . S IBI=0 F  S IBI=$O(^IBA(362.5,IBX,IBDT,IBI)) Q:'IBI  D
 .. S IBPR=$G(^IBA(362.5,IBI,0)),IBPRN=$P(IBPR,U,4) Q:'IBPRN
 .. S IBBDT=$E(IBDT,1,7)-.00001,IBEDT=$E(IBDT,1,7)+.7
 .. F  S IBBDT=$O(^IBT(356,"APTY",DFN,IBTYP,IBBDT)) Q:'IBBDT!(IBBDT>IBEDT)  D
 ... S IBTRN=0 F  S IBTRN=$O(^IBT(356,"APTY",DFN,IBTYP,IBBDT,IBTRN)) Q:'IBTRN  D
 .... I $P($G(^IBT(356,IBTRN,0)),U,9)=IBPRN S ARRAY(IBTRN)="",IBY=IBBDT_"_"_IBTRN,ARR2(IBY)=IBTRN
 ;
 S IBI=0 F  S IBI=$O(ARRAY(IBI)) Q:'IBI  S ARRAY=ARRAY+1
IFNQ Q
