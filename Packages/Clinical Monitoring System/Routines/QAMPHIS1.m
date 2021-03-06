QAMPHIS1 ;HISC/GJC-ROUTINE TO GENERATE MONITOR SUMMARY REPORTS ;9/10/93  15:10
 ;;1.0;Clinical Monitoring System;;09/13/1993
 ;
 S QAQDIC="^QA(743,",QAQDIC(0)="AEMNQZ",QAQDIC("A")="Select MONITOR: ",QAQUTIL="QAM MONITOR" D EN1^QAQSELCT G:QAQQUIT K2
 D ^QAQDATE G:QAQQUIT K2
 ;*** Choose a device ***
 K IOP,%ZIS S %ZIS="MQ" D ^%ZIS G:POP K2
 I $D(IO("Q")) K IO("Q") S ZTDESC="Generate monitor summary reports.",ZTRTN="EN1^QAMPHIS1",(ZTSAVE("QAQ*"),ZTSAVE("^UTILITY($J,"))="" D ^%ZTLOAD G K1
 ;*** End choose device ***
EN1 U IO S QAMFOUND=0
 K QAMST S QAMHDH=1,QAMUOUT="",$P(QAMST,"-",81)="",Y=DT X ^DD("DD") S QAMDT=Y
 S QAM="" F  S QAM=$O(^UTILITY($J,"QAM MONITOR",QAM)) Q:QAM=""  S QAMPG(QAM)=0
 S QAM="" F  S QAM=$O(^UTILITY($J,"QAM MONITOR",QAM)) Q:QAM=""!(QAMUOUT="^")  F QAM1=0:0 S QAM1=$O(^UTILITY($J,"QAM MONITOR",QAM,QAM1)) Q:QAM1'>0  I $D(^QA(743.2,"B",QAM1)) D HDER,PRNT1 Q:QAMUOUT="^"
 I 'QAMFOUND S QAM=$O(^UTILITY($J,"QAM MONITOR","")) D HEAD W !!,"NO DATA FOUND FOR THIS REPORT"
K1 W ! D ^%ZISC,HOME^%ZIS
K2 K %ZIS,DIR,POP,QAM,QAM1,QAM2,QAMDT,QAMFOUND,QAMHDH,QAMND0,QAMND1,QAMND2,QAMPG,QAMST,QAMUOUT,QAQDIC,Y,ZTDESC,ZTIO,ZTRTN,ZTSAVE,ZTSK,^UTILITY($J,"QAM MONITOR")
 D K^QAQDATE S:$D(ZTQUEUED) ZTREQ="@"
 Q
HDER ;HEADER
 S QAMFOUND=1 D HEAD
 S QAMND0=$G(^QA(743,QAM1,0)),QAMND1=$S($D(^QA(743,QAM1,1)):^(1),1:"")
 W !!,"CODE: ",$P(QAMND0,U)_$S($P(QAMND0,U,4):" (a)",1:" (m)"),?43,"TITLE: ",$P(QAMND0,U,2),!
 W "THRESHOLD: ",$P(QAMND1,U,3),?21,$S($P(QAMND1,U,3)["%":"MINSAMPLE: ",1:"ALERT LEV: "),$P(QAMND1,U,2),?42,"TIM FR: ",$P($G(^QA(743.92,+QAMND1,0)),U),!
 Q
HDH ;
 I $E(IOST)="C" K DIR S DIR(0)="E" D ^DIR K DIR S QAMUOUT=$S(Y'>0:"^",1:"") Q:QAMUOUT="^"
 D:QAMHDH HDER
 Q
PRNT1 ;
 F QAM2=0:0 S QAM2=$O(^QA(743.2,"B",QAM1,QAM2)) Q:QAM2'>0  D:$Y>(IOSL-5) HDH Q:QAMUOUT="^"  S QAMND2=$S($D(^QA(743.2,QAM2,0)):^(0),1:"") I $P(QAMND2,U,2)'<QAQNBEG&($P(QAMND2,U,3)'>QAQNEND) D PRNT2
 I QAMUOUT="" S QAMHDH=0 D:$O(^UTILITY($J,"QAM MONITOR",QAM))]"" HDH S QAMHDH=1
 Q
PRNT2 ;
 S Y=$P(QAMND2,U,2) X ^DD("DD") W !,"START: ",Y
 W ?25,"FALLOUT:     ",$P(QAMND2,U,4)
 W ?50,"PERCENT: " I QAMND2]"",$P(QAMND2,U,4),$P(QAMND2,U,5),$P(QAMND2,U,5)>0 W $J(($P(QAMND2,U,4)/$P(QAMND2,U,5))*100,3,3)_"%"
 S Y=$P(QAMND2,U,3) X ^DD("DD") W !,"END:   ",Y
 W ?25,"SAMPLE SIZE: ",$P(QAMND2,U,5)
 W ?50,"THRESHOLD MET: ",$S($P(QAMND2,U,6)=1:"YES",1:"NO"),!
 Q
HEAD ;
 S QAMPG(QAM)=QAMPG(QAM)+1
 W:(QAMPG(QAM)>1)!($E(IOST)="C") @IOF
 W !?32,"MONITOR HISTORY",?68,QAMDT,!?68,"PAGE: ",QAMPG(QAM),!,QAMST
 Q
