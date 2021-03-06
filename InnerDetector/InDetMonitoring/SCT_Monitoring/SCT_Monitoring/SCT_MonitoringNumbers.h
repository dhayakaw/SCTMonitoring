/*@file SCTHitsNoiseMonTool.cxx
 * Header file containing scoped 'magic numbers' for use in SCT_Monitoring
 * @author Shaun Roe
**/
#ifndef SCT_MonitoringNumbers_H
#define SCT_MonitoringNumbers_H
#include "TString.h"
 
 namespace SCT_Monitoring{
   ///what array indices mean when looping over subsystems
  enum BecIndex {INVALID_INDEX=-1, ENDCAP_C_INDEX=0, BARREL_INDEX=1, ENDCAP_A_INDEX=2, GENERAL_INDEX=3};   
  ///Possible values of the 'BEC' (Barrel or EndCap) value
  enum Bec{ ENDCAP_C=-2, BARREL=0, ENDCAP_A=2, N_REGIONS=3, GENERAL=3, INVALID_SYSTEM=4 };
  /// Array for conversion of an array index to a Bec
  const Bec index2BecArray[]={ENDCAP_C, BARREL, ENDCAP_A, GENERAL};
  /// Conversion  bec->index
  inline unsigned int bec2Index(const int becVal){
    return (becVal/2) + 1;
  }
  /// Conversion index-> bec
  inline Bec index2Bec(const unsigned int i){
    return (i < 4) ? (index2BecArray[i]) : INVALID_SYSTEM; 
  }
  /// Numbers to use in histograms
  enum { N_BINS = 6 * 128, N_STRIPS = 768, FIRST_STRIP = 0, LAST_STRIP = N_STRIPS - 1,
	 FIRST_CHIP = 0, N_CHIPS = 6, LAST_CHIP = N_CHIPS - 1, CHIPS_PER_MODULE=12,
         N_TIME_BINS =  3, FIRST_TIME_BIN =  0, LAST_TIME_BIN =  2,
         N_HIT_BINS = 50, FIRST_HIT_BIN =  0, LAST_HIT_BIN = 50,
         N_ETA_BINS = 13, FIRST_ETA_BIN = -6, LAST_ETA_BIN =  6,
         N_PHI_BINS = 56, FIRST_PHI_BIN =  0, LAST_PHI_BIN = 55,
         N_BARRELS  = 4, FIRST_BARREL =  0, LAST_BARREL = 3, N_BARRELSx2 = 8,
         N_DISKS  = 9, FIRST_DISK =  0, LAST_DISK = 8, N_DISKSx2 = 18,
         N_LAYERS_TOTAL=22,
         N_ENDCAPS  = 9, FIRST_ENDCAP =  0, LAST_ENDCAP = 8, N_ENDCAPSx2 = 18,
         N_ETA_BINS_EC = 3, FIRST_ETA_BIN_EC = 0, LAST_ETA_BIN_EC =  2,
         N_PHI_BINS_EC = 52, FIRST_PHI_BIN_EC =  0, LAST_PHI_BIN_EC = 51,
	 N_MOD_ENDCAPS = 988, N_MOD_BARREL = 2112, FIRST_MOD_EC = 0,
	 FIRST_MOD_B = 988, FIRST_MOD_EA = 3100
  };
  const int n_layers[] = {N_DISKS, N_BARRELS, N_DISKS, 2 * N_DISKS + N_BARRELS};
  const int n_etabins[] = {N_ETA_BINS_EC, N_ETA_BINS, N_ETA_BINS_EC};
  const int n_phibins[] = {N_PHI_BINS_EC, N_PHI_BINS, N_PHI_BINS_EC};
  const int f_etabin[] = {FIRST_ETA_BIN_EC, FIRST_ETA_BIN, FIRST_ETA_BIN_EC};
  const int l_etabin[] = {LAST_ETA_BIN_EC, LAST_ETA_BIN, LAST_ETA_BIN_EC};
  const int f_phibin[] = {FIRST_PHI_BIN_EC, FIRST_PHI_BIN, FIRST_PHI_BIN_EC};
  const int l_phibin[] = {LAST_PHI_BIN_EC, LAST_PHI_BIN, LAST_PHI_BIN_EC};
  const int n_mod[] = {N_MOD_ENDCAPS, N_MOD_BARREL, N_MOD_ENDCAPS, N_MOD_BARREL + 2 * N_MOD_ENDCAPS};
  const int f_mod[] = {FIRST_MOD_EC, FIRST_MOD_B, FIRST_MOD_EA};
  const TString layerName[] = {" disk ", " layer ", " disk "};
  const TString subDetName[] = {"Endcap C", "Barrel", "Endcap A", "General"};
  const TString subDetNameShort[] = {"EC", "B", "EA"};
  
  //====================================================================================================
  //                          SCTErrMonTool :: getNumModules, Daniel Damiani 16/8/2010
  //====================================================================================================
  inline int getNumModules(const int reg,const int layer) {
    if(reg==0) {
      if(layer<2) return 384;
      else if(layer<4) return 480;
      else if(layer<6) return 576;
      else if(layer<8) return 672;
      else return 0;
    } else {
      if(layer<2) return 92;
      else if(layer<12) return 132;
      else if(layer<16) return 92;
      else if(layer<18) return 52;
      else return 0;
    }
    return 0;
  }
  
 }//namespace

#endif
