IBDEI2V1 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,47996,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47996,1,3,0)
 ;;=3^Malig Neop of Ribs/Sternum/Clavicle
 ;;^UTILITY(U,$J,358.3,47996,1,4,0)
 ;;=4^C41.3
 ;;^UTILITY(U,$J,358.3,47996,2)
 ;;=^5000991
 ;;^UTILITY(U,$J,358.3,47997,0)
 ;;=C41.4^^209^2371^9
 ;;^UTILITY(U,$J,358.3,47997,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47997,1,3,0)
 ;;=3^Malig Neop of Pelvic/Sacrum/Coccyx
 ;;^UTILITY(U,$J,358.3,47997,1,4,0)
 ;;=4^C41.4
 ;;^UTILITY(U,$J,358.3,47997,2)
 ;;=^5000992
 ;;^UTILITY(U,$J,358.3,47998,0)
 ;;=C41.9^^209^2371^1
 ;;^UTILITY(U,$J,358.3,47998,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47998,1,3,0)
 ;;=3^Malig Neop of Bone/Articular Cartilage,Unspec
 ;;^UTILITY(U,$J,358.3,47998,1,4,0)
 ;;=4^C41.9
 ;;^UTILITY(U,$J,358.3,47998,2)
 ;;=^5000993
 ;;^UTILITY(U,$J,358.3,47999,0)
 ;;=C44.00^^209^2372^15
 ;;^UTILITY(U,$J,358.3,47999,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,47999,1,3,0)
 ;;=3^Malig Neop of Skin of Lip
 ;;^UTILITY(U,$J,358.3,47999,1,4,0)
 ;;=4^C44.00
 ;;^UTILITY(U,$J,358.3,47999,2)
 ;;=^340596
 ;;^UTILITY(U,$J,358.3,48000,0)
 ;;=C44.102^^209^2372^18
 ;;^UTILITY(U,$J,358.3,48000,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48000,1,3,0)
 ;;=3^Malig Neop of Skin of Right Eyelid
 ;;^UTILITY(U,$J,358.3,48000,1,4,0)
 ;;=4^C44.102
 ;;^UTILITY(U,$J,358.3,48000,2)
 ;;=^5001017
 ;;^UTILITY(U,$J,358.3,48001,0)
 ;;=C44.109^^209^2372^11
 ;;^UTILITY(U,$J,358.3,48001,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48001,1,3,0)
 ;;=3^Malig Neop of Skin of Left Eyelid
 ;;^UTILITY(U,$J,358.3,48001,1,4,0)
 ;;=4^C44.109
 ;;^UTILITY(U,$J,358.3,48001,2)
 ;;=^5001018
 ;;^UTILITY(U,$J,358.3,48002,0)
 ;;=C44.192^^209^2372^19
 ;;^UTILITY(U,$J,358.3,48002,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48002,1,3,0)
 ;;=3^Malig Neop of Skin of Right Eyelid NEC
 ;;^UTILITY(U,$J,358.3,48002,1,4,0)
 ;;=4^C44.192
 ;;^UTILITY(U,$J,358.3,48002,2)
 ;;=^5001026
 ;;^UTILITY(U,$J,358.3,48003,0)
 ;;=C44.199^^209^2372^12
 ;;^UTILITY(U,$J,358.3,48003,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48003,1,3,0)
 ;;=3^Malig Neop of Skin of Left Eyelid NEC
 ;;^UTILITY(U,$J,358.3,48003,1,4,0)
 ;;=4^C44.199
 ;;^UTILITY(U,$J,358.3,48003,2)
 ;;=^5001027
 ;;^UTILITY(U,$J,358.3,48004,0)
 ;;=C44.202^^209^2372^17
 ;;^UTILITY(U,$J,358.3,48004,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48004,1,3,0)
 ;;=3^Malig Neop of Skin of Right Ear/External Auric Canal
 ;;^UTILITY(U,$J,358.3,48004,1,4,0)
 ;;=4^C44.202
 ;;^UTILITY(U,$J,358.3,48004,2)
 ;;=^5001029
 ;;^UTILITY(U,$J,358.3,48005,0)
 ;;=C44.209^^209^2372^10
 ;;^UTILITY(U,$J,358.3,48005,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48005,1,3,0)
 ;;=3^Malig Neop of Skin of Left Ear/External Auric Canal
 ;;^UTILITY(U,$J,358.3,48005,1,4,0)
 ;;=4^C44.209
 ;;^UTILITY(U,$J,358.3,48005,2)
 ;;=^5001030
 ;;^UTILITY(U,$J,358.3,48006,0)
 ;;=C44.300^^209^2372^9
 ;;^UTILITY(U,$J,358.3,48006,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48006,1,3,0)
 ;;=3^Malig Neop of Skin of Face,Unspec
 ;;^UTILITY(U,$J,358.3,48006,1,4,0)
 ;;=4^C44.300
 ;;^UTILITY(U,$J,358.3,48006,2)
 ;;=^5001040
 ;;^UTILITY(U,$J,358.3,48007,0)
 ;;=C44.301^^209^2372^16
 ;;^UTILITY(U,$J,358.3,48007,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48007,1,3,0)
 ;;=3^Malig Neop of Skin of Nose
 ;;^UTILITY(U,$J,358.3,48007,1,4,0)
 ;;=4^C44.301
 ;;^UTILITY(U,$J,358.3,48007,2)
 ;;=^5001041
 ;;^UTILITY(U,$J,358.3,48008,0)
 ;;=C44.309^^209^2372^8
 ;;^UTILITY(U,$J,358.3,48008,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,48008,1,3,0)
 ;;=3^Malig Neop of Skin of Face NEC
 ;;^UTILITY(U,$J,358.3,48008,1,4,0)
 ;;=4^C44.309
