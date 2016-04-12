# echo "cleanup InDetRecExample InDetRecExample-r737732 in /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetExample"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/CMT/v1r25p20140131
endif
source ${CMTROOT}/mgr/setup.csh
set cmtInDetRecExampletempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtInDetRecExampletempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=InDetRecExample -version=InDetRecExample-r737732 -path=/afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetExample  -quiet -without_version_directory $* >${cmtInDetRecExampletempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=InDetRecExample -version=InDetRecExample-r737732 -path=/afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetExample  -quiet -without_version_directory $* >${cmtInDetRecExampletempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtInDetRecExampletempfile}
  unset cmtInDetRecExampletempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtInDetRecExampletempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtInDetRecExampletempfile}
unset cmtInDetRecExampletempfile
exit $cmtcleanupstatus

