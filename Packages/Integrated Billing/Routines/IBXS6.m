IBXS6 ; GENERATED FROM 'IB SCREEN6' INPUT TEMPLATE(#512), FILE 399;11/02/17
 D DE G BEGIN
DE S DIE="^DGCR(399,",DIC=DIE,DP=399,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^DGCR(399,DA,""))=""
 I $D(^(0)) S %Z=^(0) S %=$P(%Z,U,19) S:%]"" DE(22)=%,DE(26)=% S %=$P(%Z,U,22) S:%]"" DE(14)=% S %=$P(%Z,U,24) S:%]"" DE(5)=% S %=$P(%Z,U,25) S:%]"" DE(7)=% S %=$P(%Z,U,26) S:%]"" DE(11)=% S %=$P(%Z,U,27) S:%]"" DE(17)=%
 I $D(^("U")) S %Z=^("U") S %=$P(%Z,U,1) S:%]"" DE(40)=% S %=$P(%Z,U,2) S:%]"" DE(41)=% S %=$P(%Z,U,3) S:%]"" DE(37)=% S %=$P(%Z,U,5) S:%]"" DE(32)=% S %=$P(%Z,U,6) S:%]"" DE(35)=% S %=$P(%Z,U,7) S:%]"" DE(34)=% S %=$P(%Z,U,11) S:%]"" DE(44)=%
 I  S %=$P(%Z,U,15) S:%]"" DE(45)=%
 I $D(^("U3")) S %Z=^("U3") S %=$P(%Z,U,2) S:%]"" DE(15)=%
 K %Z Q
 ;
W W !?DL+DL-2,DLB_": "
 Q
