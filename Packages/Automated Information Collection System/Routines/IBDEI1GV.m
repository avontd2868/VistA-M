IBDEI1GV ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24511,2)
 ;;=^5019518
 ;;^UTILITY(U,$J,358.3,24512,0)
 ;;=R53.83^^121^1221^82
 ;;^UTILITY(U,$J,358.3,24512,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24512,1,3,0)
 ;;=3^Fatigue NEC
 ;;^UTILITY(U,$J,358.3,24512,1,4,0)
 ;;=4^R53.83
 ;;^UTILITY(U,$J,358.3,24512,2)
 ;;=^5019520
 ;;^UTILITY(U,$J,358.3,24513,0)
 ;;=B54.^^121^1221^145
 ;;^UTILITY(U,$J,358.3,24513,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24513,1,3,0)
 ;;=3^Malaria,Unspec
 ;;^UTILITY(U,$J,358.3,24513,1,4,0)
 ;;=4^B54.
 ;;^UTILITY(U,$J,358.3,24513,2)
 ;;=^5000703
 ;;^UTILITY(U,$J,358.3,24514,0)
 ;;=G03.0^^121^1221^147
 ;;^UTILITY(U,$J,358.3,24514,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24514,1,3,0)
 ;;=3^Meningitis,Aseptic
 ;;^UTILITY(U,$J,358.3,24514,1,4,0)
 ;;=4^G03.0
 ;;^UTILITY(U,$J,358.3,24514,2)
 ;;=^268379
 ;;^UTILITY(U,$J,358.3,24515,0)
 ;;=G00.9^^121^1221^148
 ;;^UTILITY(U,$J,358.3,24515,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24515,1,3,0)
 ;;=3^Meningitis,Bacterial
 ;;^UTILITY(U,$J,358.3,24515,1,4,0)
 ;;=4^G00.9
 ;;^UTILITY(U,$J,358.3,24515,2)
 ;;=^5003724
 ;;^UTILITY(U,$J,358.3,24516,0)
 ;;=G03.9^^121^1221^146
 ;;^UTILITY(U,$J,358.3,24516,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24516,1,3,0)
 ;;=3^Meningitis NOS
 ;;^UTILITY(U,$J,358.3,24516,1,4,0)
 ;;=4^G03.9
 ;;^UTILITY(U,$J,358.3,24516,2)
 ;;=^5003729
 ;;^UTILITY(U,$J,358.3,24517,0)
 ;;=B27.90^^121^1221^150
 ;;^UTILITY(U,$J,358.3,24517,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24517,1,3,0)
 ;;=3^Mononucleosis
 ;;^UTILITY(U,$J,358.3,24517,1,4,0)
 ;;=4^B27.90
 ;;^UTILITY(U,$J,358.3,24517,2)
 ;;=^5000578
 ;;^UTILITY(U,$J,358.3,24518,0)
 ;;=A31.0^^121^1221^152
 ;;^UTILITY(U,$J,358.3,24518,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24518,1,3,0)
 ;;=3^Mycobacteria, Atypical, Pulmonary
 ;;^UTILITY(U,$J,358.3,24518,1,4,0)
 ;;=4^A31.0
 ;;^UTILITY(U,$J,358.3,24518,2)
 ;;=^5000149
 ;;^UTILITY(U,$J,358.3,24519,0)
 ;;=A15.9^^121^1221^154
 ;;^UTILITY(U,$J,358.3,24519,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24519,1,3,0)
 ;;=3^Mycobacterium, Tuberculosis active disease
 ;;^UTILITY(U,$J,358.3,24519,1,4,0)
 ;;=4^A15.9
 ;;^UTILITY(U,$J,358.3,24519,2)
 ;;=^5000066
 ;;^UTILITY(U,$J,358.3,24520,0)
 ;;=A31.2^^121^1221^67
 ;;^UTILITY(U,$J,358.3,24520,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24520,1,3,0)
 ;;=3^Disseminated mycobacterium avian-intracellulare complex(DMAC)
 ;;^UTILITY(U,$J,358.3,24520,1,4,0)
 ;;=4^A31.2
 ;;^UTILITY(U,$J,358.3,24520,2)
 ;;=^5000151
 ;;^UTILITY(U,$J,358.3,24521,0)
 ;;=A31.8^^121^1221^153
 ;;^UTILITY(U,$J,358.3,24521,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24521,1,3,0)
 ;;=3^Mycobacterium, Non-Tuberculosis NEC
 ;;^UTILITY(U,$J,358.3,24521,1,4,0)
 ;;=4^A31.8
 ;;^UTILITY(U,$J,358.3,24521,2)
 ;;=^5000152
 ;;^UTILITY(U,$J,358.3,24522,0)
 ;;=J00.^^121^1221^15
 ;;^UTILITY(U,$J,358.3,24522,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24522,1,3,0)
 ;;=3^Acute nasopharyngitis [common cold]
 ;;^UTILITY(U,$J,358.3,24522,1,4,0)
 ;;=4^J00.
 ;;^UTILITY(U,$J,358.3,24522,2)
 ;;=^5008115
 ;;^UTILITY(U,$J,358.3,24523,0)
 ;;=R11.2^^121^1221^155
 ;;^UTILITY(U,$J,358.3,24523,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24523,1,3,0)
 ;;=3^Nausea with vomiting, unspecified
 ;;^UTILITY(U,$J,358.3,24523,1,4,0)
 ;;=4^R11.2
 ;;^UTILITY(U,$J,358.3,24523,2)
 ;;=^5019237
 ;;^UTILITY(U,$J,358.3,24524,0)
 ;;=D70.9^^121^1221^156
 ;;^UTILITY(U,$J,358.3,24524,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24524,1,3,0)
 ;;=3^Neutropenia, unspecified
 ;;^UTILITY(U,$J,358.3,24524,1,4,0)
 ;;=4^D70.9
 ;;^UTILITY(U,$J,358.3,24524,2)
 ;;=^334186
 ;;^UTILITY(U,$J,358.3,24525,0)
 ;;=M86.10^^121^1221^161
