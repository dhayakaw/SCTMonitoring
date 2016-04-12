#Tue Apr 12 10:48:59 2016"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.GaudiHandles import *
from GaudiKernel.Proxy.Configurable import *

class SCTErrMonTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'ProcessNEvents' : 0, # int
    'histoPathBase' : '', # str
    'PreScale' : 0, # int
    'TriggerChain' : '', # str
    'TriggerGroup' : '', # str
    'ManagerName' : 'AthenaMonManager', # str
    'TrigDecisionTool' : PublicToolHandle(''), # GaudiHandle
    'TriggerTranslatorTool' : PublicToolHandle(''), # GaudiHandle
    'FilterTools' : PublicToolHandleArray([]), # GaudiHandleArray
    'EnableLumi' : False, # bool
    'DetailLevel' : 1, # int
    'FileKey' : '', # str
    'DataType' : 'userDefined', # str
    'Environment' : 'noOutput', # str
    'CheckRate' : 1000, # int
    'runOnline' : False, # bool
    'CheckRecent' : 20, # int
    'doPositiveEndcap' : True, # bool
    'doNegativeEndcap' : True, # bool
    'EvtsBins' : 5000, # int
    'MakeConfHisto' : True, # bool
    'conditionsService' : ServiceHandle('InDetSCT_ConfigurationConditionsSvc'), # GaudiHandle
    'flaggedService' : ServiceHandle('InDetSCT_FlaggedConditionSvc'), # GaudiHandle
    'error_threshold' : 0.700000, # float
    'efficiency_threshold' : 0.900000, # float
    'noise_threshold' : 150, # int
    'MinStatsForInEffModules' : 500.000, # float
    'DoPerLumiErrors' : True, # bool
    'DoErr2DPerLumiHists' : False, # bool
    'checkBadModules' : True, # bool
    'IgnoreRDOCutOnline' : True, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCTErrMonTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Monitoring'
  def getType( self ):
      return 'SCTErrMonTool'
  pass # class SCTErrMonTool

class SCTHitEffMonTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'ProcessNEvents' : 0, # int
    'histoPathBase' : '', # str
    'PreScale' : 0, # int
    'TriggerChain' : '', # str
    'TriggerGroup' : '', # str
    'ManagerName' : 'AthenaMonManager', # str
    'TrigDecisionTool' : PublicToolHandle(''), # GaudiHandle
    'TriggerTranslatorTool' : PublicToolHandle(''), # GaudiHandle
    'FilterTools' : PublicToolHandleArray([]), # GaudiHandleArray
    'EnableLumi' : False, # bool
    'DetailLevel' : 1, # int
    'FileKey' : '', # str
    'DataType' : 'userDefined', # str
    'Environment' : 'noOutput', # str
    'TrackName' : 'ResolvedSCTTracks', # str
    'IsCosmic' : False, # bool
    'IsSim' : False, # bool
    'UseMasks' : True, # bool
    'Detailed' : False, # bool
    'SuperDetailed' : False, # bool
    'UseTRTPhase' : False, # bool
    'MaxPhiAngle' : 40.0000, # float
    'MinTRTHits' : -1, # int
    'MinSCTHits' : -1, # int
    'MinPixelHits' : -1, # int
    'UseSCTorTRT' : False, # bool
    'MinOtherHits' : 6, # int
    'InsideOutOnly' : False, # bool
    'MaxChi2' : 3.00000, # float
    'Maxd0' : 10.0000, # float
    'MaxZ0sinTheta' : 0.00000, # float
    'MaxTracks' : 250, # int
    'MinPt' : 1000.00, # float
    'RequireEnclosingHits' : False, # bool
    'RequireOtherFace' : False, # bool
    'RequireGuardRing' : False, # bool
    'VetoBadChips' : True, # bool
    'LookAtDatabase' : False, # bool
    'FlaggedConditionService' : ServiceHandle('SCT_FlaggedConditionSvc'), # GaudiHandle
    'DetectorMode' : 1, # int
    'RunningMode' : 2, # int
    'effDistanceCut' : 2.00000, # float
    'ChronoTime' : False, # bool
    'SCT_ClusterContainer' : 'SCT_ClusterCollection', # str
    'ROTCreator' : PublicToolHandle('InDet::SCT_ClusterOnTrackTool/SCT_ClusterOnTrackTool'), # GaudiHandle
    'HoleSearch' : PublicToolHandle('InDet::InDetTrackHoleSearchTool'), # GaudiHandle
    'ResPullCalc' : PublicToolHandle('Trk::ResidualPullCalculator/ResidualPullCalculator'), # GaudiHandle
    'useIDGlobal' : False, # bool
    'ConfigConditions' : ServiceHandle('InDetSCT_ConfigurationConditionsSvc'), # GaudiHandle
    'MagFieldSvc' : ServiceHandle('AtlasFieldSvc'), # GaudiHandle
    'BunchCrossingTool' : PublicToolHandle('Trig::BunchCrossingTool/BunchCrossingTool'), # GaudiHandle
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCTHitEffMonTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Monitoring'
  def getType( self ):
      return 'SCTHitEffMonTool'
  pass # class SCTHitEffMonTool

class SCTHitsNoiseMonTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'ProcessNEvents' : 0, # int
    'histoPathBase' : '', # str
    'PreScale' : 0, # int
    'TriggerChain' : '', # str
    'TriggerGroup' : '', # str
    'ManagerName' : 'AthenaMonManager', # str
    'TrigDecisionTool' : PublicToolHandle(''), # GaudiHandle
    'TriggerTranslatorTool' : PublicToolHandle(''), # GaudiHandle
    'FilterTools' : PublicToolHandleArray([]), # GaudiHandleArray
    'EnableLumi' : False, # bool
    'DetailLevel' : 1, # int
    'FileKey' : '', # str
    'DataType' : 'userDefined', # str
    'Environment' : 'noOutput', # str
    'doTrigger' : True, # bool
    'localSummary' : 0, # int
    'doHitmapHistos' : True, # bool
    'doTXScan' : False, # bool
    'CheckRate' : 1000, # int
    'CheckRecent' : 30, # int
    'tracksName' : 'Combined_Tracks', # str
    'NOTrigger' : 'L1_RD0_EMPTY', # str
    'numberOfSigma' : 3, # int
    'EvtsBins' : 5000, # int
    'doPositiveEndcap' : True, # bool
    'doNegativeEndcap' : True, # bool
    'doTrackBasedNoise' : False, # bool
    'doSpacePointBasedNoise' : True, # bool
    'doTimeBinFilteringForNoise' : True, # bool
    'doTrackHits' : True, # bool
    'MaxTracks' : 250, # int
    'doLogXNoise' : True, # bool
    'conditionsService' : ServiceHandle('InDetSCT_ConfigurationConditionsSvc'), # GaudiHandle
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCTHitsNoiseMonTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Monitoring'
  def getType( self ):
      return 'SCTHitsNoiseMonTool'
  pass # class SCTHitsNoiseMonTool

class SCTLorentzMonTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'ProcessNEvents' : 0, # int
    'histoPathBase' : '', # str
    'PreScale' : 0, # int
    'TriggerChain' : '', # str
    'TriggerGroup' : '', # str
    'ManagerName' : 'AthenaMonManager', # str
    'TrigDecisionTool' : PublicToolHandle(''), # GaudiHandle
    'TriggerTranslatorTool' : PublicToolHandle(''), # GaudiHandle
    'FilterTools' : PublicToolHandleArray([]), # GaudiHandleArray
    'EnableLumi' : False, # bool
    'DetailLevel' : 1, # int
    'FileKey' : '', # str
    'DataType' : 'userDefined', # str
    'Environment' : 'noOutput', # str
    'doTrigger' : True, # bool
    'tracksName' : 'CombinedInDetTracks', # str
    'TrackToVertexTool' : PublicToolHandle('Reco::TrackToVertex'), # GaudiHandle
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCTLorentzMonTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Monitoring'
  def getType( self ):
      return 'SCTLorentzMonTool'
  pass # class SCTLorentzMonTool

class SCTMotherTrigMonTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'ProcessNEvents' : 0, # int
    'histoPathBase' : '', # str
    'PreScale' : 0, # int
    'TriggerChain' : '', # str
    'TriggerGroup' : '', # str
    'ManagerName' : 'AthenaMonManager', # str
    'TrigDecisionTool' : PublicToolHandle(''), # GaudiHandle
    'TriggerTranslatorTool' : PublicToolHandle(''), # GaudiHandle
    'FilterTools' : PublicToolHandleArray([]), # GaudiHandleArray
    'EnableLumi' : False, # bool
    'DetailLevel' : 1, # int
    'FileKey' : '', # str
    'DataType' : 'userDefined', # str
    'Environment' : 'noOutput', # str
    'doTrigger' : True, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCTMotherTrigMonTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Monitoring'
  def getType( self ):
      return 'SCTMotherTrigMonTool'
  pass # class SCTMotherTrigMonTool

class SCTRatioNoiseMonTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'ProcessNEvents' : 0, # int
    'histoPathBase' : '', # str
    'PreScale' : 0, # int
    'TriggerChain' : '', # str
    'TriggerGroup' : '', # str
    'ManagerName' : 'AthenaMonManager', # str
    'TrigDecisionTool' : PublicToolHandle(''), # GaudiHandle
    'TriggerTranslatorTool' : PublicToolHandle(''), # GaudiHandle
    'FilterTools' : PublicToolHandleArray([]), # GaudiHandleArray
    'EnableLumi' : False, # bool
    'DetailLevel' : 1, # int
    'FileKey' : '', # str
    'DataType' : 'userDefined', # str
    'Environment' : 'noOutput', # str
    'doTrigger' : True, # bool
    'conditionsService' : ServiceHandle('SCT_ConditionsSummarySvc'), # GaudiHandle
    'checkBadModules' : True, # bool
    'CheckRate' : 1000, # int
    'CheckRecent' : 20, # int
    'NOTrigger' : 'L1_RD0_EMPTY', # str
    'IgnoreRDOCutOnline' : True, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCTRatioNoiseMonTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Monitoring'
  def getType( self ):
      return 'SCTRatioNoiseMonTool'
  pass # class SCTRatioNoiseMonTool

class SCTSummaryMonTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'ProcessNEvents' : 0, # int
    'histoPathBase' : '', # str
    'PreScale' : 0, # int
    'TriggerChain' : '', # str
    'TriggerGroup' : '', # str
    'ManagerName' : 'AthenaMonManager', # str
    'TrigDecisionTool' : PublicToolHandle(''), # GaudiHandle
    'TriggerTranslatorTool' : PublicToolHandle(''), # GaudiHandle
    'FilterTools' : PublicToolHandleArray([]), # GaudiHandleArray
    'EnableLumi' : False, # bool
    'DetailLevel' : 1, # int
    'FileKey' : '', # str
    'DataType' : 'userDefined', # str
    'Environment' : 'noOutput', # str
    'doTrigger' : True, # bool
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCTSummaryMonTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Monitoring'
  def getType( self ):
      return 'SCTSummaryMonTool'
  pass # class SCTSummaryMonTool

class SCTTracksMonTool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'EvtStore' : ServiceHandle('StoreGateSvc'), # GaudiHandle
    'DetStore' : ServiceHandle('StoreGateSvc/DetectorStore'), # GaudiHandle
    'UserStore' : ServiceHandle('UserDataSvc/UserDataSvc'), # GaudiHandle
    'ProcessNEvents' : 0, # int
    'histoPathBase' : '', # str
    'PreScale' : 0, # int
    'TriggerChain' : '', # str
    'TriggerGroup' : '', # str
    'ManagerName' : 'AthenaMonManager', # str
    'TrigDecisionTool' : PublicToolHandle(''), # GaudiHandle
    'TriggerTranslatorTool' : PublicToolHandle(''), # GaudiHandle
    'FilterTools' : PublicToolHandleArray([]), # GaudiHandleArray
    'EnableLumi' : False, # bool
    'DetailLevel' : 1, # int
    'FileKey' : '', # str
    'DataType' : 'userDefined', # str
    'Environment' : 'noOutput', # str
    'doTrigger' : True, # bool
    'tracksName' : 'SCT_Cosmic_Tracks', # str
    'trackHitCut' : 3, # int
    'CheckRate' : 1000, # int
    'doPositiveEndcap' : True, # bool
    'doNegativeEndcap' : False, # bool
    'ResPullCalc' : PublicToolHandle('Trk::ResidualPullCalculator/ResidualPullCalculator'), # GaudiHandle
    'useIDGlobal' : False, # bool
    'doUnbiasedCalc' : True, # bool
    'EvtsBins' : 5000, # int
  }
  _propertyDocDct = { 
    'DetStore' : """ Handle to a StoreGateSvc/DetectorStore instance: it will be used to retrieve data during the course of the job """,
    'UserStore' : """ Handle to a UserDataSvc/UserDataSvc instance: it will be used to retrieve user data during the course of the job """,
    'EvtStore' : """ Handle to a StoreGateSvc instance: it will be used to retrieve data during the course of the job """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(SCTTracksMonTool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'SCT_Monitoring'
  def getType( self ):
      return 'SCTTracksMonTool'
  pass # class SCTTracksMonTool
