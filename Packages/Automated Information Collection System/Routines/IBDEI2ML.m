IBDEI2ML ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,44065,2)
 ;;=^5009262
 ;;^UTILITY(U,$J,358.3,44066,0)
 ;;=M80.00XA^^200^2220^2
 ;;^UTILITY(U,$J,358.3,44066,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44066,1,3,0)
 ;;=3^Age-Related Osteoporosis w/ Fx,Unspec Site,Init Encntr
 ;;^UTILITY(U,$J,358.3,44066,1,4,0)
 ;;=4^M80.00XA
 ;;^UTILITY(U,$J,358.3,44066,2)
 ;;=^5013363
 ;;^UTILITY(U,$J,358.3,44067,0)
 ;;=M81.0^^200^2220^3
 ;;^UTILITY(U,$J,358.3,44067,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44067,1,3,0)
 ;;=3^Age-Related Osteoporosis w/o Fx
 ;;^UTILITY(U,$J,358.3,44067,1,4,0)
 ;;=4^M81.0
 ;;^UTILITY(U,$J,358.3,44067,2)
 ;;=^5013555
 ;;^UTILITY(U,$J,358.3,44068,0)
 ;;=M85.80^^200^2220^44
 ;;^UTILITY(U,$J,358.3,44068,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44068,1,3,0)
 ;;=3^Osteopenia,Unspec Site
 ;;^UTILITY(U,$J,358.3,44068,1,4,0)
 ;;=4^M85.80
 ;;^UTILITY(U,$J,358.3,44068,2)
 ;;=^5014473
 ;;^UTILITY(U,$J,358.3,44069,0)
 ;;=N62.^^200^2220^24
 ;;^UTILITY(U,$J,358.3,44069,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44069,1,3,0)
 ;;=3^Gynecomastia
 ;;^UTILITY(U,$J,358.3,44069,1,4,0)
 ;;=4^N62.
 ;;^UTILITY(U,$J,358.3,44069,2)
 ;;=^5015790
 ;;^UTILITY(U,$J,358.3,44070,0)
 ;;=E10.43^^200^2220^6
 ;;^UTILITY(U,$J,358.3,44070,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44070,1,3,0)
 ;;=3^DM Type 1 w/ Diabetic Autonomic Polyneuropathy
 ;;^UTILITY(U,$J,358.3,44070,1,4,0)
 ;;=4^E10.43
 ;;^UTILITY(U,$J,358.3,44070,2)
 ;;=^5002607
 ;;^UTILITY(U,$J,358.3,44071,0)
 ;;=E10.59^^200^2220^4
 ;;^UTILITY(U,$J,358.3,44071,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44071,1,3,0)
 ;;=3^DM Type 1 w/ Circulatory Complications
 ;;^UTILITY(U,$J,358.3,44071,1,4,0)
 ;;=4^E10.59
 ;;^UTILITY(U,$J,358.3,44071,2)
 ;;=^5002612
 ;;^UTILITY(U,$J,358.3,44072,0)
 ;;=E10.618^^200^2220^5
 ;;^UTILITY(U,$J,358.3,44072,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44072,1,3,0)
 ;;=3^DM Type 1 w/ Diabetic Arthropathy
 ;;^UTILITY(U,$J,358.3,44072,1,4,0)
 ;;=4^E10.618
 ;;^UTILITY(U,$J,358.3,44072,2)
 ;;=^5002614
 ;;^UTILITY(U,$J,358.3,44073,0)
 ;;=E10.621^^200^2220^7
 ;;^UTILITY(U,$J,358.3,44073,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44073,1,3,0)
 ;;=3^DM Type 1 w/ Diabetic Foot Ulcer
 ;;^UTILITY(U,$J,358.3,44073,1,4,0)
 ;;=4^E10.621
 ;;^UTILITY(U,$J,358.3,44073,2)
 ;;=^5002616
 ;;^UTILITY(U,$J,358.3,44074,0)
 ;;=E10.622^^200^2220^11
 ;;^UTILITY(U,$J,358.3,44074,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44074,1,3,0)
 ;;=3^DM Type 1 w/ Skin Ulcer
 ;;^UTILITY(U,$J,358.3,44074,1,4,0)
 ;;=4^E10.622
 ;;^UTILITY(U,$J,358.3,44074,2)
 ;;=^5002617
 ;;^UTILITY(U,$J,358.3,44075,0)
 ;;=E10.65^^200^2220^10
 ;;^UTILITY(U,$J,358.3,44075,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44075,1,3,0)
 ;;=3^DM Type 1 w/ Hyperglycermia
 ;;^UTILITY(U,$J,358.3,44075,1,4,0)
 ;;=4^E10.65
 ;;^UTILITY(U,$J,358.3,44075,2)
 ;;=^5002623
 ;;^UTILITY(U,$J,358.3,44076,0)
 ;;=E10.39^^200^2220^9
 ;;^UTILITY(U,$J,358.3,44076,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44076,1,3,0)
 ;;=3^DM Type 1 w/ Diabetic Ophthalmic Complications NEC
 ;;^UTILITY(U,$J,358.3,44076,1,4,0)
 ;;=4^E10.39
 ;;^UTILITY(U,$J,358.3,44076,2)
 ;;=^5002603
 ;;^UTILITY(U,$J,358.3,44077,0)
 ;;=E66.3^^200^2220^45
 ;;^UTILITY(U,$J,358.3,44077,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44077,1,3,0)
 ;;=3^Overweight
 ;;^UTILITY(U,$J,358.3,44077,1,4,0)
 ;;=4^E66.3
 ;;^UTILITY(U,$J,358.3,44077,2)
 ;;=^5002830
 ;;^UTILITY(U,$J,358.3,44078,0)
 ;;=E89.1^^200^2220^49
 ;;^UTILITY(U,$J,358.3,44078,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44078,1,3,0)
 ;;=3^Postprocedural Hypoinsulinemia
 ;;^UTILITY(U,$J,358.3,44078,1,4,0)
 ;;=4^E89.1