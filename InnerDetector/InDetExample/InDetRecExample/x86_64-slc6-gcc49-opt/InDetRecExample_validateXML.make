#-- start of make_header -----------------

#====================================
#  Document InDetRecExample_validateXML
#
#   Generated Tue Apr 12 10:49:06 2016  by dhayakaw
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_InDetRecExample_validateXML_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_InDetRecExample_validateXML_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_InDetRecExample_validateXML

InDetRecExample_tag = $(tag)

#cmt_local_tagfile_InDetRecExample_validateXML = $(InDetRecExample_tag)_InDetRecExample_validateXML.make
cmt_local_tagfile_InDetRecExample_validateXML = $(bin)$(InDetRecExample_tag)_InDetRecExample_validateXML.make

else

tags      = $(tag),$(CMTEXTRATAGS)

InDetRecExample_tag = $(tag)

#cmt_local_tagfile_InDetRecExample_validateXML = $(InDetRecExample_tag).make
cmt_local_tagfile_InDetRecExample_validateXML = $(bin)$(InDetRecExample_tag).make

endif

include $(cmt_local_tagfile_InDetRecExample_validateXML)
#-include $(cmt_local_tagfile_InDetRecExample_validateXML)

ifdef cmt_InDetRecExample_validateXML_has_target_tag

cmt_final_setup_InDetRecExample_validateXML = $(bin)setup_InDetRecExample_validateXML.make
cmt_dependencies_in_InDetRecExample_validateXML = $(bin)dependencies_InDetRecExample_validateXML.in
#cmt_final_setup_InDetRecExample_validateXML = $(bin)InDetRecExample_InDetRecExample_validateXMLsetup.make
cmt_local_InDetRecExample_validateXML_makefile = $(bin)InDetRecExample_validateXML.make

else

cmt_final_setup_InDetRecExample_validateXML = $(bin)setup.make
cmt_dependencies_in_InDetRecExample_validateXML = $(bin)dependencies.in
#cmt_final_setup_InDetRecExample_validateXML = $(bin)InDetRecExamplesetup.make
cmt_local_InDetRecExample_validateXML_makefile = $(bin)InDetRecExample_validateXML.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)InDetRecExamplesetup.make

#InDetRecExample_validateXML :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'InDetRecExample_validateXML'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = InDetRecExample_validateXML/
#InDetRecExample_validateXML::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of cmt_action_runner_header ---------------

ifdef ONCE
InDetRecExample_validateXML_once = 1
endif

ifdef InDetRecExample_validateXML_once

InDetRecExample_validateXMLactionstamp = $(bin)InDetRecExample_validateXML.actionstamp
#InDetRecExample_validateXMLactionstamp = InDetRecExample_validateXML.actionstamp

InDetRecExample_validateXML :: $(InDetRecExample_validateXMLactionstamp)
	$(echo) "InDetRecExample_validateXML ok"
#	@echo InDetRecExample_validateXML ok

#$(InDetRecExample_validateXMLactionstamp) :: $(InDetRecExample_validateXML_dependencies)
$(InDetRecExample_validateXMLactionstamp) ::
	$(silent) python /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/TestPolicy/python/validateXML.py /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetExample/InDetRecExample/test/InDetRecExample_TestConfiguration.xml
	$(silent) cat /dev/null > $(InDetRecExample_validateXMLactionstamp)
#	@echo ok > $(InDetRecExample_validateXMLactionstamp)

InDetRecExample_validateXMLclean ::
	$(cleanup_silent) /bin/rm -f $(InDetRecExample_validateXMLactionstamp)

else

#InDetRecExample_validateXML :: $(InDetRecExample_validateXML_dependencies)
InDetRecExample_validateXML ::
	$(silent) python /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/AtlasCore/20.7.5/TestPolicy/python/validateXML.py /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetExample/InDetRecExample/test/InDetRecExample_TestConfiguration.xml

endif

install ::
uninstall ::

#-- end of cmt_action_runner_header -----------------
#-- start of cleanup_header --------------

clean :: InDetRecExample_validateXMLclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(InDetRecExample_validateXML.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

InDetRecExample_validateXMLclean ::
#-- end of cleanup_header ---------------
