IBDEI37N ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,53932,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53932,1,3,0)
 ;;=3^Cardiac allograft vasculopathy
 ;;^UTILITY(U,$J,358.3,53932,1,4,0)
 ;;=4^T86.290
 ;;^UTILITY(U,$J,358.3,53932,2)
 ;;=^5055717
 ;;^UTILITY(U,$J,358.3,53933,0)
 ;;=T86.298^^253^2728^28
 ;;^UTILITY(U,$J,358.3,53933,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53933,1,3,0)
 ;;=3^Heart transplant complications, other
 ;;^UTILITY(U,$J,358.3,53933,1,4,0)
 ;;=4^T86.298
 ;;^UTILITY(U,$J,358.3,53933,2)
 ;;=^5055718
 ;;^UTILITY(U,$J,358.3,53934,0)
 ;;=T86.31^^253^2728^35
 ;;^UTILITY(U,$J,358.3,53934,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53934,1,3,0)
 ;;=3^Heart-lung transplant rejection
 ;;^UTILITY(U,$J,358.3,53934,1,4,0)
 ;;=4^T86.31
 ;;^UTILITY(U,$J,358.3,53934,2)
 ;;=^5055720
 ;;^UTILITY(U,$J,358.3,53935,0)
 ;;=T86.32^^253^2728^33
 ;;^UTILITY(U,$J,358.3,53935,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53935,1,3,0)
 ;;=3^Heart-lung transplant failure
 ;;^UTILITY(U,$J,358.3,53935,1,4,0)
 ;;=4^T86.32
 ;;^UTILITY(U,$J,358.3,53935,2)
 ;;=^5055721
 ;;^UTILITY(U,$J,358.3,53936,0)
 ;;=T86.33^^253^2728^34
 ;;^UTILITY(U,$J,358.3,53936,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53936,1,3,0)
 ;;=3^Heart-lung transplant infection
 ;;^UTILITY(U,$J,358.3,53936,1,4,0)
 ;;=4^T86.33
 ;;^UTILITY(U,$J,358.3,53936,2)
 ;;=^5055722
 ;;^UTILITY(U,$J,358.3,53937,0)
 ;;=T86.39^^253^2728^32
 ;;^UTILITY(U,$J,358.3,53937,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53937,1,3,0)
 ;;=3^Heart-lung transplant complications, other
 ;;^UTILITY(U,$J,358.3,53937,1,4,0)
 ;;=4^T86.39
 ;;^UTILITY(U,$J,358.3,53937,2)
 ;;=^5055723
 ;;^UTILITY(U,$J,358.3,53938,0)
 ;;=T86.41^^253^2728^44
 ;;^UTILITY(U,$J,358.3,53938,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53938,1,3,0)
 ;;=3^Liver transplant rejection
 ;;^UTILITY(U,$J,358.3,53938,1,4,0)
 ;;=4^T86.41
 ;;^UTILITY(U,$J,358.3,53938,2)
 ;;=^5055725
 ;;^UTILITY(U,$J,358.3,53939,0)
 ;;=T86.42^^253^2728^42
 ;;^UTILITY(U,$J,358.3,53939,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53939,1,3,0)
 ;;=3^Liver transplant failure
 ;;^UTILITY(U,$J,358.3,53939,1,4,0)
 ;;=4^T86.42
 ;;^UTILITY(U,$J,358.3,53939,2)
 ;;=^5055726
 ;;^UTILITY(U,$J,358.3,53940,0)
 ;;=T86.43^^253^2728^43
 ;;^UTILITY(U,$J,358.3,53940,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53940,1,3,0)
 ;;=3^Liver transplant infection
 ;;^UTILITY(U,$J,358.3,53940,1,4,0)
 ;;=4^T86.43
 ;;^UTILITY(U,$J,358.3,53940,2)
 ;;=^5055727
 ;;^UTILITY(U,$J,358.3,53941,0)
 ;;=T86.49^^253^2728^41
 ;;^UTILITY(U,$J,358.3,53941,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53941,1,3,0)
 ;;=3^Liver transplant complications, other
 ;;^UTILITY(U,$J,358.3,53941,1,4,0)
 ;;=4^T86.49
 ;;^UTILITY(U,$J,358.3,53941,2)
 ;;=^5055728
 ;;^UTILITY(U,$J,358.3,53942,0)
 ;;=T86.5^^253^2728^15
 ;;^UTILITY(U,$J,358.3,53942,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53942,1,3,0)
 ;;=3^Complications of stem cell transplant
 ;;^UTILITY(U,$J,358.3,53942,1,4,0)
 ;;=4^T86.5
 ;;^UTILITY(U,$J,358.3,53942,2)
 ;;=^5055729
 ;;^UTILITY(U,$J,358.3,53943,0)
 ;;=T86.810^^253^2728^48
 ;;^UTILITY(U,$J,358.3,53943,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53943,1,3,0)
 ;;=3^Lung transplant rejection
 ;;^UTILITY(U,$J,358.3,53943,1,4,0)
 ;;=4^T86.810
 ;;^UTILITY(U,$J,358.3,53943,2)
 ;;=^5055730
 ;;^UTILITY(U,$J,358.3,53944,0)
 ;;=T86.811^^253^2728^46
 ;;^UTILITY(U,$J,358.3,53944,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,53944,1,3,0)
 ;;=3^Lung transplant failure
 ;;^UTILITY(U,$J,358.3,53944,1,4,0)
 ;;=4^T86.811
 ;;^UTILITY(U,$J,358.3,53944,2)
 ;;=^5055731
 ;;^UTILITY(U,$J,358.3,53945,0)
 ;;=T86.812^^253^2728^47