O D W W Y W:$X>45 !?9
 I $L(Y)>19,'DV,DV'["I",(DV["F"!(DV["K")) G RW^DIR2
 W:Y]"" "// " I 'DV,DV["I",$D(DE(DQ))#2 K X S X("FIELD")=DIFLD,X("FILE")=DP W "  ("_$$EZBLD^DIALOG(710,.X)_")" K X S X="" Q  ;**
TR Q:DV["K"&(DUZ(0)'="@")  R X:DTIME E  S (DTOUT,X)=U W $C(7)
 Q
A K DQ(DQ) S DQ=DQ+1
B G @DQ
RE G A:DV["K"&(DUZ(0)'["@"),PR:$D(DE(DQ)) D W,TR
N I X="" G NKEY:$D(^DD("KEY","F",DP,DIFLD)),A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" I X?.ANP D SET^DIED I 'DDER G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) G:DV["*" AST^DIED D NOSCR^DIED S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
UNIQ I DV["U",$D(X),DIFLD=.01 K % M %=@(DIE_"""B"",X)") K %(DA) K:$O(%(0)) X
Z K DIC("S"),DLAYGO I $D(X),X'=U D:$G(DE(DW,"INDEX")) SAVEVALS G:'$$KEYCHK UNIQFERR^DIE17 S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
X W:'$D(ZTQUEUED) $C(7),"??" I $D(DB(DQ)) G Z^DIE17
 S X="?BAD"
QS S DZ=X D D,QQ^DIEQ G B
D S D=DIFLD,DQ(DQ)=DLB_U_DV_U_DU_U_DW_U_$P($T(@("X"_DQ))," ",2,99) Q
Y I '$D(DE(DQ)) D O G RD:"@"'[X,A:DV'["R"&(X="@"),X:X="@" S X=Y G N
PR S DG=DV,Y=DE(DQ),X=DU I $D(DQ(DQ,2)) X DQ(DQ,2) G RP
R I DG["P",@("$D(^"_X_"0))") S X=+$P(^(0),U,2) G RP:'$D(^(Y,0)) S Y=$P(^(0),U),X=$P(^DD(X,.01,0),U,3),DG=$P(^(0),U,2) G R
 I DG["V",+Y,$P(Y,";",2)["(",$D(@(U_$P(Y,";",2)_"0)")) S X=+$P(^(0),U,2) G RP:'$D(^(+Y,0)) S Y=$P(^(0),U) I $D(^DD(+X,.01,0)) S DG=$P(^(0),U,2),X=$P(^(0),U,3) G R
 X:DG["D" ^DD("DD") I DG["S" S %=$P($P(";"_X,";"_Y_":",2),";") I %]"" S Y=$S($G(DUZ("LANG"))'>1:%,'DIFLD:%,1:$$SET^DIQ(DP,DIFLD,Y))
RP D O I X="" S X=DE(DQ) G A:'DV,A:DC<2,N^DIE17
I I DV'["I",DV'["#" G RD
 D E^DIE0 G RD:$D(X),PR
 Q
SAVEVALS S @DIEZTMP@("V",DP,DIIENS,DIFLD,"O")=$G(DE(DQ)) S:$D(^("F"))[0 ^("F")=$G(DE(DQ))
 I $D(DE(DW,"4/")) S @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")=""
 E  K @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")
 Q
NKEY W:'$D(ZTQUEUED) "??  Required key field" S X="?BAD" G QS
KEYCHK() Q:$G(DE(DW,"KEY"))="" 1 Q @DE(DW,"KEY")
BEGIN S DNM="IBXS6",DQ=1
 N DIEZTMP,DIEZAR,DIEZRXR,DIIENS,DIXR K DIEFIRE,DIEBADK S DIEZTMP=$$GETTMP^DIKC1("DIEZ")
 M DIEZAR=^DIE(512,"AR") S DICRREC="TRIG^DIE17"
 S:$D(DTIME)[0 DTIME=300 S D0=DA,DIIENS=DA_",",DIEZ=512,U="^"
1 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=1 D X1 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X1 S:IBDR20'["61" Y="@62"
 Q
2 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=2 D X2 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X2 S:$P($G(^DGCR(399,DA,0)),U,19)'=3 Y="@612"
 Q
3 S DQ=4 ;@611
4 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=4 D X4 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X4 S DIE("NO^")=""
 Q
5 S DW="0;24",DV="RS",DU="",DIFLD=.24,DLB="LOCATION OF CARE"
 S DU="1:HOSPITAL - INPT OR OPT (INCLUDES CLINICS);2:SKILLED NURSING (NHCU);3:HOME HEALTH AGENCY;7:CLINIC (ONLY INDEPENDENT/SATELITE);8:SPEC. FACILITY HOSP/AMB SURG CTR;"
 G RE
X5 Q
6 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=6 D X6 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X6 S:'$D(DIE("NO^")) DIE("NO^")=""
 Q
7 S DW="0;25",DV="R*P399.1'",DU="",DIFLD=.25,DLB="BILL CLASSIFICATION"
 S DE(DW)="C7^IBXS6"
 S DU="DGCR(399.1,"
 G RE
C7 G C7S:$D(DE(7))[0 K DB
 S X=DE(7),DIC=DIE
 D ALLID^IBCEP3(DA,.25,2)
C7S S X="" G:DG(DQ)=X C7F1 K DB
 S X=DG(DQ),DIC=DIE
 D ALLID^IBCEP3(DA,.25,1)
C7F1 Q
X7 S DIC("S")="I $P(^(0),U,23),$$TOBIN^IBCU4(Y,D0)" D ^DIC K DIC S DIC=$G(DIE),X=+Y K:Y<0 X
 Q
 ;
8 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=8 D X8 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X8 I '$$TOBIN^IBCU4($P(^DGCR(399,DA,0),U,25),DA) W !!,*7,"  **  The 'BILL CLASSIFICATION' must be consistent with the 'LOCATION OF CARE.'",! S Y="@611"
 Q
9 S DQ=10 ;@612
10 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=10 D X10 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X10 K DIE("NO^")
 Q
11 D:$D(DG)>9 F^DIE17,DE S DQ=11,DW="0;26",DV="RS",DU="",DIFLD=.26,DLB="TIMEFRAME OF BILL"
 S DE(DW)="C11^IBXS6"
 S DU="1:ADMIT THRU DISCHARGE;2:INTERIM - 1ST CLAIM;3:INTERIM - CONTINUING CLAIM;4:INTERIM - LAST CLAIM;5:LATE CHARGES ONLY;6:ADJUSTMENT CLAIM;7:REPLACEMENT CLAIM;8:VOID/CANCEL PRIOR CLAIM;O:NON-PAY/ZERO CLAIM;"
 G RE
C11 G C11S:$D(DE(11))[0 K DB
 S X=DE(11),DIC=DIE
 ;
C11S S X="" G:DG(DQ)=X C11F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,0)):^(0),1:"") S X=$P(Y(1),U,6),X=X S DIU=X K Y S X=DIV S X=DIV,X=X S DIH=$G(^DGCR(399,DIV(0),0)),DIV=X S $P(^(0),U,6)=DIV,DIH=399,DIG=.06 D ^DICR
C11F1 Q
X11 Q
12 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=12 D X12 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X12 I '$$INPAT^IBCEF(DA)!($$FT^IBCEF(DA)'=3) S Y="@6121"
 Q
13 S DQ=14 ;@6121
14 D:$D(DG)>9 F^DIE17,DE S DQ=14,DW="0;22",DV="P40.8'",DU="",DIFLD=.22,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C14^IBXS6",DE(DW,"INDEX")=1
 S DU="DG(40.8,"
 G RE
C14 G C14S:$D(DE(14))[0 K DB
 S X=DE(14),DIC=DIE
 ;
C14S S X="" G:DG(DQ)=X C14F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X S X=$$CLIAREQ^IBCEP8A(DA) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U2")):^("U2"),1:"") S X=$P(Y(1),U,13),X=X S DIU=X K Y S X=DIV S X=$$CLIA^IBCEP8A(DA) X ^DD(399,.22,1,7,1.4)
C14F1 S DIEZRXR(399,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=820 S DIEZRXR(399,DIXR)=""
 Q
X14 Q
15 D:$D(DG)>9 F^DIE17,DE S DQ=15,DW="U3;2",DV="*P8932.1'",DU="",DIFLD=243,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DU="USC(8932.1,"
 G RE
X15 S DIC("S")="I $P($G(^(90002)),U,2)=""N""" D ^DIC K DIC S DIC=$G(DIE),X=+Y K:Y<0 X
 Q
 ;
16 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=16 D X16 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X16 D DISPTAX^IBCEP81($P($G(^DGCR(399,DA,"U3")),U,2),"Service Facility")
 Q
17 S DW="0;27",DV="S",DU="",DIFLD=.27,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C17^IBXS6",DE(DW,"INDEX")=1
 S DU="1:INSTITUTIONAL;2:PROFESSIONAL;"
 G RE
C17 G C17S:$D(DE(17))[0 K DB
 S X=DE(17),DIC=DIE
 ;
 S X=DE(17),DIC=DIE
 ;
C17S S X="" G:DG(DQ)=X C17F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,0)):^(0),1:"") S X=$P(Y(1),U,19),X=X S DIU=X K Y S X=DIV S X=$$FT^IBCU3(DA,1) X ^DD(399,.27,1,1,1.4)
 S X=DG(DQ),DIC=DIE
 X ^DD(399,.27,1,2,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U")):^("U"),1:"") S X=$P(Y(1),U,8),X=X S DIU=X K Y S X=DIV S X=3 S DIH=$G(^DGCR(399,DIV(0),"U")),DIV=X S $P(^("U"),U,8)=DIV,DIH=399,DIG=158 D ^DICR
C17F1 N X,X1,X2 S DIXR=989 D C17X1(U) K X2 M X2=X D C17X1("O") K X1 M X1=X
 I $G(X(1))]"" D
 . D CMAEDALL^IBCU9(DA)
 K X M X=X2 I $G(X(1))]"" D
 . D CMAEDALL^IBCU9(DA)
 G C17F2
C17X1(DION) K X
 S X(1)=$G(@DIEZTMP@("V",399,DIIENS,.27,DION),$P($G(^DGCR(399,DA,0)),U,27))
 S X=$G(X(1))
 Q
C17F2 Q
X17 Q
18 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=18 D X18 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X18 S DGRVRCAL=1
 Q
19 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=19 D X19 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X19 S DIPA("FT1")=$P($G(^DGCR(399,DA,0)),U,19)
 Q
20 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=20 D X20 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X20 D CKFT^IBCIUT1(IBIFN)
 Q
21 S DQ=22 ;@614
22 D:$D(DG)>9 F^DIE17,DE S DQ=22,DW="0;19",DV="R*P353'",DU="",DIFLD=.19,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C22^IBXS6",DE(DW,"INDEX")=1
 S DU="IBE(353,"
 G RE
C22 G C22S:$D(DE(22))[0 K DB
 S X=DE(22),DIC=DIE
 ;
 S X=DE(22),DIC=DIE
 S DGRVRCAL=2
 S X=DE(22),DIC=DIE
 D ALLID^IBCEP3(DA,.19,2)
 S X=DE(22),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,1),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,1)=DIV,DIH=399,DIG=140 D ^DICR
 S X=DE(22),DIC=DIE
 D ATTREND^IBCU1(DA,"","")
 S X=DE(22),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,2),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,2)=DIV,DIH=399,DIG=141 D ^DICR
 S X=DE(22),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,3),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,3)=DIV,DIH=399,DIG=142 D ^DICR
 S X=DE(22),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,4),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,4)=DIV,DIH=399,DIG=143 D ^DICR
 S X=DE(22),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,5),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,5)=DIV,DIH=399,DIG=144 D ^DICR
 S X=DE(22),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,6),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,6)=DIV,DIH=399,DIG=145 D ^DICR
