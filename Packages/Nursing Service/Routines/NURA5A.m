NURA5A ;HIRMFO/MD,FT-SALARY REPORT FOR ENTIRE SERVICE ;8/8/96  12:42
 ;;4.0;NURSING SERVICE;;Apr 25, 1997
 Q:'$D(^DIC(213.9,1,"OFF"))  Q:$P(^DIC(213.9,1,"OFF"),"^",1)=1
 W !
 S (NURQUEUE,NURSW1,NURPAGE,NUROUT)=0
 D EN1^NURSAUTL G QUIT:NUROUT
 I NURMDSW S DIC(0)="AEQZ",NURPLSCR=0 D EN5^NURSAGSP G:$G(NUROUT) QUIT
 I NURMDSW=0,NURPLSW=1 S NURPLSCR=1 D PRD^NURSAGSP K NURPLSCR I $G(NUROUT) G QUIT
 W ! S ZTDESC="Salary Report for Entire Nursing Service",ZTRTN="START^NURA5A" D EN7^NURSUT0 G:POP!($D(ZTSK)) QUIT
START ;
 K ^TMP($J)
 S X="" F I=0:0 S X=$O(^NURSF(210,"AC",X)) Q:X=""  I X'="R" F DA=0:0 S DA=$O(^NURSF(210,"AC",X,DA)) Q:DA'>0  I $D(^NURSF(210,DA,0)),+$P(^(0),U) S DA(1)=$P(^(0),U) D BLD1
 U IO D HEADER,PRINT
QUIT K ^TMP($J) D CLOSE^NURSUT1,^NURAKILL
 Q
BLD1 F NURNODE4=0:0 S NURNODE4=$O(^NURSF(211.8,"C",DA(1),NURNODE4)) Q:NURNODE4'>0  F NURNODE5=0:0 S NURNODE5=$O(^NURSF(211.8,"C",DA(1),NURNODE4,NURNODE5)) Q:NURNODE5'>0  D
 .I $D(^NURSF(211.8,NURNODE4,1,NURNODE5,0)),$P(^(0),U)'>DT&(('$P(^(0),U,6))!($P(^(0),U,6)'<DT)) D BLD2
 .Q
 Q
BLD2 Q:NURSZAP>7&(NURSZDA'=DA)  S NURSZORT=1 D EN3^NURSAUTL:NURSZAP>6,EN2^NURSAUTL:NURSZORT&NURSZAP Q:'NURSZORT
 W:$E(IOST)="C"&($R(100)) "." S NURNEN=1 D SETFAC^NURAAGS1,SETPROG^NURAAGS1
 I $D(^VA(200,DA(1),0)),$P(^(0),"^",1)'="" S N1=$P(^(0),"^")
 E  S N1=" BLANK"
 I $G(NURMDSW),'$G(NURFAC),$G(NURFAC(1))'=$G(NURFAC(2)) Q
 I $G(NURPLSW),$G(NURPROG)=0,$G(NURPROG(1))'=$G(NURPROG(2)) Q
 I $G(NURPLSW) S:NURPROG(2)="NURSING" NURPROG(2)=" NURSING"
 S ^TMP($J,NURFAC(2),NURPROG(2),N1,DA)=""
 Q
 ; DETAIL LINE PRINT ROUTINE
PRINT S NURFAC(2)=""
 F  S NURFAC(2)=$O(^TMP($J,NURFAC(2))) Q:NURFAC(2)=""!(NUROUT)  S NURPROG(2)="" F  S NURPROG(2)=$O(^TMP($J,NURFAC(2),NURPROG(2))) Q:NURPROG(2)=""!(NUROUT)  S N1="" F  S N1=$O(^TMP($J,NURFAC(2),NURPROG(2),N1)) Q:N1=""  D P1 Q:NUROUT
 Q
P1 F DA=0:0 S DA=$O(^TMP($J,NURFAC(2),NURPROG(2),N1,DA)) Q:DA'>0  D WRITE Q:NUROUT
 Q
WRITE I ($Y>(IOSL-6)) D HEADER Q:NUROUT
 S NURSW1=1
 I $D(^VA(200,$P(^NURSF(210,DA,0),"^"),0)),$P(^(0),"^")'="" W !,$E($P(^(0),"^"),1,20)
 E  Q
 S DATA=$S($D(^NURSF(210,DA,7)):^(7),1:"")
 I $P(DATA,"^")'="",$D(^NURSF(211.1,$P(DATA,"^"),0)) S DATA(1)=^(0)
 E  S DATA(1)=""
 W:DATA(1)'="" ?32,$P(DATA(1),"^") S NURSAL=+$$EN12^NURSUT0(DA) W ?55,$J(NURSAL,6,2)
 Q
HEADER I 'NURQUEUE,$E(IOST)="C",NURSW1 D ENDPG^NURSUT1 Q:NUROUT
 S NURPAGE=NURPAGE+1 W:$E(IOST)="C"!(NURPAGE>1) @IOF
 I NURMDSW,$G(NURFAC(2))'="" W ?$$CNTR^NURSUT2(NURFAC(2)),$$FACL^NURSUT2(NURFAC(2))
 W !!,"NURSING SERVICE STAFF SALARIES" S X="T" D ^%DT D:+Y D^DIQ W ?44,Y,?59,"PAGE: ",NURPAGE
 W !!,?32,"GRADE/STEP",?55,"GRADE/STEP" W !,"EMPLOYEE NAME",?32,"CODE",?55,"SALARY" W !,$$REPEAT^XLFSTR("-",70)
 I $G(NURPLSW),$G(NURPROG(2))'="" N Z S Z=$$PROD^NURSUT2(NURPROG(2)) W !,?$$CNTR^NURSUT2(NURPROG(2)),$G(Z),!,?$$CNTR^NURSUT2(NURPROG(2)),$$REPEAT^XLFSTR("-",$L(Z)+1)
 Q
