IBDEI01F ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.2)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.2,201,0)
 ;;=VISIT TYPE^343^^^^^2^0^C^^6^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,201,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,201,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,201,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,201,2,1,0)
 ;;=1^ ^28^1^2^^1
 ;;^UTILITY(U,$J,358.2,201,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,201,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,202,0)
 ;;=CPT CODES^346^^^^^1^0^CSU^^1^0^2^0^^0^2^2
 ;;^UTILITY(U,$J,358.2,202,1,0)
 ;;=^358.21I^3^3
 ;;^UTILITY(U,$J,358.2,202,1,1,0)
 ;;=1^3^2
 ;;^UTILITY(U,$J,358.2,202,1,2,0)
 ;;=3^^91
 ;;^UTILITY(U,$J,358.2,202,1,3,0)
 ;;=2^3^54
 ;;^UTILITY(U,$J,358.2,202,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,202,2,1,0)
 ;;=2^ ^5^1^1^^0
 ;;^UTILITY(U,$J,358.2,202,2,2,0)
 ;;=3^ ^50^1^2^^1
 ;;^UTILITY(U,$J,358.2,202,2,3,0)
 ;;=1^ ^^2^^1^^1^^0
 ;;^UTILITY(U,$J,358.2,203,0)
 ;;=ICD-10 DIAGNOSES^347^^^^^4^0^SC^^8^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,203,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,203,2,1,0)
 ;;=4^CODE^8^1^1^^0
 ;;^UTILITY(U,$J,358.2,203,2,2,0)
 ;;=3^DIAGNOSIS^64^1^2^^1
 ;;^UTILITY(U,$J,358.2,203,2,3,0)
 ;;=5^ADD^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,203,2,4,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,203,2,5,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,204,0)
 ;;=CPT CODES^348^^^^^1^0^UC^^1^0^3^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,204,1,0)
 ;;=^358.21I^3^3
 ;;^UTILITY(U,$J,358.2,204,1,1,0)
 ;;=1^3^0
 ;;^UTILITY(U,$J,358.2,204,1,2,0)
 ;;=2^3
 ;;^UTILITY(U,$J,358.2,204,1,3,0)
 ;;=3^3
 ;;^UTILITY(U,$J,358.2,204,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,204,2,1,0)
 ;;=1^ ^^2^^1^^1
 ;;^UTILITY(U,$J,358.2,204,2,2,0)
 ;;=2^ ^5^1^1^^1
 ;;^UTILITY(U,$J,358.2,204,2,3,0)
 ;;=3^ ^45^1^2^^1
 ;;^UTILITY(U,$J,358.2,205,0)
 ;;=VISIT TYPE^349^^^^^2^0^C^^6^0^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,205,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,205,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,205,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,205,2,1,0)
 ;;=1^ ^28^1^2^^1
 ;;^UTILITY(U,$J,358.2,205,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,205,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,206,0)
 ;;=ICD-10 DIAGNOSES^352^^^^^4^0^SC^^8^0^1^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,206,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,206,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,206,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,206,2,1,0)
 ;;=4^CODE^8^1^1^^0
 ;;^UTILITY(U,$J,358.2,206,2,2,0)
 ;;=3^DIAGNOSIS^95^1^2^^1
 ;;^UTILITY(U,$J,358.2,206,2,3,0)
 ;;=5^ADD^^2^^1^^1^7^0
 ;;^UTILITY(U,$J,358.2,206,2,4,0)
 ;;=1^P^^2^^1^^1^1^1
 ;;^UTILITY(U,$J,358.2,206,2,5,0)
 ;;=2^S^^2^^1^^1^2^0
 ;;^UTILITY(U,$J,358.2,207,0)
 ;;=EVALUATION/MANAGEMENT^354^^^^^3^0^UBC^^6^1^^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,207,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,207,1,1,0)
 ;;=1^2
 ;;^UTILITY(U,$J,358.2,207,2,0)
 ;;=^358.22I^4^3
 ;;^UTILITY(U,$J,358.2,207,2,1,0)
 ;;=4^ ^32^1^2^^1
 ;;^UTILITY(U,$J,358.2,207,2,3,0)
 ;;=3^^^2^^1^^1^^1
 ;;^UTILITY(U,$J,358.2,207,2,4,0)
 ;;=2^ ^5^1^1
 ;;^UTILITY(U,$J,358.2,208,0)
 ;;=CPT CODES^355^^^^^3^0^BUC^^1^1^^0^^0
 ;;^UTILITY(U,$J,358.2,208,2,0)
 ;;=^358.22I^3^3
 ;;^UTILITY(U,$J,358.2,208,2,1,0)
 ;;=1^CODE^5^1^1^^0
 ;;^UTILITY(U,$J,358.2,208,2,2,0)
 ;;=3^DESCRIPTION^45^1^2^^1
 ;;^UTILITY(U,$J,358.2,208,2,3,0)
 ;;=2^ ^^2^^1^^1
 ;;^UTILITY(U,$J,358.2,209,0)
 ;;=ICD-10 DIAGNOSES^357^^^^^4^0^SC^^8^0^1^0^^0^3^2
 ;;^UTILITY(U,$J,358.2,209,1,0)
 ;;=^358.21I^1^1
 ;;^UTILITY(U,$J,358.2,209,1,1,0)
 ;;=1^2^1
 ;;^UTILITY(U,$J,358.2,209,2,0)
 ;;=^358.22I^5^5
 ;;^UTILITY(U,$J,358.2,209,2,1,0)
 ;;=4^CODE^8^1^1^^0
 ;;^UTILITY(U,$J,358.2,209,2,2,0)
 ;;=3^DIAGNOSIS^95^1^2^^1