C22S S X="" G:DG(DQ)=X C22F1 K DB
 S X=DG(DQ),DIC=DIE
 X ^DD(399,.19,1,1,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,0)):^(0),1:"") S X=$P(Y(1),U,9),X=X S DIU=X K Y S X=DIV S X=5 S DIH=$G(^DGCR(399,DIV(0),0)),DIV=X S $P(^(0),U,9)=DIV,DIH=399,DIG=.09 D ^DICR
 S X=DG(DQ),DIC=DIE
 S DGRVRCAL=1
 S X=DG(DQ),DIC=DIE
 D ALLID^IBCEP3(DA,.19,1)
 S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 D ATTREND^IBCU1(DA,"","")
 S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 ;
C22F1 N X,X1,X2 S DIXR=984 D C22X1(U) K X2 M X2=X D C22X1("O") K X1 M X1=X
 K X M X=X2 D
 . N IBLNPRV I $$LNPRVFT^IBCEU7(X,.IBLNPRV) D FILE^DIE("E","IBLNPRV") Q
 G C22F2
C22X1(DION) K X
 S X(1)=$G(@DIEZTMP@("V",399,DIIENS,.19,DION),$P($G(^DGCR(399,DA,0)),U,19))
 S X=$G(X(1))
 Q
C22F2 S DIXR=985 D C22X2(U) K X2 M X2=X D C22X2("O") K X1 M X1=X
 K X M X=X2 D
 . N DIEXARR M DIEXARR=X S DIEZCOND=1
 . S X=X(1)=3
 . S DIEZCOND=$G(X) K X M X=DIEXARR Q:'DIEZCOND
 . D REMOVE^IBCEU7(IBIFN,X(1))
 G C22F3
