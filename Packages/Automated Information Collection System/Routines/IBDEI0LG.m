IBDEI0LG ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,9751,1,2,0)
 ;;=2^26011
 ;;^UTILITY(U,$J,358.3,9751,1,3,0)
 ;;=3^FINGER ABSCESS,DRAINAGE,COMPL
 ;;^UTILITY(U,$J,358.3,9752,0)
 ;;=26600^^66^637^31^^^^1
 ;;^UTILITY(U,$J,358.3,9752,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9752,1,2,0)
 ;;=2^26600
 ;;^UTILITY(U,$J,358.3,9752,1,3,0)
 ;;=3^METACARPAL FX,CLOSED TXMT,W/O MANIP,EA BONE
 ;;^UTILITY(U,$J,358.3,9753,0)
 ;;=26605^^66^637^32^^^^1
 ;;^UTILITY(U,$J,358.3,9753,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9753,1,2,0)
 ;;=2^26605
 ;;^UTILITY(U,$J,358.3,9753,1,3,0)
 ;;=3^METACARPAL FX;CLOSED TXMT,W/MANIP,EA BONE
 ;;^UTILITY(U,$J,358.3,9754,0)
 ;;=26641^^66^637^9^^^^1
 ;;^UTILITY(U,$J,358.3,9754,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9754,1,2,0)
 ;;=2^26641
 ;;^UTILITY(U,$J,358.3,9754,1,3,0)
 ;;=3^CARPOMETACARPAL DISLOC;THUMB,W/MANIP
 ;;^UTILITY(U,$J,358.3,9755,0)
 ;;=26700^^66^637^30^^^^1
 ;;^UTILITY(U,$J,358.3,9755,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9755,1,2,0)
 ;;=2^26700
 ;;^UTILITY(U,$J,358.3,9755,1,3,0)
 ;;=3^METACARPAL DISLOC;SINGLE,W/MANIP W/O ANESTH
 ;;^UTILITY(U,$J,358.3,9756,0)
 ;;=26720^^66^637^35^^^^1
 ;;^UTILITY(U,$J,358.3,9756,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9756,1,2,0)
 ;;=2^26720
 ;;^UTILITY(U,$J,358.3,9756,1,3,0)
 ;;=3^PHALANGEAL SHAFT FX;PROX/MIDDLE,W/O MANIP,EA
 ;;^UTILITY(U,$J,358.3,9757,0)
 ;;=26750^^66^637^11^^^^1
 ;;^UTILITY(U,$J,358.3,9757,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9757,1,2,0)
 ;;=2^26750
 ;;^UTILITY(U,$J,358.3,9757,1,3,0)
 ;;=3^DISTAL PHALANX;CLD TXMT,FINGER/THUMB W/O MANIP,EA
 ;;^UTILITY(U,$J,358.3,9758,0)
 ;;=26755^^66^637^12^^^^1
 ;;^UTILITY(U,$J,358.3,9758,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9758,1,2,0)
 ;;=2^26755
 ;;^UTILITY(U,$J,358.3,9758,1,3,0)
 ;;=3^DISTAL PHALANX;CLD TXMT,FINGER/THUMB W/MANIP,EA
 ;;^UTILITY(U,$J,358.3,9759,0)
 ;;=26770^^66^637^26^^^^1
 ;;^UTILITY(U,$J,358.3,9759,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9759,1,2,0)
 ;;=2^26770
 ;;^UTILITY(U,$J,358.3,9759,1,3,0)
 ;;=3^INTERPHALANGEAL DISL (HAND) CLD TX,SINGLE W/ MANIP
 ;;^UTILITY(U,$J,358.3,9760,0)
 ;;=27250^^66^637^19^^^^1
 ;;^UTILITY(U,$J,358.3,9760,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9760,1,2,0)
 ;;=2^27250
 ;;^UTILITY(U,$J,358.3,9760,1,3,0)
 ;;=3^HIP DISL;CLOSED TXMT,W/O ANESTH
 ;;^UTILITY(U,$J,358.3,9761,0)
 ;;=27550^^66^637^27^^^^1
 ;;^UTILITY(U,$J,358.3,9761,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9761,1,2,0)
 ;;=2^27550
 ;;^UTILITY(U,$J,358.3,9761,1,3,0)
 ;;=3^KNEE DISL;CLD TXMT,W/O ANESTH
 ;;^UTILITY(U,$J,358.3,9762,0)
 ;;=27560^^66^637^34^^^^1
 ;;^UTILITY(U,$J,358.3,9762,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9762,1,2,0)
 ;;=2^27560
 ;;^UTILITY(U,$J,358.3,9762,1,3,0)
 ;;=3^PATELLAR DISL;CLD TXMT,W/O ANESTH
 ;;^UTILITY(U,$J,358.3,9763,0)
 ;;=27750^^66^637^41^^^^1
 ;;^UTILITY(U,$J,358.3,9763,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9763,1,2,0)
 ;;=2^27750
 ;;^UTILITY(U,$J,358.3,9763,1,3,0)
 ;;=3^TIBIA SHAFT FX;CLD TXMT,W/O MANIP
 ;;^UTILITY(U,$J,358.3,9764,0)
 ;;=27786^^66^637^14^^^^1
 ;;^UTILITY(U,$J,358.3,9764,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9764,1,2,0)
 ;;=2^27786
 ;;^UTILITY(U,$J,358.3,9764,1,3,0)
 ;;=3^FIBULA (DISTAL) FX;CLD TXMT,W/O MANIP
 ;;^UTILITY(U,$J,358.3,9765,0)
 ;;=27840^^66^637^2^^^^1
 ;;^UTILITY(U,$J,358.3,9765,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9765,1,2,0)
 ;;=2^27840
 ;;^UTILITY(U,$J,358.3,9765,1,3,0)
 ;;=3^ANKLE DISL;CLD TXMT,W/O ANESTH
 ;;^UTILITY(U,$J,358.3,9766,0)
 ;;=28490^^66^637^18^^^^1
 ;;^UTILITY(U,$J,358.3,9766,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,9766,1,2,0)
 ;;=2^28490