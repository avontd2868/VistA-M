PSSJXR24 ; COMPILED XREF FOR FILE #55.03 ; 11/30/18
 ; 
 S DA=0
A1 ;
 I $D(DISET) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^PS(55,DA(1),"P",DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^PS(55,DA(1),"P",DA,0))
 S X=$P($G(DIKZ(0)),U,1)
 I X'="" D SREF^PSOHELP1
 G:'$D(DIKLM) A Q:$D(DISET)
END G ^PSSJXR25