C22X2(DION) K X
 S X(1)=$G(@DIEZTMP@("V",399,DIIENS,.19,DION),$P($G(^DGCR(399,DA,0)),U,19))
 S X=$G(X(1))
 Q
C22F3 S DIEZRXR(399,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=820 S DIEZRXR(399,DIXR)=""
 Q
X22 S DIC("S")="N Z S Z=$G(^IBE(353,Y,2)) I $P(Z,U,2)=""P"",$P(Z,U,4)" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
23 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=23 D X23 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X23 S DIPA("FT")=$P($G(^DGCR(399,DA,0)),U,19)
 Q
24 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=24 D X24 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X24 I $P($G(^IBE(353,+DIPA("FT"),2)),U,2)="P",$P($G(^(2)),U,4) S DIPA("FT1")=DIPA("FT") D CKFT^IBCIUT1(IBIFN) S Y="@615"
 Q
25 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=25 D X25 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X25 W !,*7,"Must be a printable national form type"
 Q
26 D:$D(DG)>9 F^DIE17,DE S DQ=26,DW="0;19",DV="R*P353'",DU="",DIFLD=.19,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C26^IBXS6",DE(DW,"INDEX")=1
 S DU="IBE(353,"
 S X=$G(DIPA("FT1"))
 S Y=X
 S X=Y,DB(DQ)=1 G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD
C26 G C26S:$D(DE(26))[0 K DB
 S X=DE(26),DIC=DIE
 ;
 S X=DE(26),DIC=DIE
 S DGRVRCAL=2
 S X=DE(26),DIC=DIE
 D ALLID^IBCEP3(DA,.19,2)
 S X=DE(26),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,1),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,1)=DIV,DIH=399,DIG=140 D ^DICR
 S X=DE(26),DIC=DIE
 D ATTREND^IBCU1(DA,"","")
 S X=DE(26),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,2),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,2)=DIV,DIH=399,DIG=141 D ^DICR
 S X=DE(26),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,3),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,3)=DIV,DIH=399,DIG=142 D ^DICR
 S X=DE(26),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,4),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,4)=DIV,DIH=399,DIG=143 D ^DICR
 S X=DE(26),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,5),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,5)=DIV,DIH=399,DIG=144 D ^DICR
 S X=DE(26),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(1)=$S($D(^DGCR(399,D0,"M2")):^("M2"),1:"") S X=$P(Y(1),U,6),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"M2")),DIV=X S $P(^("M2"),U,6)=DIV,DIH=399,DIG=145 D ^DICR
