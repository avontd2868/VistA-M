IBDEI35D ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,52836,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52836,1,3,0)
 ;;=3^Drug Photoallergic Response
 ;;^UTILITY(U,$J,358.3,52836,1,4,0)
 ;;=4^L56.1
 ;;^UTILITY(U,$J,358.3,52836,2)
 ;;=^5009215
 ;;^UTILITY(U,$J,358.3,52837,0)
 ;;=L56.0^^243^2650^29
 ;;^UTILITY(U,$J,358.3,52837,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52837,1,3,0)
 ;;=3^Drug Phototoxic Response
 ;;^UTILITY(U,$J,358.3,52837,1,4,0)
 ;;=4^L56.0
 ;;^UTILITY(U,$J,358.3,52837,2)
 ;;=^5009214
 ;;^UTILITY(U,$J,358.3,52838,0)
 ;;=L23.9^^243^2650^6
 ;;^UTILITY(U,$J,358.3,52838,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52838,1,3,0)
 ;;=3^Dermatitis,Allergic Contact,Cause Unspec
 ;;^UTILITY(U,$J,358.3,52838,1,4,0)
 ;;=4^L23.9
 ;;^UTILITY(U,$J,358.3,52838,2)
 ;;=^5009125
 ;;^UTILITY(U,$J,358.3,52839,0)
 ;;=L30.9^^243^2650^21
 ;;^UTILITY(U,$J,358.3,52839,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52839,1,3,0)
 ;;=3^Dermatitis,Unspec
 ;;^UTILITY(U,$J,358.3,52839,1,4,0)
 ;;=4^L30.9
 ;;^UTILITY(U,$J,358.3,52839,2)
 ;;=^5009159
 ;;^UTILITY(U,$J,358.3,52840,0)
 ;;=L24.9^^243^2650^16
 ;;^UTILITY(U,$J,358.3,52840,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52840,1,3,0)
 ;;=3^Dermatitis,Irritant Contact,Cause Unspec
 ;;^UTILITY(U,$J,358.3,52840,1,4,0)
 ;;=4^L24.9
 ;;^UTILITY(U,$J,358.3,52840,2)
 ;;=^5009136
 ;;^UTILITY(U,$J,358.3,52841,0)
 ;;=L30.0^^243^2650^17
 ;;^UTILITY(U,$J,358.3,52841,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52841,1,3,0)
 ;;=3^Dermatitis,Nummular
 ;;^UTILITY(U,$J,358.3,52841,1,4,0)
 ;;=4^L30.0
 ;;^UTILITY(U,$J,358.3,52841,2)
 ;;=^186823
 ;;^UTILITY(U,$J,358.3,52842,0)
 ;;=L23.2^^243^2650^4
 ;;^UTILITY(U,$J,358.3,52842,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52842,1,3,0)
 ;;=3^Dermatitis,Allergic Contact d/t Cosmetics
 ;;^UTILITY(U,$J,358.3,52842,1,4,0)
 ;;=4^L23.2
 ;;^UTILITY(U,$J,358.3,52842,2)
 ;;=^5009117
 ;;^UTILITY(U,$J,358.3,52843,0)
 ;;=L24.3^^243^2650^12
 ;;^UTILITY(U,$J,358.3,52843,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52843,1,3,0)
 ;;=3^Dermatitis,Irritant Contact d/t Cosmetics
 ;;^UTILITY(U,$J,358.3,52843,1,4,0)
 ;;=4^L24.3
 ;;^UTILITY(U,$J,358.3,52843,2)
 ;;=^5009129
 ;;^UTILITY(U,$J,358.3,52844,0)
 ;;=L27.2^^243^2650^1
 ;;^UTILITY(U,$J,358.3,52844,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52844,1,3,0)
 ;;=3^Dermatitis d/t Ingested Food
 ;;^UTILITY(U,$J,358.3,52844,1,4,0)
 ;;=4^L27.2
 ;;^UTILITY(U,$J,358.3,52844,2)
 ;;=^5009146
 ;;^UTILITY(U,$J,358.3,52845,0)
 ;;=L21.8^^243^2650^20
 ;;^UTILITY(U,$J,358.3,52845,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52845,1,3,0)
 ;;=3^Dermatitis,Seborrheic
 ;;^UTILITY(U,$J,358.3,52845,1,4,0)
 ;;=4^L21.8
 ;;^UTILITY(U,$J,358.3,52845,2)
 ;;=^303310
 ;;^UTILITY(U,$J,358.3,52846,0)
 ;;=L20.89^^243^2650^7
 ;;^UTILITY(U,$J,358.3,52846,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52846,1,3,0)
 ;;=3^Dermatitis,Atopic
 ;;^UTILITY(U,$J,358.3,52846,1,4,0)
 ;;=4^L20.89
 ;;^UTILITY(U,$J,358.3,52846,2)
 ;;=^5009112
 ;;^UTILITY(U,$J,358.3,52847,0)
 ;;=E08.622^^243^2650^23
 ;;^UTILITY(U,$J,358.3,52847,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52847,1,3,0)
 ;;=3^Diabetes d/t Underlying Condition w/ Skin Ulcer
 ;;^UTILITY(U,$J,358.3,52847,1,4,0)
 ;;=4^E08.622
 ;;^UTILITY(U,$J,358.3,52847,2)
 ;;=^5002535
 ;;^UTILITY(U,$J,358.3,52848,0)
 ;;=T81.31XA^^243^2650^26
 ;;^UTILITY(U,$J,358.3,52848,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,52848,1,3,0)
 ;;=3^Disruption External Surgical Wound NEC,Init Encntr
 ;;^UTILITY(U,$J,358.3,52848,1,4,0)
 ;;=4^T81.31XA
 ;;^UTILITY(U,$J,358.3,52848,2)
 ;;=^5054470
 ;;^UTILITY(U,$J,358.3,52849,0)
 ;;=L26.^^243^2650^8