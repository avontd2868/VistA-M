IBDEI18C ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,20557,1,3,0)
 ;;=3^Acute Viral Hepatitis C w/o Hepatic Coma
 ;;^UTILITY(U,$J,358.3,20557,1,4,0)
 ;;=4^B17.10
 ;;^UTILITY(U,$J,358.3,20557,2)
 ;;=^5000542
 ;;^UTILITY(U,$J,358.3,20558,0)
 ;;=B17.11^^97^965^3
 ;;^UTILITY(U,$J,358.3,20558,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20558,1,3,0)
 ;;=3^Acute Viral Hepatitis C w/ Hepatic Coma
 ;;^UTILITY(U,$J,358.3,20558,1,4,0)
 ;;=4^B17.11
 ;;^UTILITY(U,$J,358.3,20558,2)
 ;;=^331777
 ;;^UTILITY(U,$J,358.3,20559,0)
 ;;=B15.0^^97^965^1
 ;;^UTILITY(U,$J,358.3,20559,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20559,1,3,0)
 ;;=3^Acute Hepatitis A w/ Hepatic Coma
 ;;^UTILITY(U,$J,358.3,20559,1,4,0)
 ;;=4^B15.0
 ;;^UTILITY(U,$J,358.3,20559,2)
 ;;=^5000535
 ;;^UTILITY(U,$J,358.3,20560,0)
 ;;=Z23.^^97^966^1
 ;;^UTILITY(U,$J,358.3,20560,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20560,1,3,0)
 ;;=3^Encounter for Immunization
 ;;^UTILITY(U,$J,358.3,20560,1,4,0)
 ;;=4^Z23.
 ;;^UTILITY(U,$J,358.3,20560,2)
 ;;=^5062795
 ;;^UTILITY(U,$J,358.3,20561,0)
 ;;=M10.9^^97^967^2
 ;;^UTILITY(U,$J,358.3,20561,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20561,1,3,0)
 ;;=3^Gout,Unspec
 ;;^UTILITY(U,$J,358.3,20561,1,4,0)
 ;;=4^M10.9
 ;;^UTILITY(U,$J,358.3,20561,2)
 ;;=^5010404
 ;;^UTILITY(U,$J,358.3,20562,0)
 ;;=M19.90^^97^967^5
 ;;^UTILITY(U,$J,358.3,20562,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20562,1,3,0)
 ;;=3^Osteoarthritis,Unspec
 ;;^UTILITY(U,$J,358.3,20562,1,4,0)
 ;;=4^M19.90
 ;;^UTILITY(U,$J,358.3,20562,2)
 ;;=^5010853
 ;;^UTILITY(U,$J,358.3,20563,0)
 ;;=M54.5^^97^967^4
 ;;^UTILITY(U,$J,358.3,20563,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20563,1,3,0)
 ;;=3^Low Back Pain
 ;;^UTILITY(U,$J,358.3,20563,1,4,0)
 ;;=4^M54.5
 ;;^UTILITY(U,$J,358.3,20563,2)
 ;;=^5012311
 ;;^UTILITY(U,$J,358.3,20564,0)
 ;;=M71.50^^97^967^1
 ;;^UTILITY(U,$J,358.3,20564,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20564,1,3,0)
 ;;=3^Bursitis NEC,Unspec Site
 ;;^UTILITY(U,$J,358.3,20564,1,4,0)
 ;;=4^M71.50
 ;;^UTILITY(U,$J,358.3,20564,2)
 ;;=^5013190
 ;;^UTILITY(U,$J,358.3,20565,0)
 ;;=M25.50^^97^967^3
 ;;^UTILITY(U,$J,358.3,20565,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20565,1,3,0)
 ;;=3^Joint Pain,Unspec Joint
 ;;^UTILITY(U,$J,358.3,20565,1,4,0)
 ;;=4^M25.50
 ;;^UTILITY(U,$J,358.3,20565,2)
 ;;=^5011601
 ;;^UTILITY(U,$J,358.3,20566,0)
 ;;=M16.0^^97^967^12
 ;;^UTILITY(U,$J,358.3,20566,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20566,1,3,0)
 ;;=3^Primary OA of Hip,Bilateral
 ;;^UTILITY(U,$J,358.3,20566,1,4,0)
 ;;=4^M16.0
 ;;^UTILITY(U,$J,358.3,20566,2)
 ;;=^5010769
 ;;^UTILITY(U,$J,358.3,20567,0)
 ;;=M16.11^^97^967^16
 ;;^UTILITY(U,$J,358.3,20567,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20567,1,3,0)
 ;;=3^Primary OA of Right Hip
 ;;^UTILITY(U,$J,358.3,20567,1,4,0)
 ;;=4^M16.11
 ;;^UTILITY(U,$J,358.3,20567,2)
 ;;=^5010771
 ;;^UTILITY(U,$J,358.3,20568,0)
 ;;=M16.12^^97^967^14
 ;;^UTILITY(U,$J,358.3,20568,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20568,1,3,0)
 ;;=3^Primary OA of Left Hip
 ;;^UTILITY(U,$J,358.3,20568,1,4,0)
 ;;=4^M16.12
 ;;^UTILITY(U,$J,358.3,20568,2)
 ;;=^5010772
 ;;^UTILITY(U,$J,358.3,20569,0)
 ;;=M16.4^^97^967^6
 ;;^UTILITY(U,$J,358.3,20569,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20569,1,3,0)
 ;;=3^Post-Traumatic OA of Hip,Bilateral
 ;;^UTILITY(U,$J,358.3,20569,1,4,0)
 ;;=4^M16.4
 ;;^UTILITY(U,$J,358.3,20569,2)
 ;;=^5010777
 ;;^UTILITY(U,$J,358.3,20570,0)
 ;;=M16.51^^97^967^10
 ;;^UTILITY(U,$J,358.3,20570,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20570,1,3,0)
 ;;=3^Post-Traumatic OA of Right Hip
 ;;^UTILITY(U,$J,358.3,20570,1,4,0)
 ;;=4^M16.51