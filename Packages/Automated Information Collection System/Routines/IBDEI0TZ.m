IBDEI0TZ ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,13795,0)
 ;;=92020^^81^768^14^^^^1
 ;;^UTILITY(U,$J,358.3,13795,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13795,1,2,0)
 ;;=2^Gonioscopy
 ;;^UTILITY(U,$J,358.3,13795,1,3,0)
 ;;=3^92020
 ;;^UTILITY(U,$J,358.3,13796,0)
 ;;=92081^^81^768^23^^^^1
 ;;^UTILITY(U,$J,358.3,13796,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13796,1,2,0)
 ;;=2^Visual Field - Screening
 ;;^UTILITY(U,$J,358.3,13796,1,3,0)
 ;;=3^92081
 ;;^UTILITY(U,$J,358.3,13797,0)
 ;;=92082^^81^768^22^^^^1
 ;;^UTILITY(U,$J,358.3,13797,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13797,1,2,0)
 ;;=2^Visual Field - Intermediate
 ;;^UTILITY(U,$J,358.3,13797,1,3,0)
 ;;=3^92082
 ;;^UTILITY(U,$J,358.3,13798,0)
 ;;=92083^^81^768^24^^^^1
 ;;^UTILITY(U,$J,358.3,13798,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13798,1,2,0)
 ;;=2^Visual Field - Threshold
 ;;^UTILITY(U,$J,358.3,13798,1,3,0)
 ;;=3^92083
 ;;^UTILITY(U,$J,358.3,13799,0)
 ;;=92100^^81^768^21^^^^1
 ;;^UTILITY(U,$J,358.3,13799,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13799,1,2,0)
 ;;=2^Serial Tonometry
 ;;^UTILITY(U,$J,358.3,13799,1,3,0)
 ;;=3^92100
 ;;^UTILITY(U,$J,358.3,13800,0)
 ;;=76519^^81^768^1^^^^1
 ;;^UTILITY(U,$J,358.3,13800,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13800,1,2,0)
 ;;=2^A-Scan,One Eye w/ Ocu Lens Power Calc
 ;;^UTILITY(U,$J,358.3,13800,1,3,0)
 ;;=3^76519
 ;;^UTILITY(U,$J,358.3,13800,3,0)
 ;;=^357.33^^0
 ;;^UTILITY(U,$J,358.3,13801,0)
 ;;=76512^^81^768^3^^^^1
 ;;^UTILITY(U,$J,358.3,13801,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13801,1,2,0)
 ;;=2^B-Scan one eye
 ;;^UTILITY(U,$J,358.3,13801,1,3,0)
 ;;=3^76512
 ;;^UTILITY(U,$J,358.3,13801,3,0)
 ;;=^357.33^^0
 ;;^UTILITY(U,$J,358.3,13802,0)
 ;;=92226^^81^768^8^^^^1
 ;;^UTILITY(U,$J,358.3,13802,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13802,1,2,0)
 ;;=2^Ext Ophthalmoscopy, Subseq
 ;;^UTILITY(U,$J,358.3,13802,1,3,0)
 ;;=3^92226
 ;;^UTILITY(U,$J,358.3,13803,0)
 ;;=92060^^81^768^20^^^^1
 ;;^UTILITY(U,$J,358.3,13803,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13803,1,2,0)
 ;;=2^Sensorimotor Exam
 ;;^UTILITY(U,$J,358.3,13803,1,3,0)
 ;;=3^92060
 ;;^UTILITY(U,$J,358.3,13804,0)
 ;;=92240^^81^768^15^^^^1
 ;;^UTILITY(U,$J,358.3,13804,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13804,1,2,0)
 ;;=2^ICG Angiography
 ;;^UTILITY(U,$J,358.3,13804,1,3,0)
 ;;=3^92240
 ;;^UTILITY(U,$J,358.3,13805,0)
 ;;=92065^^81^768^16^^^^1
 ;;^UTILITY(U,$J,358.3,13805,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13805,1,2,0)
 ;;=2^Orthoptic/Pleoptic Training
 ;;^UTILITY(U,$J,358.3,13805,1,3,0)
 ;;=3^92065
 ;;^UTILITY(U,$J,358.3,13806,0)
 ;;=G0118^^81^768^13^^^^1
 ;;^UTILITY(U,$J,358.3,13806,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13806,1,2,0)
 ;;=2^Glaucoma Screen by Tech
 ;;^UTILITY(U,$J,358.3,13806,1,3,0)
 ;;=3^G0118
 ;;^UTILITY(U,$J,358.3,13807,0)
 ;;=S9150^^81^768^7^^^^1
 ;;^UTILITY(U,$J,358.3,13807,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13807,1,2,0)
 ;;=2^Evaluation by ocularist
 ;;^UTILITY(U,$J,358.3,13807,1,3,0)
 ;;=3^S9150
 ;;^UTILITY(U,$J,358.3,13808,0)
 ;;=76514^^81^768^5^^^^1
 ;;^UTILITY(U,$J,358.3,13808,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13808,1,2,0)
 ;;=2^Corneal Pachymetry
 ;;^UTILITY(U,$J,358.3,13808,1,3,0)
 ;;=3^76514
 ;;^UTILITY(U,$J,358.3,13809,0)
 ;;=87809^^81^768^2^^^^1
 ;;^UTILITY(U,$J,358.3,13809,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13809,1,2,0)
 ;;=2^Adenovirus Assay w/ Optic
 ;;^UTILITY(U,$J,358.3,13809,1,3,0)
 ;;=3^87809
 ;;^UTILITY(U,$J,358.3,13810,0)
 ;;=76513^^81^768^4^^^^1
 ;;^UTILITY(U,$J,358.3,13810,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,13810,1,2,0)
 ;;=2^B-Scan,Ant Segmnt,Water Immersion
