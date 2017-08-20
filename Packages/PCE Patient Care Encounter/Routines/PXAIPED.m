PXAIPED ;ISL/PKR - Set the PATIENT EDUCATION nodes. ;08/31/2016
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**45,211**;Aug 12, 1996;Build 84
 ;
EDU ;Main entry point.
 ;
 K PXAERR
 S PXAERR(8)=PXAK
 S PXAERR(7)="PATIENT EDUCATION"
 ;
 N IND,PXAA
 S IND=""
 F  S IND=$O(@PXADATA@("PATIENT ED",PXAK,IND)) Q:IND=""  D
 . S PXAA(IND)=@PXADATA@("PATIENT ED",PXAK,IND)
 ;
 ;Validate the data.
 N STOP
 D VAL^PXAIPEDV
 I $G(STOP) Q
 ;
SETVARA ;Set the after visit variables.
 N AFTER0,AFTER12,AFTER220,AFTER811,AFTER812
 S $P(AFTER0,U,1)=$G(PXAA("TOPIC"))
 I $G(PXAA("DELETE")) S $P(AFTER0,U,1)="@"
 S $P(AFTER0,U,2)=$G(PATIENT)
 S $P(AFTER0,U,3)=$G(PXAVISIT)
 S $P(AFTER0,U,6)=$G(PXAA("UNDERSTANDING"))
 S $P(AFTER12,U,1)=$G(PXAA("EVENT D/T"))
 S $P(AFTER12,U,4)=$G(PXAA("ENC PROVIDER"))
 ;
 ;Magnitude and UCUM code
 S $P(AFTER220,U,1)=$G(PXAA("MAGNITUDE"))
 S $P(AFTER220,U,2)=$G(PXAA("UCUM CODE"))
 ;
 S $P(AFTER811,U,1)=$G(PXAA("COMMENT"))
 ;
 ;--PACKAGE AND SOURCE
 S $P(AFTER812,"^",2)=$G(PXAPKG)
 S $P(AFTER812,"^",3)=$G(PXASOURC)
 ;
 S ^TMP("PXK",$J,"PED",PXAK,0,"AFTER")=AFTER0
 S ^TMP("PXK",$J,"PED",PXAK,12,"AFTER")=AFTER12
 S ^TMP("PXK",$J,"PED",PXAK,220,"AFTER")=AFTER220
 S ^TMP("PXK",$J,"PED",PXAK,811,"AFTER")=AFTER811
 S ^TMP("PXK",$J,"PED",PXAK,812,"AFTER")=AFTER812
 ;
SETVARB ;Set the before variables.
 N BEFOR0,BEFOR12,BEFOR220,BEFOR811,BEFOR812
 N IENB,PXAAX,PXBCNT,PXBKY,PXBSKY,PXBSAM
 D EDU^PXBGPED(PXAVISIT)
 ;
 S IENB=""
 I PXBCNT>0 D
 . S PXAAX("TOPIC")=$P($G(^AUTTEDT(PXAA("TOPIC"),0)),U,1)
 . S IENB=$O(PXBKY(PXAAX("TOPIC"),IENB))
 I $G(IENB) D
 . S BEFOR0=$G(^AUPNVPED(IENB,0))
 . S BEFOR12=$G(^AUPNVPED(IENB,12))
 . S BEFOR220=$G(^AUPNVPED(IENB,220))
 . S BEFOR811=$G(^AUPNVPED(IENB,811))
 . S BEFOR812=$G(^AUPNVPED(IENB,812))
 E  S (BEFOR0,BEFOR11,BEFOR12,BEFOR220,BEFOR811,BEFOR812)=""
 ;
 S ^TMP("PXK",$J,"PED",PXAK,0,"BEFORE")=BEFOR0
 S ^TMP("PXK",$J,"PED",PXAK,12,"BEFORE")=BEFOR12
 S ^TMP("PXK",$J,"PED",PXAK,220,"BEFORE")=BEFOR220
 S ^TMP("PXK",$J,"PED",PXAK,811,"BEFORE")=BEFOR811
 S ^TMP("PXK",$J,"PED",PXAK,812,"BEFORE")=BEFOR812
 S ^TMP("PXK",$J,"PED",PXAK,"IEN")=IENB
 ;
 Q
