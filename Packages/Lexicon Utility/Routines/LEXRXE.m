LEXRXE ;ISL/KER - Re-Index 757.1 B/AMCC/AMCT/ASTT ;08/17/2011
 ;;2.0;LEXICON UTILITY;**81**;Sep 23, 1996;Build 1
 ;               
 ; Global Variables
 ;    ^LEX(               SACC 1.3
 ;    ^LEX(757.1,         SACC 1.3
 ;    ^LEX(757,           SACC 1.3 
 ;    ^LEX(757.11,        SACC 1.3 
 ;    ^LEX(757.12,        SACC 1.3 
 ;               
 ; External References
 ;    FILE^DID            ICR  2052
 ;    IX1^DIK             ICR  10013
 ;    $$FMDIFF^XLFDT      ICR  10103
 ;    $$NOW^XLFDT         ICR  10103
 ;               
 ; Local Variables NEWed or KILLed Elsewhere
 ;     LEXNAM     Task name       NEWed/KILLed by LEXRXXT
 ;     LEXSET     Re-Index flag   NEWed/KILLed by LEXRXXT
 ;     LEXQ       Quiet flat      NEWed/KILLed by LEXRXXT2
 ;     LEXTEST    Test variable   NEWed/KILLed by Developer
 ;     ZTQUEUED   Task flag       NEWed/KILLed by Taskman
 ;               
 Q
EN ; Main Entry Point
R7571 ; Repair file 757.1
 D RB,RAMCC,RAMCT,RASTT,SET
 Q
RB ;   Index    ^LEX(757.1,"B",MC,IEN) 
 N DA,DIK,LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXFI,LEXIDX,LEXIDXT,LEXIEN,LEXMC,LEXNDS,LEXOK,LEXSTR
 S LEXFI="757.1"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.1 ""B""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXSTR="",LEXFI="757.1",LEXIDX="B",LEXIDXT="^LEX(757.1,""B"",MC,IEN)"
 F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXSTR)) Q:'$L(LEXSTR)  D
 . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN)) Q:+LEXIEN'>0  D
 . . S LEXNDS=LEXNDS+1 N LEXOK,LEXMC S LEXMC=$P($G(^LEX(LEXFI,LEXIEN,0)),"^",1)
 . . S LEXOK=0 S:LEXMC=LEXSTR LEXOK=1 I 'LEXOK D
 . . . S LEXERR=LEXERR+1 K:'$D(LEXTEST) ^LEX(LEXFI,LEXIDX,LEXSTR,LEXIEN) S:$L(LEXMC) ^LEX(LEXFI,LEXIDX,LEXMC,LEXIEN)=""
 . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXSTR,?58,"  ",LEXIEN
 S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,DIK,LEXMC S DA=LEXIEN,LEXMC=$P($G(^LEX(LEXFI,DA,0)),"^",1) Q:+LEXMC'>0  Q:'$D(^LEX(757,+LEXMC,0))
 . I '$D(^LEX(LEXFI,LEXIDX,LEXMC,DA)) D
 . . S LEXERR=LEXERR+1 I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Missing ",LEXMC,?58,"  ",DA
 . S:$L(LEXMC) ^LEX(LEXFI,LEXIDX,LEXMC,DA)=""
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"") I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
RAMCC ;   Index    ^LEX(757.1,"AMCC",MC,SC,IEN) 
 N DA,DIK,LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXFI,LEXIDX,LEXIDXT,LEXIEN,LEXMAJ,LEXNDS,LEXOK,LEXSO,LEXSTR
 S LEXFI="757.1"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.1 ""AMCC""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXSTR=0,LEXFI=757.1,LEXIDX="AMCC",LEXIDXT="^LEX(757.1,""AMCC"",MC,SC,IEN) "
 S LEXMAJ=0 F  S LEXMAJ=$O(^LEX(LEXFI,LEXIDX,LEXMAJ)) Q:+LEXMAJ'>0  D
 . N LEXSTR S LEXSTR="" F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXMAJ,LEXSTR)) Q:'$L(LEXSTR)  D
 . . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIDX,LEXMAJ,LEXSTR,LEXIEN)) Q:+LEXIEN'>0  D
 . . . S LEXNDS=LEXNDS+1 N LEXOK,LEXMC,LEXSC S LEXMC=$P($G(^LEX(LEXFI,LEXIEN,0)),U,1)
 . . . S LEXSC=$P($G(^LEX(LEXFI,LEXIEN,0)),U,2),LEXSC=$P($G(^LEX(757.11,+LEXSC,0)),U,1)
 . . . S LEXOK=1 S:LEXMC'=LEXMAJ LEXOK=0 S:LEXSTR'=LEXSC LEXOK=0 I 'LEXOK D
 . . . . S LEXERR=LEXERR+1 K:'$D(LEXTEST) ^LEX(LEXFI,LEXIDX,LEXMAJ,LEXSTR,LEXIEN)
 . . . . S:$L(LEXSC)&(+LEXMC>0) ^LEX(LEXFI,LEXIDX,LEXMC,LEXSC,LEXIEN)=""
 . . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXMC,"/",LEXSTR,?58,"  ",LEXIEN
 S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,LEXMC,LEXSC,DIK S DA=LEXIEN,LEXMC=$P($G(^LEX(LEXFI,DA,0)),U,1) Q:+LEXMC'>0
 . S LEXSC=$P($G(^LEX(LEXFI,DA,0)),U,2),LEXSC=$E($P($G(^LEX(757.11,+LEXSC,0)),U,1),1,3) Q:$L(LEXSC)'=3
 . I '$D(^LEX(LEXFI,LEXIDX,LEXMC,LEXSC,DA)) D
 . . S LEXERR=LEXERR+1 I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Missing ",LEXMC,"/",LEXSC,?58,"  ",DA
 . S:$L(LEXMC)&($L(LEXSC)) ^LEX(LEXFI,LEXIDX,LEXMC,LEXSC,DA)=""
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"") I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
RAMCT ;   Index    ^LEX(757.1,"AMCT",MC,ST,IEN) 
 N DA,DIK,LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXFI,LEXIDX,LEXIDXT,LEXIEN,LEXMAJ,LEXNDS,LEXOK,LEXSO,LEXSTR
 S LEXFI="757.1"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.1 ""AMCT""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXSTR=0,LEXFI=757.1,LEXIDX="AMCT",LEXIDXT="^LEX(757.1,""AMCT"",MC,ST,IEN)"
 S LEXMAJ=0 F  S LEXMAJ=$O(^LEX(LEXFI,LEXIDX,LEXMAJ)) Q:+LEXMAJ'>0  D
 . N LEXSTR S LEXSTR="" F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXMAJ,LEXSTR)) Q:'$L(LEXSTR)  D
 . . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIDX,LEXMAJ,LEXSTR,LEXIEN)) Q:+LEXIEN'>0  D
 . . . S LEXNDS=LEXNDS+1 N LEXOK,LEXMC,LEXST S LEXOK=1,LEXMC=$P($G(^LEX(LEXFI,LEXIEN,0)),U,1)
 . . . S LEXST=$P($G(^LEX(LEXFI,LEXIEN,0)),U,3) S:LEXMC'=LEXMAJ LEXOK=0 S:LEXSTR'=LEXST LEXOK=0 I 'LEXOK D
 . . . . S LEXERR=LEXERR+1 K:'$D(LEXTEST) ^LEX(LEXFI,LEXIDX,LEXMAJ,LEXSTR,LEXIEN)
 . . . . S:$L(LEXST)&(+LEXMC>0) ^LEX(LEXFI,LEXIDX,LEXMC,LEXST,LEXIEN)=""
 . . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXMC,"/",LEXSTR,?58,"  ",LEXIEN
 S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,DIK,LEXMC,LEXTY S DA=LEXIEN,LEXMC=$P($G(^LEX(LEXFI,DA,0)),U,1) Q:+LEXMC'>0
 . S LEXTY=$P($G(^LEX(LEXFI,DA,0)),U,3) Q:'$L(LEXTY)
 . I '$D(^LEX(LEXFI,LEXIDX,LEXMC,LEXTY,DA)) D
 . . S LEXERR=LEXERR+1 I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Missing ",LEXMC,"/",LEXTY,?58,"  ",DA
 . S:$L(LEXMC)&($L(LEXTY)) ^LEX(LEXFI,LEXIDX,LEXMC,LEXTY,DA)=""
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"") I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
RASTT ;   Index    ^LEX(757.1,"ASTT",ST,MC,IEN) 
 N DA,DIK,LEXBEG,LEXDIF,LEXELP,LEXEND,LEXERR,LEXFI,LEXIDX,LEXIDXT,LEXIEN,LEXMAJ,LEXNDS,LEXOK,LEXSO,LEXSTR
 S LEXFI="757.1"
 N LEXTC S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,"Repairing File #757.1 ""ASTT""") Q:LEXTC=1
 S LEXBEG=$$NOW^XLFDT,(LEXNDS,LEXERR)=0,LEXSTR=0,LEXFI=757.1,LEXIDX="ASTT",LEXIDXT="^LEX(757.1,""ASTT"",ST,MC,IEN)"
 N LEXSTR S LEXSTR="" F  S LEXSTR=$O(^LEX(LEXFI,LEXIDX,LEXSTR)) Q:'$L(LEXSTR)  D
 . N LEXMAJ S LEXMAJ=0 F  S LEXMAJ=$O(^LEX(LEXFI,LEXIDX,LEXSTR,LEXMAJ)) Q:+LEXMAJ'>0  D
 . . N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIDX,LEXSTR,LEXMAJ,LEXIEN)) Q:+LEXIEN'>0  D
 . . . S LEXNDS=LEXNDS+1 N LEXOK,LEXMC,LEXST S LEXOK=1,LEXMC=$P($G(^LEX(LEXFI,LEXIEN,0)),U,1)
 . . . S LEXST=$P($G(^LEX(LEXFI,LEXIEN,0)),U,3) S:LEXMC'=LEXMAJ LEXOK=0 S:LEXSTR'=LEXST LEXOK=0 I 'LEXOK D
 . . . . S LEXERR=LEXERR+1 K:'$D(LEXTEST) ^LEX(LEXFI,LEXIDX,LEXSTR,LEXMAJ,LEXIEN)
 . . . . S:$L(LEXST)&(+LEXMC>0) ^LEX(LEXFI,LEXIDX,LEXST,LEXMC,LEXIEN)=""
 . . . . I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,LEXSTR,"/",LEXMC,?58,"  ",LEXIEN
 S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,DIK,LEXMC,LEXTY S DA=LEXIEN,LEXMC=$P($G(^LEX(LEXFI,DA,0)),U,1) Q:+LEXMC'>0
 . S LEXTY=$P($G(^LEX(LEXFI,DA,0)),U,3) Q:'$L(LEXTY)
 . I '$D(^LEX(LEXFI,LEXIDX,LEXTY,LEXMC,DA)) D
 . . S LEXERR=LEXERR+1 I '$D(ZTQUEUED) W !,?8,LEXFI,?19,LEXIDX,?30,"Missing ",LEXTY,"/",LEXMC,?58,"  ",DA
 . S:$L(LEXTY)&($L(LEXMC)) ^LEX(LEXFI,LEXIDX,LEXTY,LEXMC,DA)=""
 S LEXERR=$S(+LEXERR>0:LEXERR,1:"") I '$D(ZTQUEUED) W !,$J(LEXERR,5),?8,LEXFI,?19,LEXIDX,?30,LEXIDXT
 S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,LEXIDX,LEXNDS,LEXERR,LEXIDXT,LEXELP)
 Q
 ;              
 ; Miscellaneous
