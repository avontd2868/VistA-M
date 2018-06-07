PSNPPSNU ;HP/MJE-PPSN update NDF data ; 05 Mar 2014  1:20 PM
 ;;4.0;NATIONAL DRUG FILE;**513,563**; 30 Oct 98;Build 5
 ;Reference to ^PSDRUG supported by DBIA #2192
 ;Reference to PSN^PSSHUIDG supported by DBIA #3621
 ;Reference to ^GMR(120.8) supported by DBIA #4606
 ;Reference to ^DD supported by DBIA #1258
 ;
 ; Note: this routine is an adapted version of the origional code by Dr. Dave Alexander
 ;
 N CL,CLA,CMOP,CT,DA,DA1,DIA,DIC,DIE,DIK,DINUM,DR,FDA,FILE,FLDS,GE,GROOT,GROOT1,IENS,IN,INA,IND,INDX,INV,J,JJ,K
 N LI,LINE,NA,NAME,ND,NEW,NFI,POST,PR,PSN,PSN1,PSN11,PSN21,PSNDF,R1,ROOT,ROOT1,ROOT2,ROOT3,SUBS,VAC,VAIN,VAPN
 N X,XMDUZ,XMSUB,XMTEXT,XMY,XMZ,TREC,PSNMULTI,MJJ,PSNERROR
 N ZTDESC,ZTDTH,ZTIO,ZTRTN,ZTSAVE,XPATH
 N PSNPS,XPDIDTOT,RES1,PSNTMPN
 K ^TMP($J),^TMP("PSN",$J),^TMP("PSNN",$J),^TMP("PSN PPSN.WP",$J),^TMP("PSN PPSN ERR",$J),^TMP("PSNINGRED",$J)
 ;
 ;SETUP PRODUCTION OR SQA
 S PSNPS=$P($G(^PS(59.7,1,10)),"^",12),PSNERROR=0
 I PSNPS="T"!(PSNPS="S") S PSNPS="P" ;test account and support account is same as production.
 S PSNDF=1,XPDIDTOT=+$G(^TMP("PSN PPSN PARSED",$J,"TREC")),TREC=0
 ;TO ALLOW ADDS TO 56,50.416,50.605,50.606, AND 50.6
 ;
 D DATANT^PSNPPSI1
 I PSNPS="N" D POSTRUN^PSNPPSNK
 ;
WORD ;
 D CTRKDL^PSNPPSMS("Storing report messages information")
 S FDA(57.231,CTRLXIEN_","_CTRLIEN_",",6)="WORD"
 D UPDATE^DIE("","FDA","CTRLIEN")
 K FDA
 S ROOT1=$NA(^TMP("PSN PPSN PARSED",$J,"WORD")),CT=0,ROOT2=$NA(@ROOT1@(0))
 F  S CT=$O(@ROOT2) Q:'CT  D CTRLSS^PSNPPSMS(CT) S ROOT2=$NA(@ROOT1@(CT)),NAME=@ROOT2,ROOT3=$NA(@ROOT2@("D")) K @NAME M @NAME=@ROOT3
 ;
 D CTRKDL^PSNPPSMS("Sending mail messages")
 D MESSAGE^PSNPPSMG
 ;
 D CTRKDL^PSNPPSMS("Beginning un-march/re-match")
 W:'$G(PSNSCJOB) !,"Beginning un-match/re-match to local drug file...",!