C26S S X="" G:DG(DQ)=X C26F1 K DB
 S X=DG(DQ),DIC=DIE
 X ^DD(399,.19,1,1,1.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,0)):^(0),1:"") S X=$P(Y(1),U,9),X=X S DIU=X K Y S X=DIV S X=5 S DIH=$G(^DGCR(399,DIV(0),0)),DIV=X S $P(^(0),U,9)=DIV,DIH=399,DIG=.09 D ^DICR
 S X=DG(DQ),DIC=DIE
 S DGRVRCAL=1
 S X=DG(DQ),DIC=DIE
 D ALLID^IBCEP3(DA,.19,1)
 S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 D ATTREND^IBCU1(DA,"","")
 S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 ;
C26F1 N X,X1,X2 S DIXR=984 D C26X1(U) K X2 M X2=X D C26X1("O") K X1 M X1=X
 K X M X=X2 D
 . N IBLNPRV I $$LNPRVFT^IBCEU7(X,.IBLNPRV) D FILE^DIE("E","IBLNPRV") Q
 G C26F2
C26X1(DION) K X
 S X(1)=$G(@DIEZTMP@("V",399,DIIENS,.19,DION),$P($G(^DGCR(399,DA,0)),U,19))
 S X=$G(X(1))
 Q
C26F2 S DIXR=985 D C26X2(U) K X2 M X2=X D C26X2("O") K X1 M X1=X
 K X M X=X2 D
 . N DIEXARR M DIEXARR=X S DIEZCOND=1
 . S X=X(1)=3
 . S DIEZCOND=$G(X) K X M X=DIEXARR Q:'DIEZCOND
 . D REMOVE^IBCEU7(IBIFN,X(1))
 G C26F3
