LRBARBT ;SLC/JL/RAF ; TEST PRINT FOR INTERMEC 4100 10 PART LABEL FORMAT 8/29/94 12:36
 ;;5.2;LAB SERVICE;;Sep 27, 1994
TEST ;prints a test label after programming the Intermec
 S LRACC="CH 0331 87333",LRDAT="03/31/93 14:00",LRTOP="MARBLED RED",PNM="YOKUM,HOKUM XXXXXXXXX",SSN="123-45-6789",LRLLOC="TELEMETRY",LRCE="203987",LRTXT="CHEM7",LRURG="STAT",LRAN=25
 S LRLPNM=$P(PNM,",",1),LRLPNM=LRLPNM_$S($L(LRLPNM)<17:","_$E($P(PNM,",",2),1),1:"")
FLAG S:FLAG=0 LRZTXT=LRTXT S:FLAG=1 LRZTXT=".............."
 S LRLPNM=$P(PNM,",",1),LRLPNM=LRLPNM_$S($L(LRLPNM)<18:","_$E($P(PNM,",",2),1),1:"")
PRT ;programs the Intermec for print mode
 W *2,"R",*3
 W *2,*27,"E4",*24,!,LRACC,!,LRDAT,!,LRTOP,!,$E(PNM,1,27),!,SSN,!,"W:",$E(LRLLOC,1,9),!,$E("0000",$L(LRAN),4)_LRAN,!,"Order#:",LRCE,!,$E(LRTXT,1,19) W:$L(LRTXT)>19 "..." W ! W:$D(LRURG)#2 "STAT"
 W !,LRACC,!,LRTOP,!,LRACC,!,LRLPNM,!,SSN,!,LRDAT,!,$S($P(LRTXT,";",1)'="":$P(LRTXT,";",1),1:LRZTXT),!,*3
 W *2,LRACC,!,LRTOP,!,LRACC,!,LRLPNM,!,SSN,!,LRDAT,!,$S($P(LRTXT,";",2)'="":$P(LRTXT,";",2),1:LRZTXT),!,LRACC,!,LRDAT,!,LRTOP,!,$E(PNM,1,27),!,SSN,!,"W:",$E(LRLLOC,1,9),!,*3
 W *2,"Order#:",LRCE,!,$E(LRTXT,1,26) W:$L(LRTXT)>26 "..." W ! W:$D(LRURG)#2 "STAT" W *3
 W *2,!,LRACC,!,LRTOP,!,LRACC,!,LRTOP,!,LRACC,!,LRLPNM,!,SSN,!,LRDAT,!,$S($P(LRTXT,";",3)'="":$P(LRTXT,";",3),1:LRZTXT),!,LRACC,!,LRLPNM,!,SSN,!,LRDAT,!,$S($P(LRTXT,";",4)'="":$P(LRTXT,";",4),1:LRZTXT),*3,*2,*23,*15,"S30",*12,*3
 K FLAG,LRACC,LRAN,LRCE,LRDAT,LRLPNM,LRTOP,LRTXT,LRZTXT,LRURG,PNM,SSN
 Q