DRUGFILE ;
 ;NOW UPDATE LOCAL DRUG FILE
 N REM,PSNUNMAT
 K ^TMP($J)
 I PSNPS="N" S OLDNDF="" F  S OLDNDF=$O(^TMP("PSN PPSN PARSED",$J,"REM",OLDNDF)) Q:OLDNDF=""  D EN1^PSNPPSNW(OLDNDF,"")
 S OLDNDF="",PSN=$$PATCH^XPDUTL("PSS*1.0*34"),PSN1=$$PATCH^XPDUTL("PSS*1.0*42")
 S ROOT2=$NA(^TMP("PSN PPSN PARSED",$J,"PRODUCTS TO UNMATCH")),ROOT3=$NA(^TMP("PSN PPSN PARSED",$J,"POE")),DA=0
 S DA=0 F  S DA=$O(^PSDRUG(DA)) Q:'DA  S X=$G(^PSDRUG(DA,0)) I X]"" S NA=$P(X,"^"),CLA=$P(X,"^",2),INV=$P(X,"^",3)["I",X=$G(^("ND")),IN=$P($G(^("I"),9999999),"^"),INA=IN'>DT,GE=+X,PR=+$P(X,"^",3),CMOP=$P(X,"^",10),VAPN=$P(X,"^",2) I GE I PR D
 .S OLDNDF=$P($G(^PSDRUG(DA,"ND")),"^",3) ;va product name (3P:50.68); NA = generic name; CLA = VA Class; INV = DEA Special HDLG 
 .S VAIN=$P($G(^PSNDF(50.68,PR,7)),"^",3) ;inactivation date
 .I $D(@ROOT2@(PR))!VAIN S X="" S:CMOP]"" X="    (CMOP "_CMOP_")" D
 ..S $E(X,30)=VAPN,$E(X,65)=$$FMTE^XLFDT(VAIN,5),INDX=$S(INA:"I",INV:"X",1:"A")
 ..S:IN=9999999 IN="" S ^TMP($J,INDX,NA_"^"_DA_"^"_IN,1)=X,^TMP($J,"^",DA)=""
 ..D UNMDRG
 ..I PSN I $P($G(^PSDRUG(DA,"DOS")),"^")]""!$O(^("DOS1",0))!$O(^PSDRUG(DA,"DOS2",0)) D LOAD^PSNPPSNV K ^PSDRUG(DA,"DOS"),^("DOS1"),^("DOS2")
 ..I $P($G(^PSDRUG(DA,3)),"^") S DIE=50,DR="213////0;" D ^DIE D ERROR:$D(ERROR("DIERR")) K DIE,DR I PSN1 S IND=$O(^PSDRUG(DA,4," "),-1),$P(^(IND,0),"^",6)="NDF Update"
 .;check here if PR (50.68 IEN this local drug is matched to) exists in TMP rematch
 .;if a re-match for that IEN is not null, do re-match (file re-match, add to report)
 .S REM="" I OLDNDF'="" S REM=$G(^TMP("PSN PPSN PARSED",$J,"REM",OLDNDF))
 .I REM'="" D REMATCH^PSNPPSNW(DA,REM)
 .I PSN,$D(@ROOT3@(PR)) K ^PSDRUG(DA,"DOS"),^("DOS1"),^("DOS2")
 .S ND=$G(^PSDRUG(DA,"ND")),PR=$P(ND,"^",3) I PR D
 ..S NFI=$P($G(^PSNDF(50.68,PR,5)),"^") I $P(ND,"^",11)'=NFI S DIE=50,DR="29////"_NFI_";" D ^DIE D ERROR:$D(ERROR("DIERR"))
 ..S VAC=$P($G(^PSNDF(50.68,PR,3)),"^") I VAC S VAC=$P(^PS(50.605,VAC,0),"^"),DIE=50,DR="2////"_VAC_";" D ^DIE D ERROR:$D(ERROR("DIERR"))
 ..I $P($G(^PSDRUG(DA,3)),"^"),'$P($G(^PSNDF(50.68,PR,1)),"^",3) S DIE=50,DR="213////0;" D ^DIE D ERROR:$D(ERROR("DIERR")) K DIE,DR S IND=$O(^PSDRUG(DA,4," "),-1),$P(^(IND,0),"^",6)="NDF Update"
 .;S TREC=TREC+1 I '(TREC#500) D UPDATE^XPDID(TREC)
 D DRGMSG^PSNPPSMG
 ;package specific post install
 I $D(^TMP("PSN PPSN PARSED",$J,"POST")) S POST=^("POST") S:POST'["^" POST="^"_POST I @("$T("_POST_")]]""""") D @POST
 ;
 ;call to HL7 drug update message
 I $T(PSN^PSSHUIDG)]"" I $O(^TMP($J,"^",0)) S ZTRTN="PSN^PSSHUIDG",ZTIO="",ZTDTH=$H,ZTDESC="DRUG UPDATE MESSAGE",ZTSAVE("^TMP($J,""^"",")="" D ^%ZTLOAD
 ;
 D CTRKDL^PSNPPSMS("Validating cross references")
 W:'$G(PSNSCJOB) !,"Validating cross references...",!
REINDEX ;Make sure APC xref is correct
 S FDA(57.231,CTRLXIEN_","_CTRLIEN_",",6)="REINDEX"
 D UPDATE^DIE("","FDA","CTRLIEN")
 K FDA
 N SUB,DA,DIK,GMRAIEN,CLASS
 S SUB=0 F  S SUB=$O(^GMR(120.8,SUB)) Q:'+SUB  I $D(^GMR(120.8,SUB,3)) D
 .S GMRAIEN=+$P($G(^GMR(120.8,SUB,0)),U) Q:'GMRAIEN
 .S CLASS="" F  S CLASS=$O(^GMR(120.8,"APC",GMRAIEN,CLASS)) Q:CLASS=""  K ^GMR(120.8,"APC",GMRAIEN,CLASS,SUB)
 .S DA(1)=SUB
 .S DIK="^GMR(120.8,DA(1),3,"
 .S DIK(1)=".01^ADRG3"
 .D ENALL^DIK ;Reset the drug class xref
 ;
