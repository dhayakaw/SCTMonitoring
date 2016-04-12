#-- start of make_header -----------------

#====================================
#  Document SCT_MonitoringComponentsList
#
#   Generated Tue Apr 12 10:49:01 2016  by dhayakaw
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_MonitoringComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_MonitoringComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_MonitoringComponentsList

SCT_Monitoring_tag = $(tag)

#cmt_local_tagfile_SCT_MonitoringComponentsList = $(SCT_Monitoring_tag)_SCT_MonitoringComponentsList.make
cmt_local_tagfile_SCT_MonitoringComponentsList = $(bin)$(SCT_Monitoring_tag)_SCT_MonitoringComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Monitoring_tag = $(tag)

#cmt_local_tagfile_SCT_MonitoringComponentsList = $(SCT_Monitoring_tag).make
cmt_local_tagfile_SCT_MonitoringComponentsList = $(bin)$(SCT_Monitoring_tag).make

endif

include $(cmt_local_tagfile_SCT_MonitoringComponentsList)
#-include $(cmt_local_tagfile_SCT_MonitoringComponentsList)

ifdef cmt_SCT_MonitoringComponentsList_has_target_tag

cmt_final_setup_SCT_MonitoringComponentsList = $(bin)setup_SCT_MonitoringComponentsList.make
cmt_dependencies_in_SCT_MonitoringComponentsList = $(bin)dependencies_SCT_MonitoringComponentsList.in
#cmt_final_setup_SCT_MonitoringComponentsList = $(bin)SCT_Monitoring_SCT_MonitoringComponentsListsetup.make
cmt_local_SCT_MonitoringComponentsList_makefile = $(bin)SCT_MonitoringComponentsList.make

else

cmt_final_setup_SCT_MonitoringComponentsList = $(bin)setup.make
cmt_dependencies_in_SCT_MonitoringComponentsList = $(bin)dependencies.in
#cmt_final_setup_SCT_MonitoringComponentsList = $(bin)SCT_Monitoringsetup.make
cmt_local_SCT_MonitoringComponentsList_makefile = $(bin)SCT_MonitoringComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Monitoringsetup.make

#SCT_MonitoringComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_MonitoringComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_MonitoringComponentsList/
#SCT_MonitoringComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
componentslistfile = SCT_Monitoring.components
COMPONENTSLIST_DIR = ../$(tag)
fulllibname = libSCT_Monitoring.$(shlibsuffix)

SCT_MonitoringComponentsList :: ${COMPONENTSLIST_DIR}/$(componentslistfile)
	@:

${COMPONENTSLIST_DIR}/$(componentslistfile) :: $(bin)$(fulllibname)
	@echo 'Generating componentslist file for $(fulllibname)'
	cd ../$(tag);$(listcomponents_cmd) --output ${COMPONENTSLIST_DIR}/$(componentslistfile) $(fulllibname)

install :: SCT_MonitoringComponentsListinstall
SCT_MonitoringComponentsListinstall :: SCT_MonitoringComponentsList

uninstall :: SCT_MonitoringComponentsListuninstall
SCT_MonitoringComponentsListuninstall :: SCT_MonitoringComponentsListclean

SCT_MonitoringComponentsListclean ::
	@echo 'Deleting $(componentslistfile)'
	@rm -f ${COMPONENTSLIST_DIR}/$(componentslistfile)

#-- start of cleanup_header --------------

clean :: SCT_MonitoringComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_MonitoringComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_MonitoringComponentsListclean ::
#-- end of cleanup_header ---------------
