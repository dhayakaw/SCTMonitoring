#-- start of make_header -----------------

#====================================
#  Document SCT_MonitoringConfDbMerge
#
#   Generated Tue Apr 12 10:49:00 2016  by dhayakaw
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_MonitoringConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_MonitoringConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_MonitoringConfDbMerge

SCT_Monitoring_tag = $(tag)

#cmt_local_tagfile_SCT_MonitoringConfDbMerge = $(SCT_Monitoring_tag)_SCT_MonitoringConfDbMerge.make
cmt_local_tagfile_SCT_MonitoringConfDbMerge = $(bin)$(SCT_Monitoring_tag)_SCT_MonitoringConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Monitoring_tag = $(tag)

#cmt_local_tagfile_SCT_MonitoringConfDbMerge = $(SCT_Monitoring_tag).make
cmt_local_tagfile_SCT_MonitoringConfDbMerge = $(bin)$(SCT_Monitoring_tag).make

endif

include $(cmt_local_tagfile_SCT_MonitoringConfDbMerge)
#-include $(cmt_local_tagfile_SCT_MonitoringConfDbMerge)

ifdef cmt_SCT_MonitoringConfDbMerge_has_target_tag

cmt_final_setup_SCT_MonitoringConfDbMerge = $(bin)setup_SCT_MonitoringConfDbMerge.make
cmt_dependencies_in_SCT_MonitoringConfDbMerge = $(bin)dependencies_SCT_MonitoringConfDbMerge.in
#cmt_final_setup_SCT_MonitoringConfDbMerge = $(bin)SCT_Monitoring_SCT_MonitoringConfDbMergesetup.make
cmt_local_SCT_MonitoringConfDbMerge_makefile = $(bin)SCT_MonitoringConfDbMerge.make

else

cmt_final_setup_SCT_MonitoringConfDbMerge = $(bin)setup.make
cmt_dependencies_in_SCT_MonitoringConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_SCT_MonitoringConfDbMerge = $(bin)SCT_Monitoringsetup.make
cmt_local_SCT_MonitoringConfDbMerge_makefile = $(bin)SCT_MonitoringConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Monitoringsetup.make

#SCT_MonitoringConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_MonitoringConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_MonitoringConfDbMerge/
#SCT_MonitoringConfDbMerge::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/merge_genconfDb_header
# Author: Sebastien Binet (binet@cern.ch)

# Makefile fragment to merge a <library>.confdb file into a single
# <project>.confdb file in the (lib) install area

.PHONY: SCT_MonitoringConfDbMerge SCT_MonitoringConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring/SCT_Monitoring.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

SCT_MonitoringConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  SCT_MonitoringConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

SCT_MonitoringConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libSCT_Monitoring_so_dependencies = ../x86_64-slc6-gcc49-opt/libSCT_Monitoring.so
#-- start of cleanup_header --------------

clean :: SCT_MonitoringConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_MonitoringConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_MonitoringConfDbMergeclean ::
#-- end of cleanup_header ---------------
