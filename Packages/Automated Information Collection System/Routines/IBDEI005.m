IBDEI005 ; ; 12-JAN-2012
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JAN 12, 2012
 Q:'DIFQR(358.1)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.1,88,0)
 ;;=PATIENT INFORMATION^18^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,89,0)
 ;;=PROCEDURES (V2.1)^18^^19^0^133^7^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,90,0)
 ;;=CPT CODES^19^^17^0^132^30^^^1^PLEASE CHECK OFF PROCEDURES PERFORMED THIS VISIT^BC^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,91,0)
 ;;=1995 VISIT TYPES (V2.1)^19^^6^0^117^10^^^1^^CR^1995 visit types^0
 ;;^UTILITY(U,$J,358.1,92,0)
 ;;=DIAGNOSIS CODES^19^^48^0^132^92^^^1^PLEASE CHECK OFF DIAGNOSIS TREATED THIS VISIT^BC^Selection list - ICD-9 dx codes^0
 ;;^UTILITY(U,$J,358.1,93,0)
 ;;=HEADER^19^^1^57^31^1^^^2
 ;;^UTILITY(U,$J,358.1,94,0)
 ;;=PATIENT INFORMATION^19^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,95,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^20^^6^0^132^7^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,96,0)
 ;;=HEADER^20^^1^56^28^1^^^2
 ;;^UTILITY(U,$J,358.1,97,0)
 ;;=PATIENT INFORMATION^20^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,98,0)
 ;;=PROCEDURES (V2.1)^20^^14^0^133^23^^^1^MARK ALL PROCEDURES PERFORMED^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,99,0)
 ;;=DIAGNOSIS NAT PC^20^^38^0^133^602^^^1^DIAGNOSES^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,100,0)
 ;;=PROCEDURES (V2.1)^21^^19^0^133^56^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,101,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^21^^6^0^132^12^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,102,0)
 ;;=HEADER^21^^1^56^17^1^^^2
 ;;^UTILITY(U,$J,358.1,103,0)
 ;;=PATIENT INFORMATION^21^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,104,0)
 ;;=DIAGNOSIS NAT PC^21^^79^0^133^611^^^1^DIAGNOSES^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,105,0)
 ;;=DIAGNOSIS CODES^22^^29^0^132^156^^^1^DIAGNOSES^RC^Selection list - ICD-9 dx codes^0
 ;;^UTILITY(U,$J,358.1,106,0)
 ;;=CPT CODES (3 COL)^22^^12^0^132^16^^^1^PLEASE CHECK OFF PROCEDURES PERFORMED THIS VISIT^BCU^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,107,0)
 ;;=HEADER^22^^1^55^22^1^^^2
 ;;^UTILITY(U,$J,358.1,108,0)
 ;;=PATIENT INFORMATION^22^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,109,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^22^^6^0^132^5^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,110,0)
 ;;=CPT CODES (3 COL)^23^^6^0^132^34^^^1^PLEASE CHECK OFF PROCEDURES PERFORMED THIS VISIT^BCU^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,111,0)
 ;;=HEADER^23^^1^58^17^1^^^2
 ;;^UTILITY(U,$J,358.1,112,0)
 ;;=PATIENT INFORMATION^23^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,113,0)
 ;;=DIAGNOSIS CODES^23^^41^0^132^149^^^1^DIAGNOSES^RC^Selection list - ICD-9 dx codes^0
 ;;^UTILITY(U,$J,358.1,114,0)
 ;;=HEADER^24^^1^57^42^1^^^2
 ;;^UTILITY(U,$J,358.1,115,0)
 ;;=PATIENT INFORMATION^24^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,116,0)
 ;;=PRIMARY DIAGNOSIS^24^^16^0^132^8^^^1^ALWAYS USE AS PRIMARY DIAGNOSIS^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,117,0)
 ;;=DIAGNOSIS CODES-NEW VERSION^24^^25^0^132^82^^^1^PLEASE CHECK OFF DIAGNOSIS TREATED THIS VISIT^UC^Selection list - ICD-9 dx codes^0
 ;;^UTILITY(U,$J,358.1,118,0)
 ;;=PROCEDURES (V2.1)^24^^7^0^133^8^^^1^MANAGEMENT OF MEDICATION THERAPY^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,119,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^25^^7^0^132^8^^^1^^CRU^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,120,0)
 ;;=DIAGNOSES (V2.1)^25^^55^0^132^53^^^1^PLEASE CHECK OFF DIAGNOSES FROM THIS VISIT^BC^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,121,0)
 ;;=HEADER^25^^2^55^18^1^^^2
 ;;^UTILITY(U,$J,358.1,122,0)
 ;;=PATIENT INFORMATION^25^^4^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,123,0)
 ;;=CPT CODES^25^^16^0^132^38^^^1^PLEASE CHECK OFF PROCEDURES PERFORMED THIS VISIT^BCU^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,124,0)
 ;;=DIAGNOSES^26^^61^0^133^110^^^1^^CRUB^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,125,0)
 ;;=CPT PROCEDURE^26^^16^0^133^41^^^1^MARK BUBBLE FOR ALL PROCEDURES PERFORMED TODAY^CRUB^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,126,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^26^^6^0^132^9^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,127,0)
 ;;=HEADER^26^^1^56^20^1^^^2
 ;;^UTILITY(U,$J,358.1,128,0)
 ;;=PATIENT INFORMATION^26^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,129,0)
 ;;=PROCEDURES (V2.1)^27^^14^0^133^61^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,130,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^27^^5^0^132^9^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,131,0)
 ;;=DIAGNOSIS (V2.1) PAGE 4^27^^285^0^132^65^^^1^DIAGNOSIS^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,132,0)
 ;;=DIAGNOSES (V2.1)^27^^97^0^133^66^^^1^^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,133,0)
 ;;=DIAGNOSES (V2.1) PAGE 2^27^^164^0^133^66^^^1^^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,134,0)
 ;;=DIAGNOSES (V2.1) PAGE 3^27^^229^0^132^55^^^1^^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,135,0)
 ;;=POST OP & F/U DX^27^^81^0^133^16^^^1^^CR^Common V-Code Secondary Only ICD-9 codes^0
 ;;^UTILITY(U,$J,358.1,136,0)
 ;;=HEADER^27^^1^57^19^1^^^2
 ;;^UTILITY(U,$J,358.1,137,0)
 ;;=PATIENT INFORMATION^27^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,138,0)
 ;;=PROCEDURES (V2.1)^28^^15^0^133^168^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,139,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^28^^6^0^132^9^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,140,0)
 ;;=DIAGNOSES (V2.1)^28^^185^0^133^149^^^1^DIAGNOSIS^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,141,0)
 ;;=HEADER^28^^1^58^17^1^^^2
 ;;^UTILITY(U,$J,358.1,142,0)
 ;;=PATIENT INFORMATION^28^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,143,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^29^^6^0^132^10^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,144,0)
 ;;=DIAGNOSIS NAT PC^29^^64^0^133^606^^^1^DIAGNOSES^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,145,0)
 ;;=HEADER^29^^1^56^21^1^^^2
 ;;^UTILITY(U,$J,358.1,146,0)
 ;;=PATIENT INFORMATION^29^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,147,0)
 ;;=PROCEDURES (V2.1)^29^^17^0^133^46^^^1^MARK ALL PROCEDURES PERFORMED^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,148,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^30^^5^0^132^8^^^1^^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,149,0)
 ;;=DIAGNOSIS CODES^30^^14^0^132^176^^^1^DIAGNOSES^RC^Selection list - ICD-9 dx codes^0
 ;;^UTILITY(U,$J,358.1,150,0)
 ;;=HEADER^30^^1^57^20^1^^^2
 ;;^UTILITY(U,$J,358.1,151,0)
 ;;=PATIENT INFORMATION^30^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,152,0)
 ;;=CPT CODES^31^^14^0^132^30^^^1^PLEASE CHECK OFF PROCEDURES PERFORMED THIS VISIT^BC^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,153,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^31^^5^0^132^9^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,154,0)
 ;;=DIAGNOSIS CODES^31^^45^0^132^108^^^1^^BC^Selection list - ICD-9 dx codes^0
 ;;^UTILITY(U,$J,358.1,155,0)
 ;;=HEADER^31^^1^57^18^1^^^2
 ;;^UTILITY(U,$J,358.1,156,0)
 ;;=PATIENT INFORMATION^31^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,157,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^32^^6^0^132^9^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,158,0)
 ;;=PROCEDURES (V2.1)^32^^17^0^133^61^^^1^PROCEDURES^CR^Common CPT-4 procedures^0
 ;;^UTILITY(U,$J,358.1,159,0)
 ;;=DIAGNOSES (V2.1)^32^^81^0^132^69^^^1^DIAGNOSIS^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,160,0)
 ;;=HEADER^32^^1^58^17^1^^^2
 ;;^UTILITY(U,$J,358.1,161,0)
 ;;=PATIENT INFORMATION^32^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,162,0)
 ;;=SPEECH PATH DIAGNOSIS CODES^33^^41^0^132^33^^^1^SPEECH PATHOLOGY DIAGNOSIS TREATED THIS VISIT^BC^Selection list - ICD-9 dx codes^0
 ;;^UTILITY(U,$J,358.1,163,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^33^^6^0^132^3^^^1^^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,164,0)
 ;;=SPEECH PATHOLOGY CPT CODES^33^^10^0^132^30^^^1^SPEECH PATHOLOGY PROCEDURES PERFORMED THIS VISIT^C^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,165,0)
 ;;=HEADER^33^^1^54^15^1^^^2
 ;;^UTILITY(U,$J,358.1,166,0)
 ;;=PATIENT INFORMATION^33^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,167,0)
 ;;=1995 VISIT TYPE CODES (V2.1)^34^^6^0^132^10^^^1^TYPE OF VISIT^CR^1995 visit types WITH CODES SHOWN^0
 ;;^UTILITY(U,$J,358.1,168,0)
 ;;=CPT CODES^34^^16^0^132^72^^^1^^RC^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,169,0)
 ;;=HEADER^34^^1^55^22^1^^^2
 ;;^UTILITY(U,$J,358.1,170,0)
 ;;=PATIENT INFORMATION^34^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,171,0)
 ;;=DIAGNOSIS^34^^89^0^132^141^^^1^^RC^ICD-9^0
 ;;^UTILITY(U,$J,358.1,172,0)
 ;;=HEADER^35^^1^59^26^1^^^2
 ;;^UTILITY(U,$J,358.1,173,0)
 ;;=CPT CODES^35^^7^0^132^9^^^1^FILL IN BUBBLE FOR TELEPHONE CALL PERFORMED^UBRC^Selection list - CPT codes^0
 ;;^UTILITY(U,$J,358.1,174,0)
 ;;=DIAGNOSES (V2.1)^35^^15^0^132^15^^^1^DIAGNOSIS^CR^Common ICD-9 diagnoses^0
 ;;^UTILITY(U,$J,358.1,175,0)
 ;;=PATIENT INFORMATION^35^^3^0^132^3^^^2^^^Patient information-name/ssn/age
 ;;^UTILITY(U,$J,358.1,176,0)
 ;;=CPT CODES (3 COL)^36^^16^0^132^18^^^1^PLEASE CHECK OFF PROCEDURES PERFORMED THIS VISIT^BCU^Selection list - CPT codes^0