C26X2(DION) K X
 S X(1)=$G(@DIEZTMP@("V",399,DIIENS,.19,DION),$P($G(^DGCR(399,DA,0)),U,19))
 S X=$G(X(1))
 Q
C26F3 S DIEZRXR(399,DIIENS)=$$OREF^DILF($NA(@$$CREF^DILF(DIE)))
 F DIXR=820 S DIEZRXR(399,DIXR)=""
 Q
X26 S DIC("S")="N Z S Z=$G(^IBE(353,Y,2)) I $P(Z,U,2)=""P"",$P(Z,U,4)" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
27 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=27 D X27 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X27 S Y="@614"
 Q
28 S DQ=29 ;@615
29 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=29 D X29 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X29 D FTPRV^IBCEU5(DA)
 Q
30 S DQ=31 ;@62
31 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=31 D X31 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X31 S:IBDR20'["62" Y="@63"
 Q
32 D:$D(DG)>9 F^DIE17,DE S DQ=32,DW="U;5",DV="RFOX",DU="",DIFLD=155,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DQ(32,2)="S Y(0)=Y S Y=$S(Y:""YES"",Y=0:""NO"",1:"""")"
 G RE
X32 I $D(X) D YN^IBCU
 I $D(X),X'?.ANP K X
 Q
 ;
33 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=33 D X33 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X33 S:X=0 Y=156
 Q
34 S DW="U;7",DV="FOX",DU="",DIFLD=157,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DQ(34,2)="S Y(0)=Y S Y=$S(Y:""YES"",Y=0:""NO"",1:"""")"
 G RE
X34 I $D(X) D YN^IBCU S:$G(X)=1 X=$$ROI399^IBNCPDR4($G(DA))
 I $D(X),X'?.ANP K X
 Q
 ;
35 S DW="U;6",DV="RFOX",DU="",DIFLD=156,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DQ(35,2)="S Y(0)=Y S Y=$S(Y="""":"""",""Yy1""[Y:""YES"",""Nn0""[Y:""NO"",1:"""")"
 G RE
X35 I $D(X) D YN^IBCU I $D(X) X:X=0 ^DD(399,156,9.3) K IBRATY
 I $D(X),X'?.ANP K X
 Q
 ;
36 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=36 D X36 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X36 S:'$D(IBOX) Y="@63"
 Q
37 S DW="U;3",DV="RFOX",DU="",DIFLD=153,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DQ(37,2)="S Y(0)=Y S Y=$S(Y:""YES"",Y=0:""NO"",1:"""")"
 G RE
X37 I $D(X) D YN^IBCU
 I $D(X),X'?.ANP K X
 Q
 ;
38 S DQ=39 ;@63
39 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=39 D X39 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X39 S:IBDR20'["63" Y="@64"
 Q
40 S DW="U;1",DV="RDX",DU="",DIFLD=151,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C40^IBXS6"
 G RE
C40 G C40S:$D(DE(40))[0 K DB
 S X=DE(40),DIC=DIE
 ;
 S X=DE(40),DIC=DIE
 S DGRVRCAL=2
 S X=DE(40),DIC=DIE
 ;
 S X=DE(40),DIC=DIE
 K:$P(^DGCR(399,DA,0),"^",2) ^DGCR(399,"APDS",$P(^(0),U,2),-X,DA)
C40S S X="" G:DG(DQ)=X C40F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X I $P(^DGCR(399,DA,0),U,5)<3 I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U")):^("U"),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X=DIV S X=$$LOS1^IBCU64(DA) X ^DD(399,151,1,1,1.4)
 S X=DG(DQ),DIC=DIE
 S DGRVRCAL=1
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X I +$G(^DGCR(399,DA,"U1"))=0 I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U1")):^("U1"),1:"") S X=$P(Y(1),U,1),X=X S DIU=X K Y S X=DIV S X=0 X ^DD(399,151,1,3,1.4)
 S X=DG(DQ),DIC=DIE
 S:$P(^DGCR(399,DA,0),"^",2) ^DGCR(399,"APDS",$P(^(0),U,2),-X,DA)=""
C40F1 Q
X40 S %DT="ETP" D ^%DT S X=Y K:Y<1 X I $D(X) D DDAT^IBCU4 K IB00
 Q
 ;
41 D:$D(DG)>9 F^DIE17,DE S DQ=41,DW="U;2",DV="RDX",DU="",DIFLD=152,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C41^IBXS6"
 G RE
C41 G C41S:$D(DE(41))[0 K DB
 S X=DE(41),DIC=DIE
 ;
 S X=DE(41),DIC=DIE
 S DGRVRCAL=2
C41S S X="" G:DG(DQ)=X C41F1 K DB
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X I $P(^DGCR(399,DA,0),U,5)<3 I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"U")):^("U"),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X=DIV S X=$$LOS1^IBCU64(DA) X ^DD(399,152,1,1,1.4)
 S X=DG(DQ),DIC=DIE
 S DGRVRCAL=1
