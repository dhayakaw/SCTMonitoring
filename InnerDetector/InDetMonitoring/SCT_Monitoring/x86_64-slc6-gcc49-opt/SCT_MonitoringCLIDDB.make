#-- start of make_header -----------------

#====================================
#  Document SCT_MonitoringCLIDDB
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

cmt_SCT_MonitoringCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_SCT_MonitoringCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_SCT_MonitoringCLIDDB

SCT_Monitoring_tag = $(tag)

#cmt_local_tagfile_SCT_MonitoringCLIDDB = $(SCT_Monitoring_tag)_SCT_MonitoringCLIDDB.make
cmt_local_tagfile_SCT_MonitoringCLIDDB = $(bin)$(SCT_Monitoring_tag)_SCT_MonitoringCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

SCT_Monitoring_tag = $(tag)

#cmt_local_tagfile_SCT_MonitoringCLIDDB = $(SCT_Monitoring_tag).make
cmt_local_tagfile_SCT_MonitoringCLIDDB = $(bin)$(SCT_Monitoring_tag).make

endif

include $(cmt_local_tagfile_SCT_MonitoringCLIDDB)
#-include $(cmt_local_tagfile_SCT_MonitoringCLIDDB)

ifdef cmt_SCT_MonitoringCLIDDB_has_target_tag

cmt_final_setup_SCT_MonitoringCLIDDB = $(bin)setup_SCT_MonitoringCLIDDB.make
cmt_dependencies_in_SCT_MonitoringCLIDDB = $(bin)dependencies_SCT_MonitoringCLIDDB.in
#cmt_final_setup_SCT_MonitoringCLIDDB = $(bin)SCT_Monitoring_SCT_MonitoringCLIDDBsetup.make
cmt_local_SCT_MonitoringCLIDDB_makefile = $(bin)SCT_MonitoringCLIDDB.make

else

cmt_final_setup_SCT_MonitoringCLIDDB = $(bin)setup.make
cmt_dependencies_in_SCT_MonitoringCLIDDB = $(bin)dependencies.in
#cmt_final_setup_SCT_MonitoringCLIDDB = $(bin)SCT_Monitoringsetup.make
cmt_local_SCT_MonitoringCLIDDB_makefile = $(bin)SCT_MonitoringCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)SCT_Monitoringsetup.make

#SCT_MonitoringCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'SCT_MonitoringCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = SCT_MonitoringCLIDDB/
#SCT_MonitoringCLIDDB::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/genCLIDDB_header
# Author: Paolo Calafiura
# derived from genconf_header

# Use genCLIDDB_cmd to create package clid.db files

.PHONY: SCT_MonitoringCLIDDB SCT_MonitoringCLIDDBclean

outname := clid.db
cliddb  := SCT_Monitoring_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)SCT_Monitoring.$(shlibsuffix)

SCT_MonitoringCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p SCT_Monitoring -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

SCT_MonitoringCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: SCT_MonitoringCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(SCT_MonitoringCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

SCT_MonitoringCLIDDBclean ::
#-- end of cleanup_header ---------------
