IBDEI0X9 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,15331,2)
 ;;=^5001905
 ;;^UTILITY(U,$J,358.3,15332,0)
 ;;=D03.72^^85^815^24
 ;;^UTILITY(U,$J,358.3,15332,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15332,1,3,0)
 ;;=3^Melanoma in Situ of Left Lower Limb
 ;;^UTILITY(U,$J,358.3,15332,1,4,0)
 ;;=4^D03.72
 ;;^UTILITY(U,$J,358.3,15332,2)
 ;;=^5001906
 ;;^UTILITY(U,$J,358.3,15333,0)
 ;;=D03.8^^85^815^27
 ;;^UTILITY(U,$J,358.3,15333,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15333,1,3,0)
 ;;=3^Melanoma in Situ of Other Sites
 ;;^UTILITY(U,$J,358.3,15333,1,4,0)
 ;;=4^D03.8
 ;;^UTILITY(U,$J,358.3,15333,2)
 ;;=^5001907
 ;;^UTILITY(U,$J,358.3,15334,0)
 ;;=C4A.0^^85^816^8
 ;;^UTILITY(U,$J,358.3,15334,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15334,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Lip
 ;;^UTILITY(U,$J,358.3,15334,1,4,0)
 ;;=4^C4A.0
 ;;^UTILITY(U,$J,358.3,15334,2)
 ;;=^5001137
 ;;^UTILITY(U,$J,358.3,15335,0)
 ;;=C4A.11^^85^816^12
 ;;^UTILITY(U,$J,358.3,15335,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15335,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Right Eyelid
 ;;^UTILITY(U,$J,358.3,15335,1,4,0)
 ;;=4^C4A.11
 ;;^UTILITY(U,$J,358.3,15335,2)
 ;;=^5001139
 ;;^UTILITY(U,$J,358.3,15336,0)
 ;;=C4A.12^^85^816^5
 ;;^UTILITY(U,$J,358.3,15336,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15336,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Left Eyelid
 ;;^UTILITY(U,$J,358.3,15336,1,4,0)
 ;;=4^C4A.12
 ;;^UTILITY(U,$J,358.3,15336,2)
 ;;=^5001140
 ;;^UTILITY(U,$J,358.3,15337,0)
 ;;=C4A.21^^85^816^11
 ;;^UTILITY(U,$J,358.3,15337,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15337,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Right Ear/External Auric Canal
 ;;^UTILITY(U,$J,358.3,15337,1,4,0)
 ;;=4^C4A.21
 ;;^UTILITY(U,$J,358.3,15337,2)
 ;;=^5001142
 ;;^UTILITY(U,$J,358.3,15338,0)
 ;;=C4A.22^^85^816^4
 ;;^UTILITY(U,$J,358.3,15338,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15338,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Left Ear/External Auric Canal
 ;;^UTILITY(U,$J,358.3,15338,1,4,0)
 ;;=4^C4A.22
 ;;^UTILITY(U,$J,358.3,15338,2)
 ;;=^5001143
 ;;^UTILITY(U,$J,358.3,15339,0)
 ;;=C4A.30^^85^816^3
 ;;^UTILITY(U,$J,358.3,15339,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15339,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Face,Unspec
 ;;^UTILITY(U,$J,358.3,15339,1,4,0)
 ;;=4^C4A.30
 ;;^UTILITY(U,$J,358.3,15339,2)
 ;;=^5001144
 ;;^UTILITY(U,$J,358.3,15340,0)
 ;;=C4A.31^^85^816^9
 ;;^UTILITY(U,$J,358.3,15340,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15340,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Nose
 ;;^UTILITY(U,$J,358.3,15340,1,4,0)
 ;;=4^C4A.31
 ;;^UTILITY(U,$J,358.3,15340,2)
 ;;=^5001145
 ;;^UTILITY(U,$J,358.3,15341,0)
 ;;=C4A.39^^85^816^2
 ;;^UTILITY(U,$J,358.3,15341,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15341,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Face NEC
 ;;^UTILITY(U,$J,358.3,15341,1,4,0)
 ;;=4^C4A.39
 ;;^UTILITY(U,$J,358.3,15341,2)
 ;;=^5001146
 ;;^UTILITY(U,$J,358.3,15342,0)
 ;;=C4A.4^^85^816^15
 ;;^UTILITY(U,$J,358.3,15342,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15342,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Scalp/Neck
 ;;^UTILITY(U,$J,358.3,15342,1,4,0)
 ;;=4^C4A.4
 ;;^UTILITY(U,$J,358.3,15342,2)
 ;;=^5001147
 ;;^UTILITY(U,$J,358.3,15343,0)
 ;;=C4A.51^^85^816^1
 ;;^UTILITY(U,$J,358.3,15343,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15343,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Anal Skin
 ;;^UTILITY(U,$J,358.3,15343,1,4,0)
 ;;=4^C4A.51
 ;;^UTILITY(U,$J,358.3,15343,2)
 ;;=^5001148
 ;;^UTILITY(U,$J,358.3,15344,0)
 ;;=C4A.52^^85^816^16
 ;;^UTILITY(U,$J,358.3,15344,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15344,1,3,0)
 ;;=3^Merkel Cell Carcinoma of Skin of Breast