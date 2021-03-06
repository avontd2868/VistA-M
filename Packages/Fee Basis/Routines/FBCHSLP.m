FBCHSLP ;AISC/DMK-PRINT SUSPENSION LETTERS CONTINUED ;7/NOV/2006
 ;;3.5;FEE BASIS;**23,101**;JAN 30, 1995;Build 2
 ;;Per VHA Directive 2004-038, this routine should not be modified.
 F K=0:0 S K=$O(^FBAA(162.2,"AI",K)) Q:K'>0  I $S($G(IFN):IFN=K,1:1) S FBSW=1,FBDT=BEGDATE-.001 F ZZ=0:0 S FBDT=$O(^FBAA(162.2,"AI",K,FBDT)) D WPBOT:FBDT'>0&(FBSW=0)!(FBDT>ENDDATE)&(FBSW=0) Q:FBDT'>0!(FBDT>ENDDATE)  D MORE
 K FBCHAD,FBCHDT,FBCHPHY Q
MORE F J=0:0 S J=$O(^FBAA(162.2,"AI",K,FBDT,J)) Q:J'>0  I $S($G(DFN):DFN=J,1:1) D:$D(^DPT(J,0)) GOTP^FBAASLP I $D(^FBAAV(K,0)) D MID
 Q
GOTV S Y(0)=^FBAAV(K,0),VNAM=$P(Y(0),"^",1),FBSW=0
 I VNAM["," S VNAM=$P(VNAM,",",2)_" "_$P(VNAM,",",1)
 S VST1=$P(Y(0),"^",3),VST2=$P(Y(0),"^",14),VCITY=$P(Y(0),"^",4),VSTATE=$S($D(^DIC(5,+$P(Y(0),"^",5),0)):$P(^(0),"^",2),1:"  "),VZIP=$P(Y(0),"^",6)
 W @IOF,!!!!!!!,?5,VNAM,!,?5,VST1,! I VST2]"" W ?5,VST2,!
 W ?5,VCITY,"  ",VSTATE,"  ",VZIP,!!!!
WPBEG S DIWL=1,DIWF="WC79" K ^UTILITY($J,"W")
 I $D(^FBAA(161.3,FBLET,1,1)) F FBRR=0:0 S FBRR=$O(^FBAA(161.3,FBLET,1,FBRR)) Q:FBRR'>0  S FBXX=^(FBRR,0),X=FBXX D ^DIWP
 D ^DIWW:$D(FBXX) K FBXX
 D HED
 Q
MID S FBA=0 F FBAA=0:0 S FBA=$O(^FBAA(162.2,"AI",K,FBDT,J,FBA)) Q:FBA=""  I $S(FBSLW=0:1,FBSLW=1&($D(FBAAS(FBA))):1,1:0) D MORE2
 Q
MORE2 F L=0:0 S L=$O(^FBAA(162.2,"AI",K,FBDT,J,FBA,L)) Q:L'>0  I $D(^FBAA(162.2,L,0)) S Z(0)=^(0) D BOT
 Q
WPBOT S DIWL=1,DIWF="WC79" K ^UTILITY($J,"W") W !!
 I $D(^FBAA(161.3,FBLET,2)) F FBRR=0:0 S FBRR=$O(^FBAA(161.3,FBLET,2,FBRR)) Q:FBRR'>0  S FBXX=^(FBRR,0),X=FBXX D ^DIWP
 D ^DIWW:$D(FBXX) K FBXX
 Q
BOT I FBSW=1 D GOTV^FBAASLP,HED S FBSW=0,FBGOT=1
 S Y=$P($P(Z(0),"^"),".") D PDATE^FBAAUTL S FBCHDT=FBPDT,Y=$P($P(Z(0),"^",5),".") D PDATE^FBAAUTL S FBCHAD=FBPDT,FBCHPHY=$P(Z(0),"^",7)
 D GOTPHY
 I $Y+4>IOSL W @IOF D HED
 W !!,PNAME,?32,PSSN,?56,FBCHDT,!,?18,FBCHAD,?46,FBCHPHY,!
 G:FBA=4&($D(^FBAA(162.2,L,1,0))) WPFT
 S DIWL=1,DIWF="WC79",FBI=FBA K ^UTILITY($J,"W")
 F FBRR=0:0 S FBRR=$O(^FBAA(161.27,FBI,1,FBRR)) Q:FBRR'>0  S FBXX=^(FBRR,0),X=FBXX D ^DIWP
 D ^DIWW:$D(FBXX) K FBXX
 Q
HED W !,"PATIENT NAME",?36,"SSN",?53,"NOTIFICATION DATE",!,?15,"ADMISSION DATE",?43,"ATTENDING PHYSICIAN",!,"   REASON FOR SUSPENSION",!,UL,! Q
 ;
GOTP ; Utilize new API for Name Standardization
 ;
 S Y(0)=^DPT(J,0),PNAME=$$NAME^FBCHREQ2(J)
 S PSSN=$TR($$SSNL4^FBAAUTL($$SSN^FBAAUTL(J)),"-","")
 I PNAME["," D
 .N FBNAMES
 .S FBNAMES("FILE")=2,FBNAMES("IENS")=J_",",FBNAMES("FIELD")=.01
 .S PNAME=$$NAMEFMT^XLFNAME(.FBNAMES)
 Q
WPFT S DIWL=1,DIWF="WC79" K ^UTILITY($J,"W")
 F FBRR=0:0 S FBRR=$O(^FBAA(162.2,L,1,FBRR)) Q:FBRR'>0  S FBXX=^(FBRR,0),X=FBXX D ^DIWP
 D ^DIWW:$D(FBXX) K FBXX
 Q
HELP W !,"Answer 'Yes' to print suspension letters for all suspension",!,"codes, otherwise answer 'No' to select specific codes." G RDCODE^FBAASLP
GOTPHY S FBCHPHY=$S(FBCHPHY="":"Unknown",1:FBCHPHY)
 I FBCHPHY["," S FBCHPHY=$P(FBCHPHY,",",2)_" "_$P(FBCHPHY,",")
 Q
