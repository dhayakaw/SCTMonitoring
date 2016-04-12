#-- start of make_header -----------------

#====================================
#  Document install_joboptions
#
#   Generated Tue Apr 12 10:49:07 2016  by dhayakaw
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_joboptions_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_joboptions_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_joboptions

InDetRecExample_tag = $(tag)

#cmt_local_tagfile_install_joboptions = $(InDetRecExample_tag)_install_joboptions.make
cmt_local_tagfile_install_joboptions = $(bin)$(InDetRecExample_tag)_install_joboptions.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetRecExample_tag = $(tag)

#cmt_local_tagfile_install_joboptions = $(InDetRecExample_tag).make
cmt_local_tagfile_install_joboptions = $(bin)$(InDetRecExample_tag).make

endif

include $(cmt_local_tagfile_install_joboptions)
#-include $(cmt_local_tagfile_install_joboptions)

ifdef cmt_install_joboptions_has_target_tag

cmt_final_setup_install_joboptions = $(bin)setup_install_joboptions.make
cmt_dependencies_in_install_joboptions = $(bin)dependencies_install_joboptions.in
#cmt_final_setup_install_joboptions = $(bin)InDetRecExample_install_joboptionssetup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

else

cmt_final_setup_install_joboptions = $(bin)setup.make
cmt_dependencies_in_install_joboptions = $(bin)dependencies.in
#cmt_final_setup_install_joboptions = $(bin)InDetRecExamplesetup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetRecExamplesetup.make

#install_joboptions :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_joboptions'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_joboptions/
#install_joboptions::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------


