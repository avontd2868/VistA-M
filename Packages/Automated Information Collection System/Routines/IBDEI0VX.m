IBDEI0VX ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,14699,1,2,0)
 ;;=2^Needle asp absc/cyst/hematoma
 ;;^UTILITY(U,$J,358.3,14699,1,4,0)
 ;;=4^10160
 ;;^UTILITY(U,$J,358.3,14700,0)
 ;;=10140^^84^786^11
 ;;^UTILITY(U,$J,358.3,14700,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14700,1,2,0)
 ;;=2^I&D hematoma/seroma,skin
 ;;^UTILITY(U,$J,358.3,14700,1,4,0)
 ;;=4^10140
 ;;^UTILITY(U,$J,358.3,14701,0)
 ;;=19000^^84^786^1
 ;;^UTILITY(U,$J,358.3,14701,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14701,1,2,0)
 ;;=2^Aspirate breast cyst, first
 ;;^UTILITY(U,$J,358.3,14701,1,4,0)
 ;;=4^19000
 ;;^UTILITY(U,$J,358.3,14702,0)
 ;;=19001^^84^786^2
 ;;^UTILITY(U,$J,358.3,14702,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14702,1,2,0)
 ;;=2^Aspirate Breast Cyst,Ea Addl Cyst
 ;;^UTILITY(U,$J,358.3,14702,1,4,0)
 ;;=4^19001
 ;;^UTILITY(U,$J,358.3,14703,0)
 ;;=26011^^84^786^4
 ;;^UTILITY(U,$J,358.3,14703,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14703,1,2,0)
 ;;=2^Drain abscess finger,complic
 ;;^UTILITY(U,$J,358.3,14703,1,4,0)
 ;;=4^26011
 ;;^UTILITY(U,$J,358.3,14704,0)
 ;;=26020^^84^786^6
 ;;^UTILITY(U,$J,358.3,14704,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14704,1,2,0)
 ;;=2^Drain Tendon Sheath,Ea Hand
 ;;^UTILITY(U,$J,358.3,14704,1,4,0)
 ;;=4^26020
 ;;^UTILITY(U,$J,358.3,14705,0)
 ;;=10120^^84^786^16
 ;;^UTILITY(U,$J,358.3,14705,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14705,1,2,0)
 ;;=2^Removal,foreign body,simple
 ;;^UTILITY(U,$J,358.3,14705,1,4,0)
 ;;=4^10120
 ;;^UTILITY(U,$J,358.3,14706,0)
 ;;=10121^^84^786^15
 ;;^UTILITY(U,$J,358.3,14706,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14706,1,2,0)
 ;;=2^Removal,foreign body,complex
 ;;^UTILITY(U,$J,358.3,14706,1,4,0)
 ;;=4^10121
 ;;^UTILITY(U,$J,358.3,14707,0)
 ;;=26010^^84^786^5^^^^1
 ;;^UTILITY(U,$J,358.3,14707,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14707,1,2,0)
 ;;=2^Drain abscess finger,simple
 ;;^UTILITY(U,$J,358.3,14707,1,4,0)
 ;;=4^26010
 ;;^UTILITY(U,$J,358.3,14708,0)
 ;;=10180^^84^786^10^^^^1
 ;;^UTILITY(U,$J,358.3,14708,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14708,1,2,0)
 ;;=2^I&D complex postop wound
 ;;^UTILITY(U,$J,358.3,14708,1,4,0)
 ;;=4^10180
 ;;^UTILITY(U,$J,358.3,14709,0)
 ;;=10080^^84^786^3^^^^1
 ;;^UTILITY(U,$J,358.3,14709,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14709,1,2,0)
 ;;=2^Drain Pilonidal Cyst
 ;;^UTILITY(U,$J,358.3,14709,1,4,0)
 ;;=4^10080
 ;;^UTILITY(U,$J,358.3,14710,0)
 ;;=10021^^84^786^7^^^^1
 ;;^UTILITY(U,$J,358.3,14710,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14710,1,2,0)
 ;;=2^FNA w/o Image
 ;;^UTILITY(U,$J,358.3,14710,1,4,0)
 ;;=4^10021
 ;;^UTILITY(U,$J,358.3,14711,0)
 ;;=10030^^84^786^12^^^^1
 ;;^UTILITY(U,$J,358.3,14711,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14711,1,2,0)
 ;;=2^Image-Guide Coll by Cath Absc
 ;;^UTILITY(U,$J,358.3,14711,1,4,0)
 ;;=4^10030
 ;;^UTILITY(U,$J,358.3,14712,0)
 ;;=19020^^84^786^13^^^^1
 ;;^UTILITY(U,$J,358.3,14712,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14712,1,2,0)
 ;;=2^Mastotomy w/Exp/Drng Absc Deep
 ;;^UTILITY(U,$J,358.3,14712,1,4,0)
 ;;=4^19020
 ;;^UTILITY(U,$J,358.3,14713,0)
 ;;=17000^^84^787^1
 ;;^UTILITY(U,$J,358.3,14713,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14713,1,2,0)
 ;;=2^Single lesion,skin,any method
 ;;^UTILITY(U,$J,358.3,14713,1,4,0)
 ;;=4^17000
 ;;^UTILITY(U,$J,358.3,14714,0)
 ;;=11200^^84^787^4
 ;;^UTILITY(U,$J,358.3,14714,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14714,1,2,0)
 ;;=2^Skin tags, 1-15, any method
 ;;^UTILITY(U,$J,358.3,14714,1,4,0)
 ;;=4^11200
 ;;^UTILITY(U,$J,358.3,14715,0)
 ;;=17003^^84^787^2^^^^1
 ;;^UTILITY(U,$J,358.3,14715,1,0)
 ;;=^358.31IA^4^2