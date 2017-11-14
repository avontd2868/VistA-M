ORWDPLM2 ;PBM/RMS - OBJECT FOR DRUG-SPECIFIC LAB RESULTS ; 19 Apr 2017  10:37 AM
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;***420,454***;;Build 13
SL(DFN,ORQO,TARGET) ;
 N ORDDLG,ORGTX,ORSEQ,ORIEN
 N OR50,OR507,ORLNODE,ORRSLT,ORCRCL,FOUND,ILST,REFRANGE
 Q:'+DFN ""
 Q:ORQO']"" ""
 S ORDDLG=$O(^ORD(101.41,"B",ORQO,0)) Q:'+ORDDLG ""
 K @TARGET
 I '$$GET^XPAR("ALL","OR CPRS LAB DISPLAY ENABLED") Q " "
 S ILST=0
 S ORGTX=$O(^ORD(101.41,"B","OR GTX ORDERABLE ITEM",0))
 S ORSEQ=$O(^ORD(101.41,ORDDLG,6,"D",+ORGTX,0)) Q:'+ORSEQ ""
 S ORIEN=$G(^ORD(101.41,ORDDLG,6,ORSEQ,1)) Q:'+ORIEN ""
 S OR507=+$P($G(^ORD(101.43,ORIEN,0)),U,2) Q:'+OR507 ""
 S OR50=0 F  S OR50=$O(^PSDRUG("ASP",OR507,OR50)) Q:'+OR50!($G(FOUND))  D
 . S ORLNODE=$G(^PSDRUG(OR50,"CLOZ")) Q:'+ORLNODE
 . I +ORLNODE,$$SCRTEST^ORWDPLM1(+ORLNODE) S ORRSLT=$$GETSCR^ORWDPLM1(DFN) S ILST=ILST+1,@TARGET@(ILST,0)="LAST "_$$GET1^DIQ(60,+ORLNODE,.01)_": "_$P(ORRSLT,U)
 . I +ORLNODE,'$$SCRTEST^ORWDPLM1(+ORLNODE) S ORRSLT=$$GETLAB^ORWDPLM1(DFN,+ORLNODE,+$P(ORLNODE,U,3),$P(ORLNODE,U,2)) S ILST=ILST+1,@TARGET@(ILST,0)="LAST "_$$GET1^DIQ(60,+ORLNODE,.01)_":"_$P(ORRSLT,U)
 . I +$P(ORRSLT,U,2) S @TARGET@(ILST,0)=@TARGET@(ILST,0)_" "_$P(ORRSLT,U,4)_" ("_$$FMTE^XLFDT($P(ORRSLT,U,2))_")"
 . I $P(ORRSLT,U,5)]"" S ILST=ILST+1,@TARGET@(ILST,0)="REFERENCE RANGE: "_$P(ORRSLT,U,5)_" "_$P(ORRSLT,U,4)
 . I +$P(ORRSLT,U,2) I $$SCRTEST^ORWDPLM1(+ORLNODE) S ORCRCL=$$CRCL^PSOORUT2(DFN) I +$P(ORCRCL,U,2) S ILST=ILST+1,@TARGET@(ILST,0)="Estimated Creatinine Clearance: "_$P(ORCRCL,U,2)_" mL/min"
 . S FOUND=1
 I '$D(FOUND) Q ""
 Q "~@"_$NA(@TARGET)
