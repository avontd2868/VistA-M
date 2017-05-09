RAMRPIN ;BPFO/CLT - LIST ACTVE PROCEDURES WITH INACTIVE MRPF ; 12 Sep 2016  2:17 PM
 ;;5.0;Radiology/Nuclear Medicine;**127**;Mar 16, 1998;Build 119
 ;
 ;  This routine uses the following IA's:
 ; #1995 - CPT calls (supported)
EN ;PRIMARY ENTRY POINT
 N RAMRPF,RAIEN,%ZIS
 G TASK
LOOK ;BEGIN LOOKING FOR ACTIVE PROCEDURES WITH INACTIVE CPT OR MRPF
 N RAMRPF,RAIEN,RADT,RACPT,RANAME,RATS,PAGE,RARTN,MRPFNM,RACINF S PAGE=0 K ^XTMP("RAMRPIN",$J)
 S RANAME="" F  S RANAME=$O(^RAMIS(71,"B",RANAME)) Q:RANAME=""  S RAIEN=$O(^RAMIS(71,"B",RANAME,""))  D:$G(RAIEN)'=""
 . I $G(^RAMIS(71,RAIEN,0))="" Q
 . I $P(^RAMIS(71,RAIEN,0),U,6)'="D" Q
 . I $G(^RAMIS(71,RAIEN,"I"))'="",^RAMIS(71,RAIEN,"I")<DT Q
 . I $P($G(^RAMIS(71,RAIEN,0)),U,9)="" Q
 . S RACPT=$P(^RAMIS(71,RAIEN,0),U,9)
 . S RAMRPF=$P($G(^RAMIS(71,RAIEN,"NTRT")),U,1)
 . ; piece 7 is 1 if active
 . ;I $P(^ICPT(RACPT,0),U,4)=1 D
 . S RACINF=$$CPT^ICPTCOD(RACPT),RACINF=$S($P(RACINF,U,7)>0:0,1:1) I +RACINF=1 D
 .. I +RACINF'=1 Q
 .. ;I $P(^ICPT(RACPT,0),U,4)'=1 Q
 .. S RACINF=$$CPT^ICPTCOD(RACPT)
 .. ;S ^XTMP("RAMRPIN",$J,RANAME,1)=RACPT_U_$P($G(^ICPT(RACPT,0)),U,7)
 .. S ^XTMP("RAMRPIN",$J,RANAME,1)=RACPT_U_$P(RACINF,"^",8)
 .. Q
 . I $G(RAMRPF)'="" S RATS=$P($G(^RAMRPF(71.99,RAMRPF,"TERMSTATUS",0)),U,3) D:RATS'=""  Q
 .. I $P($G(^RAMRPF(71.99,RAMRPF,"TERMSTATUS",RATS,0)),U,2)=0 D
 ... S ^XTMP("RAMRPIN",$J,$P(^RAMIS(71,RAIEN,0),U,1),1)=$P(^RAMRPF(71.99,RAMRPF,0),U,1)_U_$P(^RAMRPF(71.99,RAMRPF,"TERMSTATUS",RATS,0),U,1)
 ... Q
 .. Q
 . Q
 I $D(^XTMP("RAMRPIN",$J)) S ^XTMP("RAMRPIN",$J,0)=DT_U_DT
PRNT ;PRINT THE FOUND DATA
 D HDR
 I '$D(^XTMP("RAMRPIN",$J)) D
 . W !!,"There are no active procedures with inactive CPT code or inactive",!,"Master Radiology Procedure File (MRPF) entry.",!
 . Q
 S RANAME="" F  S RANAME=$O(^XTMP("RAMRPIN",$J,RANAME)) Q:RANAME=""!(RARTN["^")  G:RARTN["^" END D:RARTN'["^"
 . Q:$G(RARTN)["^"
 . I $G(^XTMP("RAMRPIN",$J,RANAME,1))'="" D
 .. D:$Y>(IOSL-4) HDR S RACPT=$P(^XTMP("RAMRPIN",$J,RANAME,1),U,1) Q:RACPT'?1.N
 .. W !,$E(RANAME,1,20)
 .. ;S:$G(RACPT)'="" RACPT=$P(^ICPT(RACPT,0),U,1) W ?22,RACPT
 .. S:$G(RACPT)'="" RACINF=$$CPT^ICPTCOD(RACPT),RACPT=$P(RACINF,"^",2) W ?22,RACPT
 .. W ?32,$$FMTE^XLFDT($P(^XTMP("RAMRPIN",$J,RANAME,1),U,2),"2M")
 .. Q
 . I $G(^XTMP("RAMRPIN",$J,RANAME,1))'="" D
 .. Q:$P(^XTMP("RAMRPIN",$J,RANAME,1),U,1)?1.N
 .. S MRPFNM=$P(^XTMP("RAMRPIN",$J,RANAME,1),U,1)
 .. D:$Y>(IOSL-4) HDR W !,$E(RANAME,1,20)
 .. W ?45,$E(MRPFNM,1,20),?67,$$FMTE^XLFDT($P(^XTMP("RAMRPIN",$J,RANAME,1),U,2),"2M")
 .. Q
 . Q
 G END
TASK ;ASK DEVICE AND QUEUE
 S %ZIS("A")="QUEUE ON DEVICE(80 COLUMN): ",%ZIS("B")="HOME"
 D ^%ZIS I IOST["C-" G LOOK
 S ZTRTN="RATIMBUL",ZTDESC="Radiology new procedure time bulletin"
 S ZTRTN="LOOK^RAMRPIN",ZTDESC="Active Radiology procedures with inactive CPT or MRPF."
 D ^ZTLOAD
 K ZTSK,ZTRTN,ZTDESC,ZTDTH,X1,X2,X
 Q
END ;END THE ROUTINE
 K RACINF
 K ^XTMP("RAMRPIN",$J)
 Q
HDR ;NEW PAGE AND PRINT HEADER
 S:$G(PAGE)="" PAGE=0
 I $G(RARTN)["^" W @IOF Q
 I IOST["C-" R !?3,"Enter <RETURN> to continue or '^' to quit:",RARTN:300
 I $G(RARTN)["^" W @IOF Q
 S PAGE=PAGE+1 W @IOF,!!?27,"ACTIVE RADIOLOGY PROCEDURES",?70,"PAGE ",PAGE
 W !?33,"WITH INACTIVE"
 W !?29,"CPT CODE OR MRPF LOINC"
 W !!?3,"PROCEDURE NAME",?22,"CPT CODE",?32,"INAC DT",?45,"MRPF NAME",?67,"INAC DT"
 W !,"====================",?22,"========",?32,"=======",?45,"====================",?67,"======="
 Q