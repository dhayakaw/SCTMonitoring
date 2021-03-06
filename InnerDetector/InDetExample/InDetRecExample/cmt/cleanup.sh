# echo "cleanup InDetRecExample InDetRecExample-r737732 in /afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetExample"

if test "${CMTROOT}" = ""; then
  CMTROOT=/cvmfs/atlas.cern.ch/repo/sw/software/x86_64-slc6-gcc49-opt/20.7.5/CMT/v1r25p20140131; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtInDetRecExampletempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtInDetRecExampletempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=InDetRecExample -version=InDetRecExample-r737732 -path=/afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetExample  -quiet -without_version_directory $* >${cmtInDetRecExampletempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=InDetRecExample -version=InDetRecExample-r737732 -path=/afs/cern.ch/user/d/dhayakaw/private/OfflineDQ/SCTMonitoring/InnerDetector/InDetExample  -quiet -without_version_directory $* >${cmtInDetRecExampletempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtInDetRecExampletempfile}
  unset cmtInDetRecExampletempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtInDetRecExampletempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtInDetRecExampletempfile}
unset cmtInDetRecExampletempfile
return $cmtcleanupstatus

