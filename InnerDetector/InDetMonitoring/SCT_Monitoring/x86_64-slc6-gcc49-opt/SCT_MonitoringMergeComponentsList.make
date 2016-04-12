#-- start of make_header -----------------

#====================================
#  Document SCT_MonitoringMergeComponentsList
#
#   Generated Tue Apr 12 10:49:03 2016  by dhayakaw
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_MonitoringMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_MonitoringMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_MonitoringMergeComponentsList

SCT_Monitoring_tag = $(tag)

#cmt_local_tagfile_SCT_MonitoringMergeComponentsList = $(SCT_Monitoring_tag)_SCT_MonitoringMergeComponentsList.make
cmt_local_tagfile_SCT_MonitoringMergeComponentsList = $(bin)$(SCT_Monitoring_tag)_SCT_MonitoringMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Monitoring_tag = $(tag)

#cmt_local_tagfile_SCT_MonitoringMergeComponentsList = $(SCT_Monitoring_tag).make
cmt_local_tagfile_SCT_MonitoringMergeComponentsList = $(bin)$(SCT_Monitoring_tag).make

endif

include $(cmt_local_tagfile_SCT_MonitoringMergeComponentsList)
#-include $(cmt_local_tagfile_SCT_MonitoringMergeComponentsList)

ifdef cmt_SCT_MonitoringMergeComponentsList_has_target_tag

cmt_final_setup_SCT_MonitoringMergeComponentsList = $(bin)setup_SCT_MonitoringMergeComponentsList.make
cmt_dependencies_in_SCT_MonitoringMergeComponentsList = $(bin)dependencies_SCT_MonitoringMergeComponentsList.in
#cmt_final_setup_SCT_MonitoringMergeComponentsList = $(bin)SCT_Monitoring_SCT_MonitoringMergeComponentsListsetup.make
cmt_local_SCT_MonitoringMergeComponentsList_makefile = $(bin)SCT_MonitoringMergeComponentsList.make

else

cmt_final_setup_SCT_MonitoringMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_SCT_MonitoringMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_SCT_MonitoringMergeComponentsList = $(bin)SCT_Monitoringsetup.make
cmt_local_SCT_MonitoringMergeComponentsList_makefile = $(bin)SCT_MonitoringMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Monitoringsetup.make

#SCT_MonitoringMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_MonitoringMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_MonitoringMergeComponentsList/
#SCT_MonitoringMergeComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/merge_componentslist_header
# Author: Sebastien Binet (binet@cern.ch)

# Makefile fragment to merge a <library>.components file into a single
# <project>.components file in the (lib) install area
# If no InstallArea is present the fragment is dummy


.PHONY: SCT_MonitoringMergeComponentsList SCT_MonitoringMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/SCT_Monitoring.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

SCT_MonitoringMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  SCT_MonitoringMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

SCT_MonitoringMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libSCT_Monitoring_so_dependencies = ../x86_64-slc6-gcc49-opt/libSCT_Monitoring.so
#-- start of cleanup_header --------------

clean :: SCT_MonitoringMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_MonitoringMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_MonitoringMergeComponentsListclean ::
#-- end of cleanup_header ---------------
