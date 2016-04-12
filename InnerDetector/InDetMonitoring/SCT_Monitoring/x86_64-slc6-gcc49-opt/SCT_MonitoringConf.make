#-- start of make_header -----------------

#====================================
#  Document SCT_MonitoringConf
#
#   Generated Tue Apr 12 10:48:57 2016  by dhayakaw
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_SCT_MonitoringConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_MonitoringConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_MonitoringConf

SCT_Monitoring_tag = $(tag)

#cmt_local_tagfile_SCT_MonitoringConf = $(SCT_Monitoring_tag)_SCT_MonitoringConf.make
cmt_local_tagfile_SCT_MonitoringConf = $(bin)$(SCT_Monitoring_tag)_SCT_MonitoringConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Monitoring_tag = $(tag)

#cmt_local_tagfile_SCT_MonitoringConf = $(SCT_Monitoring_tag).make
cmt_local_tagfile_SCT_MonitoringConf = $(bin)$(SCT_Monitoring_tag).make

endif

include $(cmt_local_tagfile_SCT_MonitoringConf)
#-include $(cmt_local_tagfile_SCT_MonitoringConf)

ifdef cmt_SCT_MonitoringConf_has_target_tag

cmt_final_setup_SCT_MonitoringConf = $(bin)setup_SCT_MonitoringConf.make
cmt_dependencies_in_SCT_MonitoringConf = $(bin)dependencies_SCT_MonitoringConf.in
#cmt_final_setup_SCT_MonitoringConf = $(bin)SCT_Monitoring_SCT_MonitoringConfsetup.make
cmt_local_SCT_MonitoringConf_makefile = $(bin)SCT_MonitoringConf.make

else

cmt_final_setup_SCT_MonitoringConf = $(bin)setup.make
cmt_dependencies_in_SCT_MonitoringConf = $(bin)dependencies.in
#cmt_final_setup_SCT_MonitoringConf = $(bin)SCT_Monitoringsetup.make
cmt_local_SCT_MonitoringConf_makefile = $(bin)SCT_MonitoringConf.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Monitoringsetup.make

#SCT_MonitoringConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_MonitoringConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_MonitoringConf/
#SCT_MonitoringConf::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/genconfig_header
# Author: Wim Lavrijsen (WLavrijsen@lbl.gov)

# Use genconf.exe to create configurables python modules, then have the
# normal python install procedure take over.

.PHONY: SCT_MonitoringConf SCT_MonitoringConfclean

confpy  := SCT_MonitoringConf.py
conflib := $(bin)$(library_prefix)SCT_Monitoring.$(shlibsuffix)
confdb  := SCT_Monitoring.confdb
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

SCT_MonitoringConf :: SCT_MonitoringConfinstall

install :: SCT_MonitoringConfinstall

SCT_MonitoringConfinstall : /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring/$(confpy)
	@echo "Installing /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring in /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InstallArea/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" --exclude="*.confdb" /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InstallArea/python ; \

/afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring/$(confpy) : $(conflib) /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring
	$(genconf_silent) $(genconfig_cmd)   -o /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)SCT_Monitoring.$(shlibsuffix)

/afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring:
	@ if [ ! -d /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring ] ; then mkdir -p /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring ; fi ;

SCT_MonitoringConfclean :: SCT_MonitoringConfuninstall
	$(cleanup_silent) $(remove_command) /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring/$(confpy) /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetMonitoring/SCT_Monitoring/genConf/SCT_Monitoring/$(confdb)

uninstall :: SCT_MonitoringConfuninstall

SCT_MonitoringConfuninstall ::
	@$(uninstall_command) /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InstallArea/python
libSCT_Monitoring_so_dependencies = ../x86_64-slc6-gcc49-opt/libSCT_Monitoring.so
#-- start of cleanup_header --------------

clean :: SCT_MonitoringConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_MonitoringConf.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_MonitoringConfclean ::
#-- end of cleanup_header ---------------