MORE ; REINDEXING
 D CTRKDL^PSNPPSMS("Reindexing")
 ;now the APD
 K ^PS(50.416,"APD") S DA=0 F  S DA=$O(^PS(50.416,DA)),K=0 Q:'DA  F  S K=$O(^PS(50.416,DA,1,K)) Q:'K  S X=^(K,0),^PS(50.416,"APD",X,DA)=""
 ;now the interactions
 K ^PS(56,"APD") S DA=0 F  S DA=$O(^PS(56,DA)) Q:'DA  K PSN1,PSN2 S PSN1=$P(^(DA,0),"^",2),PSN2=$P(^(0),"^",3) D
 .S NA="" F  S NA=$O(^PS(50.416,PSN1,1,"B",NA)) Q:NA=""  S PSN1(NA)=""
 .S PSN11=0 F  S PSN11=$O(^PS(50.416,"APS",PSN1,PSN11)),NA="" Q:'PSN11  F  S NA=$O(^PS(50.416,PSN11,1,"B",NA)) Q:NA=""  S PSN1(NA)=""
 .S NA="" F  S NA=$O(^PS(50.416,PSN2,1,"B",NA)) Q:NA=""  S PSN2(NA)=""
 .S PSN21=0 F  S PSN21=$O(^PS(50.416,"APS",PSN2,PSN21)),NA="" Q:'PSN21  F  S NA=$O(^PS(50.416,PSN21,1,"B",NA)) Q:NA=""  S PSN2(NA)=""
 .S PSN1="" F  S PSN1=$O(PSN1(PSN1)),PSN2="" Q:PSN1=""  F  S PSN2=$O(PSN2(PSN2)) Q:PSN2=""  S ^PS(56,"APD",PSN1,PSN2,DA)="",^PS(56,"APD",PSN2,PSN1,DA)=""
 ;
 D ^PSNPPSCL
 D ERRORMS^PSNPPSMS
 ;
QUIT ;
 ;D UPDATE^XPDID(XPDIDTOT)
 K CL,CLA,CMOP,CT,DA,DA1,DIA,DIC,DIE,DIK,DINUM,DR,FDA,FILE,FLDS,GE,GROOT,GROOT1,IENS,IN,INA,IND,INDX,INV,J,JJ,K,LI,LINE,NA,NAME,ND,NEW,NFI,POST,PR,PSN,PSN1,PSN11,PSN21,PSNDF,R1,ROOT,ROOT1,ROOT2,ROOT3,SUBS,VAC,VAIN,VAPN
 K X,XMDUZ,XMSUB,XMTEXT,XMY,XMZ,XUMF,ZTDESC,ZTDTH,ZTIO,ZTRTN,ZTSAVE
 K ^TMP($J),^TMP("PSN",$J),^TMP("PSNN",$J),^TMP("PSN PPSN ERR",$J),^TMP("PSNINGRED",$J)
 Q
 ;
ERROR ;Track file errors
 D APPERROR^%ZTER("PPSN ERROR")
 N PSNERRC,ERRFILE,ERRIEN
 S PSNERROR=PSNERROR+1,PSNERRC=0,ERRFILE=0,ERRIEN=0
 F  S PSNERRC=$O(ERROR("DIERR",PSNERRC)) Q:'PSNERRC  D:$D(ERROR("DIERR",PSNERRC,"TEXT",1))
 .S ERRFILE=$G(ERROR("DIERR",PSNERRC,"PARAM","FILE")) S ERRIEN=$S("^351^352^311^"[("^"_$G(ERROR("DIERR",PSNERRC))_"^"):" ",1:$P(DIA,"^"))
 .S ^TMP("PSN PPSN ERR",$J,PSNTMPN,$S($G(ERRFILE):ERRFILE,$G(FILE)'="":FILE,1:ROOT),ERRIEN,$P(DIA,"^",3),PSNERROR)=ERROR("DIERR",PSNERRC,"TEXT",1)_"|"_$S($G(FILE)'="":FILE,1:ROOT)_"-"_$P(DIA,"^",3)_"|"_NEW
 Q
 ;
ERROR2(PSNERRN,PSNERRF,PSNERRIE,PSNERRFL,PSNERRTY) ;Track DICN errors
 D APPERROR^%ZTER("PPSN ERROR2")
 S PSNERROR=PSNERROR+1,PSNERRC=""
 S ^TMP("PSN PPSN ERR",$J,PSNERRN,PSNERRF,PSNERRIE,PSNERRFL,PSNERRTY)=DIA_"^"_NEW
 Q
STRIP(X) ; Strip control characters
 N I,Y
 S Y="" F I=1:1:$L(X) S:$A(X,I)>31 Y=Y_$E(X,I)
 Q Y
 ;
UNMDRG ; Unmatch Drug File entry
 N PIECE,PRDNAM
 S PRDNAM=$P(^PSDRUG(DA,"ND"),"^",2)
 F PIECE=1:1:5,10,11 S $P(^PSDRUG(DA,"ND"),"^",PIECE)=""
 I PRDNAM'="" S PRDNAM=$E(PRDNAM,1,30) K ^PSDRUG("VAPN",PRDNAM,DA)
 Q
