MMRSCRE3 ;LEIDOS/TCK - Print CRE Report Cont. (Contains functions to collect patient labs and swabbing rate) ; 3/3/17 10:47am
 ;;1.0;MDRO PROGRAM TOOLS;**4,5**;Jun 01, 2016;Build 146
 ;
GETLABS ;Gets all lab data for the report.
 N LRMDRO,LOC,INDT,DFN,OUTDT,NARES24,NARES48,SURV48,CULT48,MRSA365,CULT365,KNOWMRSA,KNOWCULT,NARES24A,NARES48ASURV48A,NARES48A
 N MRSAFR,MRSATO,MRSA365A,CULT365A,SURV48A,NARES24D,NARES48D,SURV48D,MRSACPRD,TRANS,MMRSNOW
 N CNTR
 S CNTR=0
 S MMRSNOW=$$NOW^XLFDT(),LREND=MMRSNOW
 S LRMDRO="",LRMDRO=$O(^MMRS(104.2,"B","CRB-R",LRMDRO))
 S ^TMP($J,"MMRSCRE","DSUM")="0^0^0^0^0^0^0^0^0"
 S LOC="" F  S LOC=$O(^TMP($J,"MMRSCRE","D",LOC)) Q:LOC=""  D
 .S ^TMP($J,"MMRSCRE","DSUM",LOC)="0^0^0^0^0^0^0^0^0"
 .S DFN=0 F  S DFN=$O(^TMP($J,"MMRSCRE","D",LOC,DFN)) Q:'DFN  D
 ..S INDT="" F  S INDT=$O(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT)) Q:'INDT  D
 ...S DIV="",DIV=$O(^DG(40.8,"B",LOC,DIV))
 ...I DIV'="" S MDIV="",MDIV=$O(^MMRS(104,"B",DIV,MDIV))
 ...Q:$G(MDIV)'>0
 ...S (CR,MRSA)=""
 ...S LOCSUM=$G(^TMP($J,"MMRSCRE","DSUM",LOC))
 ...S SUM=$G(^TMP($J,"MMRSCRE","DSUM"))
 ...S DATA=$G(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT))
 ...S OUTDT=$P(DATA,"^",10)
 ...S ORDLOC=$P(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT),"^")
 ...I $G(ORDLOC)'="" S ORDLOC=$$GET1^DIQ(42,ORDLOC,.01,"E")
 ...I $P(DATA,U,5)=1 D
 ....S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,1)=$P(LOCSUM,U,1)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,1)=$P(SUM,U,1)+1
 ...S MRSA=$$GETLAB(DFN,INDT,LRMDRO,LREND,"CD")
 ...S (CR,I,COLDT)="",DONE=0
 ...Q:MRSA=""
 ...S CR=$P($P(MRSA,"^",2),";") I CR="" S CR="NEG"
 ...Q:CR=""
 ...S DTA=$P(MRSA,"^",2),LRD=$P(DTA,";",2),LRDT=$P(DTA,";",3),LIEN=LRDT_","_LRD_","
 ...S LIENS=LRDT_","_LRD_","
 ...S COLDT=$$GET1^DIQ(63.05,LIEN,.01,"I")
 ...S SRCE=$P(MRSA,"^",3)
 ...Q:SRCE=""
 ...S SVC="N",CC="Y"
 ...S DATA=$G(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT))
 ...Q:DATA=""
 ...S ADMDT=$P(DATA,"^",3),MOVMENT=$P(DATA,"^",4)
 ...S DTA=$P(MRSA,"^",2),LRD=$P(DTA,";",2),LRDT=$P(DTA,";",3),LRSS=$P(DTA,";",4),NEG=$P(DTA,";")
 ...S LIENS=LRDT_","_LRD_","
 ...S COLDT=$$GET1^DIQ(63.05,LIENS,.01,"I")
 ...I $G(MOVMENT)>0 D
 ....S TRNACT=$P(DATA,U,5) ;$$GET1^DIQ(405,MOVMENT,.02,"E")
 ....I TRNACT'=1 S DONE=1 Q   ;"ADMISSION"
 ....;S DSCHRGE=$$GET1^DIQ(405,MOVMENT,.17,"I")
 ....S DSCHRGE=OUTDT  ;$$GET1^DIQ(405,DSCHRGE,.01,"I")
 ....I $G(DSCHRGE)'="" D
 .....S DTA=$P(MRSA,"^",2),LRD=$P(DTA,";",2),LRDT=$P(DTA,";",3),LRSS=$P(DTA,";",4),NEG=$P(DTA,";")
 .....Q:$G(DTA)=""
 .....S LIENS=LRDT_","_LRD_","
 .....S COLDT=$$GET1^DIQ(63.05,LIENS,.01,"I")
 .....I DSCHRGE<COLDT D
 ......K ^TMP($J,"MMRSCRE","D",LOC,DFN,INDT)
 ......K ^TMP($J,"MMRSCRE","DETAIL",LOC,INDT)
 ......K LIENS S DONE=1
 ...Q:DONE
 ...I $D(^MMRS(104,MDIV,61,"B",SRCE)) S SVC="Y",CC="N"
 ...I $D(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT)) D
 ....S DATA=$G(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT))
 ....S ACT=$P(DATA,"^",5)
 ....Q:$P(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT),"^",13)=""
 ....S DTA=$P(MRSA,"^",2),LRD=$P(DTA,";",2),LRDT=$P(DTA,";",3),LRSS=$P(DTA,";",4),NEG=$P(DTA,";")
 ....Q:$G(DTA)=""
 ....S LIENS=LRDT_","_LRD_","
 ....S COLDT=$$GET1^DIQ(63.05,LIENS,.01,"I")
 ....S X=$$FMDIFF^XLFDT(COLDT,INDT,3),X=$P(X," ")
 ....I X>2!('CR) D  Q
 .....K MRSA
 .....I $D(^TMP($J,"MMRSCRE","DETAIL",LOC,INDT)) K ^TMP($J,"MMRSCRE","DETAIL",LOC,INDT)
 ....S SURV=$P(^TMP($J,"MMRSCRE","D",LOC,INDT,DFN),"^",13)
 ....I SURV=SVC K MRSA(I) Q
 ....I SURV'=SVC S $P(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT),"^",13)="N",$P(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT),"^",14)="Y" K MRSA(I)
 ...Q:$G(MRSA)=""
 ...I CR["POS",'PFLG D
 ....Q:$D(^TMP($J,"MMRSCRE","DETAIL",LOC,INDT))
 ....S ^TMP($J,"MMRSCRE","DETAIL",LOC,INDT)=$P(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT),U,6,9)
 ...I CR["POS",$D(^TMP($J,"MMRSCRE","DETAIL",LOC,INDT)),$P(^TMP($J,"MMRSCRE","DETAIL",LOC,INDT),U,13)="",'PFLG S ^TMP($J,"MMRSCRE","DETAIL",LOC,INDT)=^TMP($J,"MMRSCRE","DETAIL",LOC,INDT)_U_COLDT_U_SRCE_U_SVC_U_CC_U_CR
 ...S MRSAFR=(INDT-10000) I STRTDT>INDT S MRSAFR=(STRTDT-10000) ;(ADM - 1 year) or  (START DT - 1 year) - whichever is later
 ...D PREV ;Calculate prevalence measures
 S X=""
 Q
 ;
PREV ;Calculate prevalence measures (summary report)
 N LOCSUM,SUM,DATA,IND
 S LOCSUM=$G(^TMP($J,"MMRSCRE","DSUM",LOC))
 S SUM=$G(^TMP($J,"MMRSCRE","DSUM"))
 S DATA=$G(^TMP($J,"MMRSCRE","D",LOC,DFN,INDT))
 I $P(DATA,U,5)'>2 D
 .Q:MRSA'[";"
 .S DTA=$P(MRSA,"^",2),LRD=$P(DTA,";",2),LRDT=$P(DTA,";",3),LRSS=$P(DTA,";",4),NEG=$P(DTA,";")
 .Q:$G(DTA)=""
 .S LIENS=LRDT_","_LRD_","
 .S COLDT=$$GET1^DIQ(63.05,LIENS,.01,"I")
 .Q:COLDT>ENDDT
 .Q:COLDT<INDT
 .S X=$$FMDIFF^XLFDT(COLDT,INDT,3),X=$P(X," ")
 .I X<3 D
 ..I SVC="Y" D
 ...S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,2)=$P(LOCSUM,U,2)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,2)=$P(SUM,U,2)+1
 ...I NEG="POS",'PFLG D
 ....S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,3)=$P(LOCSUM,U,3)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,3)=$P(SUM,U,3)+1
 ....S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,8)=$P(LOCSUM,U,8)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,8)=$P(SUM,U,8)+1
 ..I SVC="N",NEG="POS",'PFLG D
 ...S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,4)=$P(LOCSUM,U,4)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,4)=$P(SUM,U,4)+1
 ...S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,8)=$P(LOCSUM,U,8)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,8)=$P(SUM,U,8)+1
 .I X>2 D
 ..I SVC="Y" D
 ...S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,5)=$P(LOCSUM,U,5)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,5)=$P(SUM,U,5)+1
 ...I NEG["POS",'PFLG D
 ....S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,6)=$P(LOCSUM,U,6)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,6)=$P(SUM,U,6)+1
 ....S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,8)=$P(LOCSUM,U,8)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,8)=$P(SUM,U,8)+1
 ..I SVC="N",NEG["POS",'PFLG D
 ...S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,7)=$P(LOCSUM,U,7)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,7)=$P(SUM,U,7)+1
 ...S $P(^TMP($J,"MMRSCRE","DSUM",LOC),U,8)=$P(LOCSUM,U,8)+1,$P(^TMP($J,"MMRSCRE","DSUM"),U,8)=$P(SUM,U,8)+1
 K MRSA
 Q
 ;