C41F1 Q
X41 S %DT="ETP" D ^%DT S X=Y K:Y<1 X I $D(X) D DDAT1^IBCU4 K IB00
 Q
 ;
42 S DQ=43 ;@64
43 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=43 D X43 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X43 S:IBDR20'["64" Y="@65"
 Q
44 D:$D(DG)>9 F^DIE17,DE S DQ=44,DW="U;11",DV="*P399.1'",DU="",DIFLD=161,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C44^IBXS6"
 S DU="DGCR(399.1,"
 G RE
C44 G C44S:$D(DE(44))[0 K DB
 S X=DE(44),DIC=DIE
 ;
C44S S X="" G:DG(DQ)=X C44F1 K DB
 D ^IBXS61
C44F1 Q
X44 S DIC("S")="I $P(^DGCR(399.1,+Y,0),""^"",5)=1" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
45 D:$D(DG)>9 F^DIE17,DE S DQ=45,DW="U;15",DV="F",DU="",DIFLD=165,DLB=$$LABEL^DIALOGZ(DP,DIFLD)
 S DE(DW)="C45^IBXS6"
 G RE
C45 G C45S:$D(DE(45))[0 K DB
 S X=DE(45),DIC=DIE
 ;
 S X=DE(45),DIC=DIE
 ;
C45S S X="" G:DG(DQ)=X C45F1 K DB
 D ^IBXS62
C45F1 Q
X45 K:$L(X)>6!($L(X)<1)!'(X?.N) X
 I $D(X),X'?.ANP K X
 Q
 ;
46 S DQ=47 ;@65
47 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=47 D X47 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X47 S:IBDR20'["65" Y="@66"
 Q
48 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=48 D X48 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X48 D RCD^IBCU1
 Q
49 D:$D(DG)>9 F^DIE17,DE S DQ=49,D=0 K DE(1) ;42
 S DIFLD=42,DGO="^IBXS63",DC="16^399.042IPA^RC^",DV="399.042MR*P399.2'",DW="0;1",DOW=$$LABEL^DIALOGZ(DP,DIFLD),DLB=$P($$EZBLD^DIALOG(8042,DOW),": ") S:D DC=DC_D
 S DU="DGCR(399.2,"
 G RE:D I $D(DSC(399.042))#2,$P(DSC(399.042),"I $D(^UTILITY(",1)="" X DSC(399.042) S D=$O(^(0)) S:D="" D=-1 G M49
 S D=$S($D(^DGCR(399,DA,"RC",0)):$P(^(0),U,3,4),$O(^(0))'="":$O(^(0)),1:-1)
M49 I D>0 S DC=DC_D I $D(^DGCR(399,DA,"RC",+D,0)) S DE(49)=$P(^(0),U,1)
 G RE
R49 D DE
 S D=$S($D(^DGCR(399,DA,"RC",0)):$P(^(0),U,3,4),1:1) G 49+1
 ;
50 D:$D(DG)>9 F^DIE17 G ^IBXS64
