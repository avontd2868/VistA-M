IBDEI23R ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,35286,0)
 ;;=M16.51^^163^1799^10
 ;;^UTILITY(U,$J,358.3,35286,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35286,1,3,0)
 ;;=3^Post-Traumatic OA of Right Hip
 ;;^UTILITY(U,$J,358.3,35286,1,4,0)
 ;;=4^M16.51
 ;;^UTILITY(U,$J,358.3,35286,2)
 ;;=^5010779
 ;;^UTILITY(U,$J,358.3,35287,0)
 ;;=M16.52^^163^1799^8
 ;;^UTILITY(U,$J,358.3,35287,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35287,1,3,0)
 ;;=3^Post-Traumatic OA of Left Hip
 ;;^UTILITY(U,$J,358.3,35287,1,4,0)
 ;;=4^M16.52
 ;;^UTILITY(U,$J,358.3,35287,2)
 ;;=^5010780
 ;;^UTILITY(U,$J,358.3,35288,0)
 ;;=M17.0^^163^1799^13
 ;;^UTILITY(U,$J,358.3,35288,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35288,1,3,0)
 ;;=3^Primary OA of Knee,Bilateral
 ;;^UTILITY(U,$J,358.3,35288,1,4,0)
 ;;=4^M17.0
 ;;^UTILITY(U,$J,358.3,35288,2)
 ;;=^5010784
 ;;^UTILITY(U,$J,358.3,35289,0)
 ;;=M17.11^^163^1799^17
 ;;^UTILITY(U,$J,358.3,35289,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35289,1,3,0)
 ;;=3^Primary OA of Right Knee
 ;;^UTILITY(U,$J,358.3,35289,1,4,0)
 ;;=4^M17.11
 ;;^UTILITY(U,$J,358.3,35289,2)
 ;;=^5010786
 ;;^UTILITY(U,$J,358.3,35290,0)
 ;;=M17.12^^163^1799^15
 ;;^UTILITY(U,$J,358.3,35290,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35290,1,3,0)
 ;;=3^Primary OA of Left Knee
 ;;^UTILITY(U,$J,358.3,35290,1,4,0)
 ;;=4^M17.12
 ;;^UTILITY(U,$J,358.3,35290,2)
 ;;=^5010787
 ;;^UTILITY(U,$J,358.3,35291,0)
 ;;=M17.2^^163^1799^7
 ;;^UTILITY(U,$J,358.3,35291,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35291,1,3,0)
 ;;=3^Post-Traumatic OA of Knee,Bilateral
 ;;^UTILITY(U,$J,358.3,35291,1,4,0)
 ;;=4^M17.2
 ;;^UTILITY(U,$J,358.3,35291,2)
 ;;=^5010788
 ;;^UTILITY(U,$J,358.3,35292,0)
 ;;=M17.31^^163^1799^11
 ;;^UTILITY(U,$J,358.3,35292,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35292,1,3,0)
 ;;=3^Post-Traumatic OA of Right Knee
 ;;^UTILITY(U,$J,358.3,35292,1,4,0)
 ;;=4^M17.31
 ;;^UTILITY(U,$J,358.3,35292,2)
 ;;=^5010790
 ;;^UTILITY(U,$J,358.3,35293,0)
 ;;=M17.32^^163^1799^9
 ;;^UTILITY(U,$J,358.3,35293,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35293,1,3,0)
 ;;=3^Post-Traumatic OA of Left Knee
 ;;^UTILITY(U,$J,358.3,35293,1,4,0)
 ;;=4^M17.32
 ;;^UTILITY(U,$J,358.3,35293,2)
 ;;=^5010791
 ;;^UTILITY(U,$J,358.3,35294,0)
 ;;=G30.9^^163^1800^1
 ;;^UTILITY(U,$J,358.3,35294,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35294,1,3,0)
 ;;=3^Alzheimer's Disease,Unspec
 ;;^UTILITY(U,$J,358.3,35294,1,4,0)
 ;;=4^G30.9
 ;;^UTILITY(U,$J,358.3,35294,2)
 ;;=^5003808
 ;;^UTILITY(U,$J,358.3,35295,0)
 ;;=G20.^^163^1800^8
 ;;^UTILITY(U,$J,358.3,35295,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35295,1,3,0)
 ;;=3^Parkinson's Disease
 ;;^UTILITY(U,$J,358.3,35295,1,4,0)
 ;;=4^G20.
 ;;^UTILITY(U,$J,358.3,35295,2)
 ;;=^5003770
 ;;^UTILITY(U,$J,358.3,35296,0)
 ;;=G35.^^163^1800^7
 ;;^UTILITY(U,$J,358.3,35296,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35296,1,3,0)
 ;;=3^Multiple Sclerosis
 ;;^UTILITY(U,$J,358.3,35296,1,4,0)
 ;;=4^G35.
 ;;^UTILITY(U,$J,358.3,35296,2)
 ;;=^79761
 ;;^UTILITY(U,$J,358.3,35297,0)
 ;;=G60.9^^163^1800^5
 ;;^UTILITY(U,$J,358.3,35297,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35297,1,3,0)
 ;;=3^Hereditary/Idiopathic Neuropathy,Unspec
 ;;^UTILITY(U,$J,358.3,35297,1,4,0)
 ;;=4^G60.9
 ;;^UTILITY(U,$J,358.3,35297,2)
 ;;=^5004071
 ;;^UTILITY(U,$J,358.3,35298,0)
 ;;=I69.90^^163^1800^2
 ;;^UTILITY(U,$J,358.3,35298,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,35298,1,3,0)
 ;;=3^Cerebrovascular Disease,Unspec
 ;;^UTILITY(U,$J,358.3,35298,1,4,0)
 ;;=4^I69.90
 ;;^UTILITY(U,$J,358.3,35298,2)
 ;;=^5007551
 ;;^UTILITY(U,$J,358.3,35299,0)
 ;;=R56.9^^163^1800^4
