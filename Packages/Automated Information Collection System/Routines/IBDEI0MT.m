IBDEI0MT ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,10417,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10417,1,3,0)
 ;;=3^Vitamin D Deficiency,Unspec
 ;;^UTILITY(U,$J,358.3,10417,1,4,0)
 ;;=4^E55.9
 ;;^UTILITY(U,$J,358.3,10417,2)
 ;;=^5002799
 ;;^UTILITY(U,$J,358.3,10418,0)
 ;;=E66.01^^68^667^38
 ;;^UTILITY(U,$J,358.3,10418,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10418,1,3,0)
 ;;=3^Morbid Obesity
 ;;^UTILITY(U,$J,358.3,10418,1,4,0)
 ;;=4^E66.01
 ;;^UTILITY(U,$J,358.3,10418,2)
 ;;=^5002826
 ;;^UTILITY(U,$J,358.3,10419,0)
 ;;=E66.8^^68^667^42
 ;;^UTILITY(U,$J,358.3,10419,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10419,1,3,0)
 ;;=3^Obesity NEC
 ;;^UTILITY(U,$J,358.3,10419,1,4,0)
 ;;=4^E66.8
 ;;^UTILITY(U,$J,358.3,10419,2)
 ;;=^5002831
 ;;^UTILITY(U,$J,358.3,10420,0)
 ;;=E66.9^^68^667^43
 ;;^UTILITY(U,$J,358.3,10420,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10420,1,3,0)
 ;;=3^Obesity,Unspec
 ;;^UTILITY(U,$J,358.3,10420,1,4,0)
 ;;=4^E66.9
 ;;^UTILITY(U,$J,358.3,10420,2)
 ;;=^5002832
 ;;^UTILITY(U,$J,358.3,10421,0)
 ;;=E74.39^^68^667^35
 ;;^UTILITY(U,$J,358.3,10421,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10421,1,3,0)
 ;;=3^Intestinal Carbohydrate Absorption Disorder NEC
 ;;^UTILITY(U,$J,358.3,10421,1,4,0)
 ;;=4^E74.39
 ;;^UTILITY(U,$J,358.3,10421,2)
 ;;=^5002928
 ;;^UTILITY(U,$J,358.3,10422,0)
 ;;=E83.30^^68^667^46
 ;;^UTILITY(U,$J,358.3,10422,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10422,1,3,0)
 ;;=3^Phosphorus Metabolism Disorder,Unspec
 ;;^UTILITY(U,$J,358.3,10422,1,4,0)
 ;;=4^E83.30
 ;;^UTILITY(U,$J,358.3,10422,2)
 ;;=^5002997
 ;;^UTILITY(U,$J,358.3,10423,0)
 ;;=E83.51^^68^667^28
 ;;^UTILITY(U,$J,358.3,10423,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10423,1,3,0)
 ;;=3^Hypocalcemia
 ;;^UTILITY(U,$J,358.3,10423,1,4,0)
 ;;=4^E83.51
 ;;^UTILITY(U,$J,358.3,10423,2)
 ;;=^60542
 ;;^UTILITY(U,$J,358.3,10424,0)
 ;;=E83.52^^68^667^26
 ;;^UTILITY(U,$J,358.3,10424,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10424,1,3,0)
 ;;=3^Hypercalcemia
 ;;^UTILITY(U,$J,358.3,10424,1,4,0)
 ;;=4^E83.52
 ;;^UTILITY(U,$J,358.3,10424,2)
 ;;=^59932
 ;;^UTILITY(U,$J,358.3,10425,0)
 ;;=E87.5^^68^667^27
 ;;^UTILITY(U,$J,358.3,10425,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10425,1,3,0)
 ;;=3^Hyperkalemia
 ;;^UTILITY(U,$J,358.3,10425,1,4,0)
 ;;=4^E87.5
 ;;^UTILITY(U,$J,358.3,10425,2)
 ;;=^60041
 ;;^UTILITY(U,$J,358.3,10426,0)
 ;;=E89.2^^68^667^48
 ;;^UTILITY(U,$J,358.3,10426,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10426,1,3,0)
 ;;=3^PostProcedural Hypoparathyroidism
 ;;^UTILITY(U,$J,358.3,10426,1,4,0)
 ;;=4^E89.2
 ;;^UTILITY(U,$J,358.3,10426,2)
 ;;=^5003037
 ;;^UTILITY(U,$J,358.3,10427,0)
 ;;=E89.6^^68^667^47
 ;;^UTILITY(U,$J,358.3,10427,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10427,1,3,0)
 ;;=3^PostProcedural Adrenocortical Hypofunction
 ;;^UTILITY(U,$J,358.3,10427,1,4,0)
 ;;=4^E89.6
 ;;^UTILITY(U,$J,358.3,10427,2)
 ;;=^5003042
 ;;^UTILITY(U,$J,358.3,10428,0)
 ;;=L68.0^^68^667^25
 ;;^UTILITY(U,$J,358.3,10428,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10428,1,3,0)
 ;;=3^Hirsutism
 ;;^UTILITY(U,$J,358.3,10428,1,4,0)
 ;;=4^L68.0
 ;;^UTILITY(U,$J,358.3,10428,2)
 ;;=^5009262
 ;;^UTILITY(U,$J,358.3,10429,0)
 ;;=M80.00XA^^68^667^2
 ;;^UTILITY(U,$J,358.3,10429,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10429,1,3,0)
 ;;=3^Age-Related Osteoporosis w/ Fx,Unspec Site,Init Encntr
 ;;^UTILITY(U,$J,358.3,10429,1,4,0)
 ;;=4^M80.00XA
 ;;^UTILITY(U,$J,358.3,10429,2)
 ;;=^5013363
 ;;^UTILITY(U,$J,358.3,10430,0)
 ;;=M81.0^^68^667^3
 ;;^UTILITY(U,$J,358.3,10430,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10430,1,3,0)
 ;;=3^Age-Related Osteoporosis w/o Fx
