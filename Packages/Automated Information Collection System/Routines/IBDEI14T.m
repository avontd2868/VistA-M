IBDEI14T ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,18903,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18903,1,3,0)
 ;;=3^Malig Neop Extrahepatic Bile Duct
 ;;^UTILITY(U,$J,358.3,18903,1,4,0)
 ;;=4^C24.0
 ;;^UTILITY(U,$J,358.3,18903,2)
 ;;=^5000940
 ;;^UTILITY(U,$J,358.3,18904,0)
 ;;=C23.^^94^916^122
 ;;^UTILITY(U,$J,358.3,18904,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18904,1,3,0)
 ;;=3^Malig Neop Gallbladder
 ;;^UTILITY(U,$J,358.3,18904,1,4,0)
 ;;=4^C23.
 ;;^UTILITY(U,$J,358.3,18904,2)
 ;;=^267098
 ;;^UTILITY(U,$J,358.3,18905,0)
 ;;=C32.9^^94^916^126
 ;;^UTILITY(U,$J,358.3,18905,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18905,1,3,0)
 ;;=3^Malig Neop Larynx,Unspec
 ;;^UTILITY(U,$J,358.3,18905,1,4,0)
 ;;=4^C32.9
 ;;^UTILITY(U,$J,358.3,18905,2)
 ;;=^5000956
 ;;^UTILITY(U,$J,358.3,18906,0)
 ;;=C64.2^^94^916^130
 ;;^UTILITY(U,$J,358.3,18906,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18906,1,3,0)
 ;;=3^Malig Neop Left Kidney,Except Renal Pelvis
 ;;^UTILITY(U,$J,358.3,18906,1,4,0)
 ;;=4^C64.2
 ;;^UTILITY(U,$J,358.3,18906,2)
 ;;=^5001249
 ;;^UTILITY(U,$J,358.3,18907,0)
 ;;=C65.2^^94^916^133
 ;;^UTILITY(U,$J,358.3,18907,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18907,1,3,0)
 ;;=3^Malig Neop Left Renal Pelvis
 ;;^UTILITY(U,$J,358.3,18907,1,4,0)
 ;;=4^C65.2
 ;;^UTILITY(U,$J,358.3,18907,2)
 ;;=^5001252
 ;;^UTILITY(U,$J,358.3,18908,0)
 ;;=C62.92^^94^916^134
 ;;^UTILITY(U,$J,358.3,18908,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18908,1,3,0)
 ;;=3^Malig Neop Left Testis,Unspec
 ;;^UTILITY(U,$J,358.3,18908,1,4,0)
 ;;=4^C62.92
 ;;^UTILITY(U,$J,358.3,18908,2)
 ;;=^5001238
 ;;^UTILITY(U,$J,358.3,18909,0)
 ;;=C22.8^^94^916^135
 ;;^UTILITY(U,$J,358.3,18909,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18909,1,3,0)
 ;;=3^Malig Neop Liver,Primary
 ;;^UTILITY(U,$J,358.3,18909,1,4,0)
 ;;=4^C22.8
 ;;^UTILITY(U,$J,358.3,18909,2)
 ;;=^5000939
 ;;^UTILITY(U,$J,358.3,18910,0)
 ;;=C06.9^^94^916^138
 ;;^UTILITY(U,$J,358.3,18910,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18910,1,3,0)
 ;;=3^Malig Neop Mouth,Unspec
 ;;^UTILITY(U,$J,358.3,18910,1,4,0)
 ;;=4^C06.9
 ;;^UTILITY(U,$J,358.3,18910,2)
 ;;=^5000901
 ;;^UTILITY(U,$J,358.3,18911,0)
 ;;=C11.9^^94^916^139
 ;;^UTILITY(U,$J,358.3,18911,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18911,1,3,0)
 ;;=3^Malig Neop Nasopharynx,Unspec
 ;;^UTILITY(U,$J,358.3,18911,1,4,0)
 ;;=4^C11.9
 ;;^UTILITY(U,$J,358.3,18911,2)
 ;;=^5000911
 ;;^UTILITY(U,$J,358.3,18912,0)
 ;;=C10.9^^94^916^142
 ;;^UTILITY(U,$J,358.3,18912,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18912,1,3,0)
 ;;=3^Malig Neop Oropharynx,Unspec
 ;;^UTILITY(U,$J,358.3,18912,1,4,0)
 ;;=4^C10.9
 ;;^UTILITY(U,$J,358.3,18912,2)
 ;;=^5000909
 ;;^UTILITY(U,$J,358.3,18913,0)
 ;;=C25.9^^94^916^143
 ;;^UTILITY(U,$J,358.3,18913,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18913,1,3,0)
 ;;=3^Malig Neop Pancreas,Unspec
 ;;^UTILITY(U,$J,358.3,18913,1,4,0)
 ;;=4^C25.9
 ;;^UTILITY(U,$J,358.3,18913,2)
 ;;=^5000946
 ;;^UTILITY(U,$J,358.3,18914,0)
 ;;=C47.9^^94^916^144
 ;;^UTILITY(U,$J,358.3,18914,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18914,1,3,0)
 ;;=3^Malig Neop Peripheral Nerves/Autonomic Nervous System,Unspec
 ;;^UTILITY(U,$J,358.3,18914,1,4,0)
 ;;=4^C47.9
 ;;^UTILITY(U,$J,358.3,18914,2)
 ;;=^5001121
 ;;^UTILITY(U,$J,358.3,18915,0)
 ;;=C38.4^^94^916^145
 ;;^UTILITY(U,$J,358.3,18915,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,18915,1,3,0)
 ;;=3^Malig Neop Pleura
 ;;^UTILITY(U,$J,358.3,18915,1,4,0)
 ;;=4^C38.4
 ;;^UTILITY(U,$J,358.3,18915,2)
 ;;=^267140
 ;;^UTILITY(U,$J,358.3,18916,0)
 ;;=C61.^^94^916^146
 ;;^UTILITY(U,$J,358.3,18916,1,0)
 ;;=^358.31IA^4^2