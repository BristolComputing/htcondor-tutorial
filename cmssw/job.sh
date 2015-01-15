#!/bin/bash -e
VO_CMS_SW_DIR=/cvmfs/cms.cern.ch
host=`hostname`
# some information for debugging
echo "I am running on $host"
echo "I got the following parameters: $@"
# source CMSSW env
. $VO_CMS_SW_DIR/cmsset_default.sh
# get CMSSW
scramv1 project CMSSW CMSSW_6_2_12
cd CMSSW_6_2_12/src/
eval `scramv1 runtime -sh`
# should take around 3 min
cmsDriver.py UndergroundCosmicMu_cfi.py --fileout file:TRK-Cosmic62-00001.root --mc --eventcontent RAWSIM --datatier GEN-SIM --conditions POSTLS162_V1::All --step GEN,SIM --scenario cosmics --geometry Extended2015 -n 10
cp *.root ../../.