CLNARY(LOC,DFN,MRSA) ;
 N D,ST,VAL,XX,OUTDT
 ;Q:'$D(MRSA(1)
 S XX=9999,XX=$O(MRSA(XX),-1)
 S D="" F  S D=$O(MRSA(D)) Q:D=""  D
 .S IND=$P(MRSA(D),"^",4)
 .S RES=$P($P(MRSA(D),"^",2),";")
 .I RES=""!(RES["NEG") K MRSA(D) Q
 .Q:'$D(^TMP($J,"MMRSCRE","D",LOC,IND,DFN))
 .K ^TMP($J,"MMRSCRE","D",LOC,IND,DFN),MRSA(D)
 .S DTA=MRSA(D)
 .Q:DTA=""
 .S LRD=$P(DTA,";",2),LRDT=$P(DTA,";",3)
 .S DATA=$G(^TMP($J,"MMRSCRE","D",LOC,IND,DFN))
 .S ADMDT=$P(DATA,"^",3),MOVMENT=$P(DATA,"^",4)
 .S OUTDT=$P(DATA,"^",10)
 .S DSCHRG=OUTDT  ;$$GET1^DIQ(405,MOVMENT,.17,"I")
 .;I $G(DSCHRG)>0 S DSCHRG=$$GET1^DIQ(405,MOVMENT,.01,"I")
 .I DSCHRG'="" D  Q
 ..S LIENS=LRDT_","_LRD_","
 ..S COLDT=$$GET1^DIQ(63.05,LIENS,.01,"I")
 ..I DSCHRG<COLDT K ^TMP($J,"MMRSCRE","D",LOC,IND,DFN),MRSA(D) S DONE=1 Q
 .S A=D-1 I $D(MRSA(A)) K MRSA(D) Q
 Q
GETLAB(DFN,LRSTART,LRMDRO,LREND,LRDTTYP) ;RETURN YES/NO^RESULT
 N LRRSLT,LRTST,TMPRSLT
 S LRRSLT="^",TMPRSLT=""
 I $G(DFN)=""!($G(LRMDRO)="")!($G(LRSTART)="")!($G(LREND)="") Q LRRSLT
 ;GET CH RSLTS
 I MDROETIO D
 .S TMPRSLT=$$GETMI(DFN,LRMDRO,LRSTART,LREND,LRDTTYP)
 I TSTSTP D
 .S LRTST=0 F  S LRTST=$O(^TMP($J,"MMRSCRE","T",LRMDRO,LRTST)) Q:'LRTST  D
 .S SUBS=$$GET1^DIQ(60,+LRTST,4,"I")
 .I SUBS="CH" S TMPRSLT=$$GETCH(DFN,LRMDRO,LRTST,LRSTART,LREND,LRDTTYP)
 Q TMPRSLT
 ;
GETCH(DFN,LRMDRO,LRTST,LRSTART,LREND,LRDTTYP,MRSA) ;RETURN YES^RESULT
 N LRRSLT,LRDFN,LRDATE,LRRADEND,DAS,LRIDT,LRSITE,TSTRSLT,LRRAD
 S LRRSLT="^"
 S LRDFN=$$LRDFN^LR7OR1(DFN)
 Q:'LRDFN LRRSLT
 S LRDATE=LRSTART-.0000001
 I LRDTTYP="RAD" S LRDATE=0,LRRADEND=LREND,LREND=9999999
 F  S LRDATE=$O(^PXRMINDX(63,"PI",DFN,+LRTST,LRDATE)) Q:'LRDATE!(LRDATE>LREND)  D
 .Q:LRDATE>ENDDT
 .Q:LRDATE<STRTDT
 .S DAS=0 F  S DAS=$O(^PXRMINDX(63,"PI",DFN,+LRTST,LRDATE,DAS)) Q:'DAS  D
 ..S LRIDT=$P(DAS,";",3)
 ..I LRDTTYP="RAD" S LRRAD=$P($G(^LR(LRDFN,"CH",LRIDT,0)),U,3) I LRRAD<LRSTART!(LRRAD>LRRADEND) Q
 ..Q:LRDATE<STRTDT
 ..Q:LRDATE>ENDDT
 ..Q:$P($G(^LR(LRDFN,"CH",LRIDT,0)),U,3)=""
 ..;GET ORDER NUMBER FROM ORUT MODE
 ..S LRSITE=$P($G(^LR(LRDFN,"CH",LRIDT,0)),U,5)
 ..;Q:$$SCRNTOP(LRSITE,LRMDRO)
 ..;I $D(^LR(LRDFN,"CH",LRIDT,0)),$P(^LR(LRDFN,"CH",LRIDT,0),U,3) D
 ..S $P(LRRSLT,"^",1)="Y"
 ..S TSTRSLT=$$CHRSLT(LRDFN,LRIDT,LRMDRO,LRTST)
 ..I TSTRSLT["POS",(($P(LRRSLT,"^",2)="")!($P($P(LRRSLT,"^",2),";",3)>LRIDT)) D
 ..I ($P(LRRSLT,"^",2)="")!($P($P(LRRSLT,"^",2),";",3)>LRIDT) D
 ...S $P(LRRSLT,"^",2)=(TSTRSLT_";"_LRDFN_";"_LRIDT_";CH")
 ...S LIEN=LRIDT_","_LRDFN_","
 ...S SRCE=$$GET1^DIQ(63.04,LIEN,.05,"E")
 ...S LRRSLT=LRRSLT_"^"_$G(SRCE)
 Q LRRSLT
 ;
GETMI(DFN,LRMDRO,LRSTART,LREND,LRDTTYP) ;RETURN YES^RESULT
 N LRRSLT,LRDFN,LRDATE,LRRADEND,DAS,LRIDT,LRSITE,TSTRSLT,LRRAD,LRIEND,CNTR
 S LRRSLT="^",CNTR=0
 I '$D(^TMP($J,"MMRSCRE","BACT",ORG,"INC_REMARK")),'$D(^TMP($J,"MMRSCRE","ETIOL",ORG)) Q LRRSLT
 S LRDFN=$$LRDFN^LR7OR1(DFN)
 Q:'LRDFN LRRSLT
 S LRIDT=(9999999-LREND)-.0000001
 S LRIEND=9999999-STRTDT
 I LRDTTYP="RAD" S LRIDT=0,LRIEND=99999999
 S (PFLG,DONE)=0
 F  S LRIDT=$O(^LR(LRDFN,"MI",LRIDT)) Q:'LRIDT!(LRIDT>LRIEND)  D  Q:DONE
 .I LRDTTYP="RAD" S LRRAD=$P($G(^LR(LRDFN,"MI",LRIDT,0)),U,3) I LRRAD<LRSTART!(LRRAD>LREND) Q
 .S LRSITE=$P($G(^LR(LRDFN,"MI",LRIDT,0)),U,5)
 .S $P(LRRSLT,"^",1)="Y"
 .S TSTRSLT=$$MIRSLT(LRDFN,LRIDT,ORG)
 .I $P($G(^LR(LRDFN,"MI",LRIDT,1)),U,2)="P" S PFLG=1
 .I TSTRSLT="",$P(LRRSLT,"^")="Y" D
 ..S LIEN=LRIDT_","_LRDFN_","
 ..S SRCE=$$GET1^DIQ(63.05,LIEN,.05,"I")
 ..S TSTRSLT="NEG",$P(LRRSLT,"^",2)=(TSTRSLT_";"_LRDFN_";"_LRIDT_";MI")
 ..S LRRSLT=LRRSLT_"^"_$G(SRCE)_"^"_LRSTART,DONE=1 Q
 .I TSTRSLT["POS",(($P(LRRSLT,"^",2)="")!($P($P(LRRSLT,"^",2),";",3)>LRIDT)) D
 ..S $P(LRRSLT,"^",2)=(TSTRSLT_";"_LRDFN_";"_LRIDT_";MI")
 ..I $G(DATA)'="" S MOVMENT=$P(DATA,U,4)
 ..S DSCHMOV=$$GET1^DIQ(405,MOVMENT,.17,"I")
 ..S DSCHRGE=$G(OUTDT)  ;$$GET1^DIQ(405,DSCHMOV,.01,"I")
 ..S LIEN=LRIDT_","_LRDFN_","
 ..S SRCE=$$GET1^DIQ(63.05,LIEN,.05,"I")
 ..S COLDT=$$GET1^DIQ(63.05,LIEN,.01,"I")
 ..I DSCHRGE>INDT,COLDT>DSCHRGE S LRRSLT="^" Q
 ..S LRRSLT=LRRSLT_"^"_$G(SRCE)_"^"_LRSTART
 ..I COLDT<LRSTART!(COLDT>ENDDT) S LRRSLT="^",TSTRSLT=LRRSLT Q
 ..S CNTR=$G(CNTR)+1
 ..S STOP=0
 ..S RLOC=$$GET1^DIQ(63.05,LIEN,.111,"I")
 ..S DIVLOC=$$GET1^DIQ(44,+RLOC,3.5,"E")
 ..;Q:DIVLOC'=LOC
 ..;S RLOC=$$GET1^DIQ(44,+RLOC,.01,"E")
 ..S RLOC=$$GET1^DIQ(63.05,LIEN,.111,"I"),RLOC=+RLOC,RLOC=$$GET1^DIQ(44,RLOC,.01,"E")
 ..I $G(RLOC)=ORDLOC,$G(CNTR)'>1,'$D(^MMRS(104,MDIV,61,"B",SRCE)) S DONE=1,STOP=1 Q
 ..I $G(RLOC)=ORDLOC,$G(CNTR)'>1 M TMPDATA(DFN)=LRRSLT S LRRSLT="^" Q
 ..I $G(RLOC)=ORDLOC,$G(CNTR)>1,'$D(^MMRS(104,MDIV,61,"B",SRCE)) D  Q
 ...K TMPDATA S DONE=1 Q
 ..Q:STOP
 ..Q:DONE
 ..I $G(RLOC)'=ORDLOC S MOVMENT=$P(DATA,"^",4)
 ..I $G(MOVMENT)>0 D
 ...S WRDLOC=$$GET1^DIQ(405,MOVMENT,.06,"E")
 ...I WRDLOC=ORDLOC,$G(CNTR)'>1,'$D(^MMRS(104,MDIV,61,"B",SRCE)) S DONE=1 Q
 ...I WRDLOC=ORDLOC,$G(CNTR)'>1 M TMPDATA(DFN)=LRRSLT S LRRSLT="^"
 ...I WRDLOC=ORDLOC,$G(CNTR)>1,'$D(^MMRS(104,MDIV,61,"B",SRCE)) D
 ....K TMPDATA S DONE=1 Q
 ...I WRDLOC'=ORDLOC S (TSTRSLT,LRRSLT)="^"
 I $D(TMPDATA(DFN)) M LRRSLT=TMPDATA(DFN)
 Q LRRSLT
 ;
CHRSLT(LRDFN,LRIDT,LRMDRO,LRTST) ;RETURNS 'POS' OR NULL STRING (IF NOT POSITIVE)
 N RESULT,LRLOC,LRND,LRPC,LRRES,LRIND,LRINDVAL,LRSPEC,LRLOW,LRHIG
 S RESULT=""
 S LRLOC=$P($G(^LAB(60,+LRTST,0)),U,5)
 S LRND=$P(LRLOC,";",2) Q:+LRND'>0 RESULT
 S LRPC=$P(LRLOC,";",3) Q:+LRPC'>0 RESULT
 S LRRES=$P($G(^LR(LRDFN,"CH",LRIDT,LRND)),U,LRPC) Q:LRRES="" RESULT
 S LRIND=$P($G(^TMP($J,"MMRSCRE","T",LRMDRO,LRTST,0)),U,1)
 S LRINDVAL=$P($G(^TMP($J,"MMRSCRE","T",LRMDRO,LRTST,0)),U,2)
 Q:LRIND="" RESULT
 I LRIND=1 D  Q RESULT
 .Q:'LRRES
 .S LRSPEC=$P($G(^LR(LRDFN,"CH",LRIDT,0)),U,5) Q:LRSPEC=""
 .Q:'$D(^LAB(60,LRTST,1,LRSPEC,0))
 .S LRLOW=$P(^LAB(60,LRTST,1,LRSPEC,0),U,2),LRHIG=$P(^LAB(60,LRTST,1,LRSPEC,0),U,3)
 .Q:'LRLOW!('LRHIG)
 .I LRRES<LRLOW!(LRRES>LRHIG) S RESULT="POS" Q
 I LRINDVAL="" Q RESULT
 S LRRES=$$UP^XLFSTR(LRRES),LRINDVAL=$$UP^XLFSTR(LRINDVAL)
 I LRIND=2,(LRRES[LRINDVAL) Q "POS"
 I LRIND=3,(LRRES>LRINDVAL) Q "POS"
 I LRIND=4,(LRRES<LRINDVAL) Q "POS"
 I LRIND=5,(LRRES=LRINDVAL) Q "POS"
 Q RESULT
MIRSLT(LRDFN,LRIDT,LRMDRO) ;RETURNS 'POS' OR NULL STRING (IF NOT POSITIVE)
 N RESULT,LRETND,LRETI,LRANTI,LRANTIND,LRANTINV,LRAND,LRRES,BACTRPT,RPTRMRK,LRANTIEN
 S RESULT=""
 ;Check Etiology
 I $D(^TMP($J,"MMRSCRE","ETIOL",LRMDRO)) D  Q:RESULT="POS" RESULT
 .S LRETND=0 F  S LRETND=$O(^LR(LRDFN,"MI",LRIDT,3,LRETND)) Q:'LRETND!(RESULT="POS")  D
 ..S LRETI=$P($G(^LR(LRDFN,"MI",LRIDT,3,LRETND,0)),U)
 ..Q:+LRETI'>0
 ..I ('$O(^TMP($J,"MMRSCRE","ETIOL",LRMDRO,LRETI,0))) D  Q
 ...I $D(^TMP($J,"MMRSCRE","ETIOL",LRMDRO,LRETI)) S RESULT="POS"
 ..S LRANTI=0 F  S LRANTI=$O(^TMP($J,"MMRSCRE","ETIOL",LRMDRO,LRETI,LRANTI)) Q:'LRANTI  D
 ...S LRANTIEN=$P(^TMP($J,"MMRSCRE","ETIOL",LRMDRO,LRETI,LRANTI),U,1)
 ...S LRANTIND=$P(^TMP($J,"MMRSCRE","ETIOL",LRMDRO,LRETI,LRANTI),U,2)
 ...S LRANTINV=$P(^TMP($J,"MMRSCRE","ETIOL",LRMDRO,LRETI,LRANTI),U,3)
 ...;S LRAND=$P($G(^LAB(62.06,LRANTI,0)),U,2) Q:LRAND=""
 ...S LRAND=$$ABDN^LRPXAPIU(LRANTIEN) Q:'LRAND
 ...Q:$P($G(^LR(LRDFN,"MI",LRIDT,3,LRETND,LRAND)),U,2)=""
 ...Q:$$UP^XLFSTR($E($P($G(^LR(LRDFN,"MI",LRIDT,3,LRETND,LRAND)),U,2),1,1))="S"
 ...I LRANTIND=""!(LRANTINV="") Q
 ...;S LRRES=$$UP^XLFSTR($E($P($G(^LR(LRDFN,"MI",LRIDT,3,LRETND,LRAND)),U,2),1,1))
 ...S LRRES=$$UP^XLFSTR($P($G(^LR(LRDFN,"MI",LRIDT,3,LRETND,LRAND)),U,2))
 ...S LRANTINV=$$UP^XLFSTR(LRANTINV)
 ...S LRANTIND=$$UP^XLFSTR(LRANTIND)
 ...I LRANTIND=1,(LRRES[LRANTINV) S RESULT="POS" Q
 ...I LRANTIND=2,(LRRES>LRANTINV) S RESULT="POS" Q
 ...I LRANTIND=3,(LRRES<LRANTINV) S RESULT="POS" Q
 ...I LRANTIND=4,(LRRES=LRANTINV) S RESULT="POS" Q
 Q:RESULT="POS" "POS"
 ;Check Bacteriology Report Remarks
 I '$D(^TMP($J,"MMRSCRE","BACT",LRMDRO,"INC_REMARK")) Q RESULT
 S BACTRPT=0 F  S BACTRPT=$O(^LR(LRDFN,"MI",LRIDT,4,BACTRPT)) Q:'BACTRPT!(RESULT="POS")  D
 .S RPTRMRK=$P($G(^LR(LRDFN,"MI",LRIDT,4,BACTRPT,0)),U,1)
 .Q:RPTRMRK=""
 .I $$BACTRPT(LRMDRO,"INC_REMARK",RPTRMRK)&('$$BACTRPT(LRMDRO,"EXC_REMARK",RPTRMRK)) S RESULT="POS"
 Q RESULT
 ;
SCRNTOP(LRSITE,LRMDRO) ;CHECK TO SEE IF SCREEN ON SITE
 Q:+LRSITE'>0 0
 I $D(^TMP($J,"MMRSCRE","TOP",LRMDRO,"INC_TOP"))&$D(^TMP($J,"MMRSCRE","TOP",LRMDRO,"EXC_TOP")) Q 0
 I '$D(^TMP($J,"MMRSCRE","TOP",LRMDRO,"INC_TOP"))&'$D(^TMP($J,"MMRSCRE","TOP",LRMDRO,"EXC_TOP")) Q 0
 I ($D(^TMP($J,"MMRSCRE","TOP",LRMDRO,"INC_TOP")))&($D(^TMP($J,"MMRSCRE","TOP",LRMDRO,"INC_TOP",LRSITE))) Q 0
 I ($D(^TMP($J,"MMRSCRE","TOP",LRMDRO,"EXC_TOP")))&('$D(^TMP($J,"MMRSCRE","TOP",LRMDRO,"EXC_TOP",LRSITE))) Q 0
 Q 1
BACTRPT(LRMDRO,RPTTYPE,RPTRMRK) ;Is this comment contained in the parameters
 N RESULT,MMRSI,LRINDVAL
 S RESULT=0
 S MMRSI=0 F  S MMRSI=$O(^TMP($J,"MMRSCRE","BACT",LRMDRO,RPTTYPE,MMRSI)) Q:'MMRSI!(RESULT=1)  D
 .S LRINDVAL=$G(^TMP($J,"MMRSCRE","BACT",LRMDRO,RPTTYPE,MMRSI))
 .I ($$UP^XLFSTR(RPTRMRK))[($$UP^XLFSTR(LRINDVAL)) S RESULT=1
 Q RESULT
 ;
END ;
 K A,ACT,ADMDT,CC,COLDT,CR,DIV,DIVLOC,DONE,DSCHMOV,DSCHRGE,DTA
 K ENDDT,I,LIEN,LRD,LRDT,LRSS,MDIV,MDROETIO,MOVEMENT,NEG
 K ORDLOC,ORG,PFLG,RES,RLOC,SRCE,STOP,STRTDT,SUBS,SURV,SVC
 K TRNACT,TSTSTP,WRDLOC,X,DSCHRG,MOVMENT
 Q
 ;