SET ;   Re-Index Semantic Map file 757.1 (Set logic only)
 Q:'$D(LEXSET)  N LEXTC,LEXPRE,LEXBEG,LEXEND,LEXELP,LEXNM,LEXFI,LEXRT
 N LEXOUT,LEXMSG S LEXFI=757.1
 D FILE^DID(LEXFI,"N","GLOBAL NAME","LEXOUT","LEXMSG")
 S LEXRT=$G(LEXOUT("GLOBAL NAME")) Q:LEXRT'["^LEX"
 S LEXPRE=$G(^TMP("LEXRX",$J,"T",1,"ELAP"))
 S LEXBEG=$$NOW^XLFDT,LEXNM=$$FN^LEXRXXM(LEXFI)
 S LEXTC=$$UPD^LEXRXXT3($G(LEXNAM),,("Re-Indexing File #"_LEXFI))
 Q:LEXTC=1  I '$D(ZTQUEUED) W !,?8,"Re-Indexing",!
 N LEXIEN S LEXIEN=0 F  S LEXIEN=$O(^LEX(LEXFI,LEXIEN)) Q:+LEXIEN'>0  D
 . N DA,DIK S DA=+($G(LEXIEN)),DIK=LEXRT D IX1^DIK
 Q:$D(LEXQ)  S LEXEND=$$NOW^XLFDT,LEXELP=$$FMDIFF^XLFDT(LEXEND,LEXBEG,3)
 S:$E(LEXELP,1)=" "&($E(LEXELP,3)=":") LEXELP=$TR(LEXELP," ","0")
 D REP^LEXRXXS(LEXFI,LEXFI,"ALLIX",,,"Re-Index",LEXELP)
 S LEXELP=$$ADDT^LEXRXXM(LEXELP,LEXPRE)
 S ^TMP("LEXRX",$J,"T",1,"ELAP")=LEXELP
 Q
CLR ;   Clear
 K LEXNAM,LEXSET,LEXTEST,ZTQUEUED,LEXQ
 Q