ifeq ($(INSTALLAREA),)
installarea = $(CMTINSTALLAREA)
else
ifeq ($(findstring `,$(INSTALLAREA)),`)
installarea = $(shell $(subst `,, $(INSTALLAREA)))
else
installarea = $(INSTALLAREA)
endif
endif

install_dir = ${installarea}/jobOptions/InDetRecExample

install_joboptions :: install_joboptionsinstall ;

install :: install_joboptionsinstall ;

install_joboptionsclean :: install_joboptionsuninstall

uninstall :: install_joboptionsuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_joboptionsinstall :: ;

ConfiguredTRTStandalone_py_dependencies = ../share/ConfiguredTRTStandalone.py
jobOptions_StandaloneDBM_RAW_py_dependencies = ../share/jobOptions_StandaloneDBM_RAW.py
InDetRecXKalIPat_py_dependencies = ../share/InDetRecXKalIPat.py
jobOptions_Standalone_py_dependencies = ../share/jobOptions_Standalone.py
ConfiguredxAODTrackParticleCreation_py_dependencies = ../share/ConfiguredxAODTrackParticleCreation.py
InDetxAODCreator_py_dependencies = ../share/InDetxAODCreator.py
ConfiguredPriVtxAndPartCreation_py_dependencies = ../share/ConfiguredPriVtxAndPartCreation.py
InDetRecHadCaloSeededROISelection_py_dependencies = ../share/InDetRecHadCaloSeededROISelection.py
InDetMonitoringTRT_py_dependencies = ../share/InDetMonitoringTRT.py
ReadInDet_jobOptions_py_dependencies = ../share/ReadInDet_jobOptions.py
InDetMonitoringAlignment_py_dependencies = ../share/InDetMonitoringAlignment.py
InDetWriteBS_jobOptions_py_dependencies = ../share/InDetWriteBS_jobOptions.py
InDetMonitoring_py_dependencies = ../share/InDetMonitoring.py
InDetRecNtupleCreation_py_dependencies = ../share/InDetRecNtupleCreation.py
InDetMonitoringPixel_py_dependencies = ../share/InDetMonitoringPixel.py
jobOptions_singlebeam_py_dependencies = ../share/jobOptions_singlebeam.py
InDetRecCabling_py_dependencies = ../share/InDetRecCabling.py
jobOptions_900gev_py_dependencies = ../share/jobOptions_900gev.py
InDetMonitoringSCT_py_dependencies = ../share/InDetMonitoringSCT.py
ConfiguredInDetValidation_py_dependencies = ../share/ConfiguredInDetValidation.py
ConfiguredInDetTrackTruth_py_dependencies = ../share/ConfiguredInDetTrackTruth.py
ConfiguredBackTracking_py_dependencies = ../share/ConfiguredBackTracking.py
InDetMonitoringGlobal_py_dependencies = ../share/InDetMonitoringGlobal.py
InDetRec_all_py_dependencies = ../share/InDetRec_all.py
InDetReadBS_jobOptions_py_dependencies = ../share/InDetReadBS_jobOptions.py
ConfiguredLowBetaFinder_py_dependencies = ../share/ConfiguredLowBetaFinder.py
InDetRecD3PDCreation_py_dependencies = ../share/InDetRecD3PDCreation.py
InDetRecPostProcessing_py_dependencies = ../share/InDetRecPostProcessing.py
ConfiguredTRTSegmentFinding_py_dependencies = ../share/ConfiguredTRTSegmentFinding.py
WriteInDetAOD_py_dependencies = ../share/WriteInDetAOD.py
InDetRec_jobOptions_py_dependencies = ../share/InDetRec_jobOptions.py
ConfiguredInDetPreProcessingTRT_py_dependencies = ../share/ConfiguredInDetPreProcessingTRT.py
InDetRecConditionsAccess_py_dependencies = ../share/InDetRecConditionsAccess.py
ConfiguredNewTrackingTRTExtension_py_dependencies = ../share/ConfiguredNewTrackingTRTExtension.py
WriteInDetBS_jobOptions_py_dependencies = ../share/WriteInDetBS_jobOptions.py
WriteInDetESD_py_dependencies = ../share/WriteInDetESD.py
jobOptions_HeavyIons_py_dependencies = ../share/jobOptions_HeavyIons.py
ConfiguredNewTrackingSiPattern_py_dependencies = ../share/ConfiguredNewTrackingSiPattern.py
InDetRecLoadTools_py_dependencies = ../share/InDetRecLoadTools.py
InDetRecPreProcessingSilicon_py_dependencies = ../share/InDetRecPreProcessingSilicon.py
jobOptions_cosmic_py_dependencies = ../share/jobOptions_cosmic.py
ConfiguredInDetTRTPhase_py_dependencies = ../share/ConfiguredInDetTRTPhase.py
jobOptions_RecExCommon_py_dependencies = ../share/jobOptions_RecExCommon.py
jobOptions_StandaloneDBM_RDO_py_dependencies = ../share/jobOptions_StandaloneDBM_RDO.py
InDetRecCaloSeededROISelection_py_dependencies = ../share/InDetRecCaloSeededROISelection.py
jobOptions_py_dependencies = ../share/jobOptions.py


install_joboptionsinstall :: ${install_dir}/ConfiguredTRTStandalone.py ;

${install_dir}/ConfiguredTRTStandalone.py :: ../share/ConfiguredTRTStandalone.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredTRTStandalone.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredTRTStandalone.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredTRTStandalone.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredTRTStandalone.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredTRTStandalone.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOptions_StandaloneDBM_RAW.py ;

${install_dir}/jobOptions_StandaloneDBM_RAW.py :: ../share/jobOptions_StandaloneDBM_RAW.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_StandaloneDBM_RAW.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOptions_StandaloneDBM_RAW.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOptions_StandaloneDBM_RAW.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_StandaloneDBM_RAW.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOptions_StandaloneDBM_RAW.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRecXKalIPat.py ;

${install_dir}/InDetRecXKalIPat.py :: ../share/InDetRecXKalIPat.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecXKalIPat.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRecXKalIPat.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRecXKalIPat.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecXKalIPat.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRecXKalIPat.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOptions_Standalone.py ;

${install_dir}/jobOptions_Standalone.py :: ../share/jobOptions_Standalone.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_Standalone.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOptions_Standalone.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOptions_Standalone.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_Standalone.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOptions_Standalone.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredxAODTrackParticleCreation.py ;

${install_dir}/ConfiguredxAODTrackParticleCreation.py :: ../share/ConfiguredxAODTrackParticleCreation.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredxAODTrackParticleCreation.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredxAODTrackParticleCreation.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredxAODTrackParticleCreation.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredxAODTrackParticleCreation.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredxAODTrackParticleCreation.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetxAODCreator.py ;

${install_dir}/InDetxAODCreator.py :: ../share/InDetxAODCreator.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetxAODCreator.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetxAODCreator.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetxAODCreator.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetxAODCreator.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetxAODCreator.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredPriVtxAndPartCreation.py ;

${install_dir}/ConfiguredPriVtxAndPartCreation.py :: ../share/ConfiguredPriVtxAndPartCreation.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredPriVtxAndPartCreation.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredPriVtxAndPartCreation.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredPriVtxAndPartCreation.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredPriVtxAndPartCreation.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredPriVtxAndPartCreation.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRecHadCaloSeededROISelection.py ;

${install_dir}/InDetRecHadCaloSeededROISelection.py :: ../share/InDetRecHadCaloSeededROISelection.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecHadCaloSeededROISelection.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRecHadCaloSeededROISelection.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRecHadCaloSeededROISelection.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecHadCaloSeededROISelection.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRecHadCaloSeededROISelection.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetMonitoringTRT.py ;

${install_dir}/InDetMonitoringTRT.py :: ../share/InDetMonitoringTRT.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoringTRT.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetMonitoringTRT.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetMonitoringTRT.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoringTRT.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetMonitoringTRT.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ReadInDet_jobOptions.py ;

${install_dir}/ReadInDet_jobOptions.py :: ../share/ReadInDet_jobOptions.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ReadInDet_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ReadInDet_jobOptions.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ReadInDet_jobOptions.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ReadInDet_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ReadInDet_jobOptions.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetMonitoringAlignment.py ;

${install_dir}/InDetMonitoringAlignment.py :: ../share/InDetMonitoringAlignment.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoringAlignment.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetMonitoringAlignment.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetMonitoringAlignment.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoringAlignment.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetMonitoringAlignment.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetWriteBS_jobOptions.py ;

${install_dir}/InDetWriteBS_jobOptions.py :: ../share/InDetWriteBS_jobOptions.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetWriteBS_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetWriteBS_jobOptions.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetWriteBS_jobOptions.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetWriteBS_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetWriteBS_jobOptions.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetMonitoring.py ;

${install_dir}/InDetMonitoring.py :: ../share/InDetMonitoring.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoring.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetMonitoring.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetMonitoring.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoring.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetMonitoring.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRecNtupleCreation.py ;

${install_dir}/InDetRecNtupleCreation.py :: ../share/InDetRecNtupleCreation.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecNtupleCreation.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRecNtupleCreation.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRecNtupleCreation.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecNtupleCreation.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRecNtupleCreation.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetMonitoringPixel.py ;

${install_dir}/InDetMonitoringPixel.py :: ../share/InDetMonitoringPixel.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoringPixel.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetMonitoringPixel.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetMonitoringPixel.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoringPixel.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetMonitoringPixel.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOptions_singlebeam.py ;

${install_dir}/jobOptions_singlebeam.py :: ../share/jobOptions_singlebeam.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_singlebeam.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOptions_singlebeam.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOptions_singlebeam.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_singlebeam.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOptions_singlebeam.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRecCabling.py ;

${install_dir}/InDetRecCabling.py :: ../share/InDetRecCabling.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecCabling.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRecCabling.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRecCabling.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecCabling.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRecCabling.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOptions_900gev.py ;

${install_dir}/jobOptions_900gev.py :: ../share/jobOptions_900gev.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_900gev.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOptions_900gev.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOptions_900gev.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_900gev.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOptions_900gev.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetMonitoringSCT.py ;

${install_dir}/InDetMonitoringSCT.py :: ../share/InDetMonitoringSCT.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoringSCT.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetMonitoringSCT.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetMonitoringSCT.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoringSCT.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetMonitoringSCT.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredInDetValidation.py ;

${install_dir}/ConfiguredInDetValidation.py :: ../share/ConfiguredInDetValidation.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredInDetValidation.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredInDetValidation.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredInDetValidation.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredInDetValidation.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredInDetValidation.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredInDetTrackTruth.py ;

${install_dir}/ConfiguredInDetTrackTruth.py :: ../share/ConfiguredInDetTrackTruth.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredInDetTrackTruth.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredInDetTrackTruth.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredInDetTrackTruth.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredInDetTrackTruth.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredInDetTrackTruth.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredBackTracking.py ;

${install_dir}/ConfiguredBackTracking.py :: ../share/ConfiguredBackTracking.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredBackTracking.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredBackTracking.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredBackTracking.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredBackTracking.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredBackTracking.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetMonitoringGlobal.py ;

${install_dir}/InDetMonitoringGlobal.py :: ../share/InDetMonitoringGlobal.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoringGlobal.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetMonitoringGlobal.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetMonitoringGlobal.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetMonitoringGlobal.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetMonitoringGlobal.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRec_all.py ;

${install_dir}/InDetRec_all.py :: ../share/InDetRec_all.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRec_all.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRec_all.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRec_all.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRec_all.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRec_all.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetReadBS_jobOptions.py ;

${install_dir}/InDetReadBS_jobOptions.py :: ../share/InDetReadBS_jobOptions.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetReadBS_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetReadBS_jobOptions.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetReadBS_jobOptions.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetReadBS_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetReadBS_jobOptions.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredLowBetaFinder.py ;

${install_dir}/ConfiguredLowBetaFinder.py :: ../share/ConfiguredLowBetaFinder.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredLowBetaFinder.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredLowBetaFinder.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredLowBetaFinder.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredLowBetaFinder.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredLowBetaFinder.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRecD3PDCreation.py ;

${install_dir}/InDetRecD3PDCreation.py :: ../share/InDetRecD3PDCreation.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecD3PDCreation.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRecD3PDCreation.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRecD3PDCreation.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecD3PDCreation.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRecD3PDCreation.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRecPostProcessing.py ;

${install_dir}/InDetRecPostProcessing.py :: ../share/InDetRecPostProcessing.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecPostProcessing.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRecPostProcessing.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRecPostProcessing.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecPostProcessing.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRecPostProcessing.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredTRTSegmentFinding.py ;

${install_dir}/ConfiguredTRTSegmentFinding.py :: ../share/ConfiguredTRTSegmentFinding.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredTRTSegmentFinding.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredTRTSegmentFinding.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredTRTSegmentFinding.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredTRTSegmentFinding.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredTRTSegmentFinding.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/WriteInDetAOD.py ;

${install_dir}/WriteInDetAOD.py :: ../share/WriteInDetAOD.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/WriteInDetAOD.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "WriteInDetAOD.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/WriteInDetAOD.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/WriteInDetAOD.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "WriteInDetAOD.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRec_jobOptions.py ;

${install_dir}/InDetRec_jobOptions.py :: ../share/InDetRec_jobOptions.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRec_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRec_jobOptions.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRec_jobOptions.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRec_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRec_jobOptions.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredInDetPreProcessingTRT.py ;

${install_dir}/ConfiguredInDetPreProcessingTRT.py :: ../share/ConfiguredInDetPreProcessingTRT.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredInDetPreProcessingTRT.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredInDetPreProcessingTRT.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredInDetPreProcessingTRT.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredInDetPreProcessingTRT.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredInDetPreProcessingTRT.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRecConditionsAccess.py ;

${install_dir}/InDetRecConditionsAccess.py :: ../share/InDetRecConditionsAccess.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecConditionsAccess.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRecConditionsAccess.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRecConditionsAccess.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecConditionsAccess.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRecConditionsAccess.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredNewTrackingTRTExtension.py ;

${install_dir}/ConfiguredNewTrackingTRTExtension.py :: ../share/ConfiguredNewTrackingTRTExtension.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredNewTrackingTRTExtension.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredNewTrackingTRTExtension.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredNewTrackingTRTExtension.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredNewTrackingTRTExtension.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredNewTrackingTRTExtension.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/WriteInDetBS_jobOptions.py ;

${install_dir}/WriteInDetBS_jobOptions.py :: ../share/WriteInDetBS_jobOptions.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/WriteInDetBS_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "WriteInDetBS_jobOptions.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/WriteInDetBS_jobOptions.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/WriteInDetBS_jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "WriteInDetBS_jobOptions.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/WriteInDetESD.py ;

${install_dir}/WriteInDetESD.py :: ../share/WriteInDetESD.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/WriteInDetESD.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "WriteInDetESD.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/WriteInDetESD.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/WriteInDetESD.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "WriteInDetESD.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOptions_HeavyIons.py ;

${install_dir}/jobOptions_HeavyIons.py :: ../share/jobOptions_HeavyIons.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_HeavyIons.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOptions_HeavyIons.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOptions_HeavyIons.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_HeavyIons.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOptions_HeavyIons.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredNewTrackingSiPattern.py ;

${install_dir}/ConfiguredNewTrackingSiPattern.py :: ../share/ConfiguredNewTrackingSiPattern.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredNewTrackingSiPattern.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredNewTrackingSiPattern.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredNewTrackingSiPattern.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredNewTrackingSiPattern.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredNewTrackingSiPattern.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRecLoadTools.py ;

${install_dir}/InDetRecLoadTools.py :: ../share/InDetRecLoadTools.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecLoadTools.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRecLoadTools.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRecLoadTools.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecLoadTools.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRecLoadTools.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRecPreProcessingSilicon.py ;

${install_dir}/InDetRecPreProcessingSilicon.py :: ../share/InDetRecPreProcessingSilicon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecPreProcessingSilicon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRecPreProcessingSilicon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRecPreProcessingSilicon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecPreProcessingSilicon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRecPreProcessingSilicon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOptions_cosmic.py ;

${install_dir}/jobOptions_cosmic.py :: ../share/jobOptions_cosmic.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_cosmic.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOptions_cosmic.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOptions_cosmic.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_cosmic.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOptions_cosmic.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/ConfiguredInDetTRTPhase.py ;

${install_dir}/ConfiguredInDetTRTPhase.py :: ../share/ConfiguredInDetTRTPhase.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredInDetTRTPhase.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ConfiguredInDetTRTPhase.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/ConfiguredInDetTRTPhase.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/ConfiguredInDetTRTPhase.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ConfiguredInDetTRTPhase.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOptions_RecExCommon.py ;

${install_dir}/jobOptions_RecExCommon.py :: ../share/jobOptions_RecExCommon.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_RecExCommon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOptions_RecExCommon.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOptions_RecExCommon.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_RecExCommon.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOptions_RecExCommon.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOptions_StandaloneDBM_RDO.py ;

${install_dir}/jobOptions_StandaloneDBM_RDO.py :: ../share/jobOptions_StandaloneDBM_RDO.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_StandaloneDBM_RDO.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOptions_StandaloneDBM_RDO.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOptions_StandaloneDBM_RDO.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions_StandaloneDBM_RDO.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOptions_StandaloneDBM_RDO.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/InDetRecCaloSeededROISelection.py ;

${install_dir}/InDetRecCaloSeededROISelection.py :: ../share/InDetRecCaloSeededROISelection.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecCaloSeededROISelection.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InDetRecCaloSeededROISelection.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/InDetRecCaloSeededROISelection.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/InDetRecCaloSeededROISelection.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InDetRecCaloSeededROISelection.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOptions.py ;

${install_dir}/jobOptions.py :: ../share/jobOptions.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOptions.py" "$(install_dir)" "/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../share/jobOptions.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOptions.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOptions.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_joboptionsclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_joboptions.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_joboptionsclean ::
#-- end of cleanup_header ---------------
