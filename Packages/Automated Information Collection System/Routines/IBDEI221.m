IBDEI221 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,34445,1,3,0)
 ;;=3^Pain,Right Thigh
 ;;^UTILITY(U,$J,358.3,34445,1,4,0)
 ;;=4^M79.651
 ;;^UTILITY(U,$J,358.3,34445,2)
 ;;=^5013344
 ;;^UTILITY(U,$J,358.3,34446,0)
 ;;=M79.652^^157^1751^11
 ;;^UTILITY(U,$J,358.3,34446,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34446,1,3,0)
 ;;=3^Pain,Left Thigh
 ;;^UTILITY(U,$J,358.3,34446,1,4,0)
 ;;=4^M79.652
 ;;^UTILITY(U,$J,358.3,34446,2)
 ;;=^5013345
 ;;^UTILITY(U,$J,358.3,34447,0)
 ;;=M79.661^^157^1751^17
 ;;^UTILITY(U,$J,358.3,34447,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34447,1,3,0)
 ;;=3^Pain,Right Lower Leg
 ;;^UTILITY(U,$J,358.3,34447,1,4,0)
 ;;=4^M79.661
 ;;^UTILITY(U,$J,358.3,34447,2)
 ;;=^5013347
 ;;^UTILITY(U,$J,358.3,34448,0)
 ;;=M79.662^^157^1751^10
 ;;^UTILITY(U,$J,358.3,34448,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34448,1,3,0)
 ;;=3^Pain,Left Lower Leg
 ;;^UTILITY(U,$J,358.3,34448,1,4,0)
 ;;=4^M79.662
 ;;^UTILITY(U,$J,358.3,34448,2)
 ;;=^5013348
 ;;^UTILITY(U,$J,358.3,34449,0)
 ;;=M79.641^^157^1751^15
 ;;^UTILITY(U,$J,358.3,34449,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34449,1,3,0)
 ;;=3^Pain,Right Hand
 ;;^UTILITY(U,$J,358.3,34449,1,4,0)
 ;;=4^M79.641
 ;;^UTILITY(U,$J,358.3,34449,2)
 ;;=^5013338
 ;;^UTILITY(U,$J,358.3,34450,0)
 ;;=M79.642^^157^1751^8
 ;;^UTILITY(U,$J,358.3,34450,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34450,1,3,0)
 ;;=3^Pain,Left Hand
 ;;^UTILITY(U,$J,358.3,34450,1,4,0)
 ;;=4^M79.642
 ;;^UTILITY(U,$J,358.3,34450,2)
 ;;=^5013339
 ;;^UTILITY(U,$J,358.3,34451,0)
 ;;=M79.601^^157^1751^12
 ;;^UTILITY(U,$J,358.3,34451,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34451,1,3,0)
 ;;=3^Pain,Right Arm
 ;;^UTILITY(U,$J,358.3,34451,1,4,0)
 ;;=4^M79.601
 ;;^UTILITY(U,$J,358.3,34451,2)
 ;;=^5013325
 ;;^UTILITY(U,$J,358.3,34452,0)
 ;;=M79.602^^157^1751^5
 ;;^UTILITY(U,$J,358.3,34452,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34452,1,3,0)
 ;;=3^Pain,Left Arm
 ;;^UTILITY(U,$J,358.3,34452,1,4,0)
 ;;=4^M79.602
 ;;^UTILITY(U,$J,358.3,34452,2)
 ;;=^5013326
 ;;^UTILITY(U,$J,358.3,34453,0)
 ;;=M79.631^^157^1751^14
 ;;^UTILITY(U,$J,358.3,34453,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34453,1,3,0)
 ;;=3^Pain,Right Forearm
 ;;^UTILITY(U,$J,358.3,34453,1,4,0)
 ;;=4^M79.631
 ;;^UTILITY(U,$J,358.3,34453,2)
 ;;=^5013335
 ;;^UTILITY(U,$J,358.3,34454,0)
 ;;=M79.632^^157^1751^7
 ;;^UTILITY(U,$J,358.3,34454,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34454,1,3,0)
 ;;=3^Pain,Left Forearm
 ;;^UTILITY(U,$J,358.3,34454,1,4,0)
 ;;=4^M79.632
 ;;^UTILITY(U,$J,358.3,34454,2)
 ;;=^5013336
 ;;^UTILITY(U,$J,358.3,34455,0)
 ;;=G95.0^^157^1752^35
 ;;^UTILITY(U,$J,358.3,34455,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34455,1,3,0)
 ;;=3^Syringomyelia & Syringobulbia
 ;;^UTILITY(U,$J,358.3,34455,1,4,0)
 ;;=4^G95.0
 ;;^UTILITY(U,$J,358.3,34455,2)
 ;;=^116874
 ;;^UTILITY(U,$J,358.3,34456,0)
 ;;=G95.89^^157^1752^1
 ;;^UTILITY(U,$J,358.3,34456,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34456,1,3,0)
 ;;=3^Diseases of Spinal Cord,Other Spec
 ;;^UTILITY(U,$J,358.3,34456,1,4,0)
 ;;=4^G95.89
 ;;^UTILITY(U,$J,358.3,34456,2)
 ;;=^5004193
 ;;^UTILITY(U,$J,358.3,34457,0)
 ;;=G82.50^^157^1752^5
 ;;^UTILITY(U,$J,358.3,34457,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34457,1,3,0)
 ;;=3^Quadriplegia,Unspec
 ;;^UTILITY(U,$J,358.3,34457,1,4,0)
 ;;=4^G82.50
 ;;^UTILITY(U,$J,358.3,34457,2)
 ;;=^5004128
 ;;^UTILITY(U,$J,358.3,34458,0)
 ;;=G82.22^^157^1752^3
 ;;^UTILITY(U,$J,358.3,34458,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34458,1,3,0)
 ;;=3^Paraplegia,Incomplete
 ;;^UTILITY(U,$J,358.3,34458,1,4,0)
 ;;=4^G82.22
 ;;^UTILITY(U,$J,358.3,34458,2)
 ;;=^5004127