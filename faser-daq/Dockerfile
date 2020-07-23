# start from the base daqling repository
# https://gitlab.cern.ch/ep-dt-di/daq/daqling/blob/develop/etc/Dockerfile

FROM gitlab-registry.cern.ch/ep-dt-di/daq/daqling:latest

# put all of the code within the /faser/daq directory in the image
ADD . /faser/daq
WORKDIR /faser/daq


# get boost 1.70.0 from LCG
COPY *.repo /etc/yum.repos.d/
RUN yum install -y LCG_96b_Boost_1.70.0_x86_64_centos7_gcc8_opt && \
    export BOOST_ROOT_DIR=/opt/lcg/Boost/1.70.0-eebf1/x86_64-centos7-gcc8-opt && \
    export BOOST_VERSION=1.70
    
# get an up to date version of Git
#RUN cd /tmp/ && \
#    wget https://centos7.iuscommunity.org/ius-release.rpm && \
#    rpm -i --nodeps ius-release.rpm && \
#    yum remove -y git && \
#    yum install -y git2u && \
#    yum clean all
    
# get xrootd for xrdcp
RUN yum install -y xrootd-client && \
    yum clean all

# libusb is for the GPIO boards
RUN yum install -y libusbx-devel && \
    yum clean all
    
# python3-devel for the rcgui gevent
RUN yum install -y python3-devel && \
    yum clean all
    
# ToDo : root is for the tracker scan routines
#        there were some conflicts here so this is commented out for now
#        as it is not essential for faser/DAQ operation
# RUN yum install -y root && \
#     yum clean all
# 
# RUN yum install -y /usr/lib64/root/libMinuit2.so.6.18.04  \
#                    /usr/lib64/root/libFumili.so.6.18.04  \
#                    /usr/lib64/root/libMLP.so.6.18.04  \
#                    /usr/lib64/root/libQuadp.so.6.18.04  \
#                    /usr/lib64/root/libFoam.so.6.18.04  \
#                    /usr/lib64/root/libSmatrix.so.6.18.04  \
#                    /usr/lib64/root/libSPlot.so.6.18.04  \
#                    /usr/lib64/root/libGenVector.so.6.18.04  \
#                    /usr/lib64/root/libGenetic.so.6.18.04  \
#                    /usr/lib64/root/libUnuran.so.6.18.04  \
#                    /usr/lib64/root/libFFTW.so.6.18.04  \
#                    /usr/lib64/root/libRtools.so.6.18.04  \
#                    /usr/lib64/root/libSpectrum.so.6.18.04  \
#                    /usr/lib64/root/libSpectrumPainter.so.6.18.04  \
#                    /usr/lib64/root/libUnfold.so.6.18.04  \
#                    /usr/lib64/root/libHbook.so.6.18.04  \
#                    /usr/lib64/root/libTreeViewer.so.6.18.04  \
#                    /usr/lib64/root/libSQLIO.so.6.18.04  \
#                    /usr/lib64/root/libXMLIO.so.6.18.04  \
#                    /usr/lib64/root/libXMLParser.so.6.18.04  \
#                    /usr/lib64/root/libGFAL.so.6.18.04  \
#                    /usr/lib64/root/libDCache.so.6.18.04  \
#                    /usr/lib64/root/libRootAuth.so.6.18.04  \
#                    /usr/lib64/root/libSrvAuth.so.6.18.04  \
#                    /usr/lib64/root/libNetx.so.6.18.04  \
#                    /usr/lib64/root/libRDAVIX.so.6.18.04  \
#                    /usr/lib64/root/libNetxNG.so.6.18.04  \
#                    /usr/lib64/root/libRHTTP.so.6.18.04  \
#                    /usr/lib64/root/libRHTTPSniff.so.6.18.04  \
#                    /usr/lib64/root/libGviz.so.6.18.04  \
#                    /usr/lib64/root/libFITSIO.so.6.18.04  \
#                    /usr/lib64/root/libX3d.so.6.18.04  \
#                    /usr/lib64/root/libRCsg.so.6.18.04  \
#                    /usr/lib64/root/libEve.so.6.18.04  \
#                    /usr/lib64/root/libRGL.so.6.18.04  \
#                    /usr/lib64/root/libGviz3d.so.6.18.04  \
#                    /usr/lib64/root/libFitPanel.so.6.18.04  \
#                    /usr/lib64/root/libGuiBld.so.6.18.04  \
#                    /usr/lib64/root/libGuiHtml.so.6.18.04  \
#                    /usr/lib64/root/libRecorder.so.6.18.04  \
#                    /usr/lib64/root/libSessionViewer.so.6.18.04  \
#                    /usr/lib64/root/libProof.so.6.18.04  \
#                    /usr/lib64/root/libProofPlayer.so.6.18.04  \
#                    /usr/lib64/root/libProofDraw.so.6.18.04  \
#                    /usr/lib64/root/libProofBench.so.6.18.04  \
#                    /usr/lib64/root/libXrdProofd.so.6.18.04  \
#                    /usr/bin/proofexecv  \
#                    /usr/lib64/root/libProofx.so.6.18.04  \
#                    /usr/lib64/root/libHtml.so.6.18.04  \
#                    /usr/lib64/root/libEG.so.6.18.04  \
#                    /usr/lib64/root/libEGPythia8.so.6.18.04  \
#                    /usr/lib64/root/libVMC.so.6.18.04  \
#                    /usr/lib64/root/libGeom.so.6.18.04  \
#                    /usr/lib64/root/libGeomBuilder.so.6.18.04  \
#                    /usr/lib64/root/libGeomPainter.so.6.18.04  \
#                    /usr/lib64/root/libGdml.so.6.18.04  \
#                    /usr/lib64/root/libMemStat.so.6.18.04  \
#                    /usr/bin/xpdtest  \
#                    /usr/bin/proofserv.exe  \
#                    /usr/bin/rootnb.exe  \
#                    /usr/bin/g2root  \
#                    /usr/bin/h2root  \
#                    /usr/lib64/root/libPyROOT.so.6.18.04  \
#                    /usr/lib64/root/libRInterface.so.6.18.04  \
#                    /usr/lib64/root/libRMySQL.so.6.18.04  \
#                    /usr/lib64/root/libRODBC.so.6.18.04  \
#                    /usr/lib64/root/libPgSQL.so.6.18.04  \
#                    /usr/lib64/root/libRSQLite.so.6.18.04  \
#                    /usr/lib64/root/libTMVA.so.6.18.04  \
#                    /usr/lib64/root/libTMVAGui.so.6.18.04  \
#                    /usr/lib64/root/libPyMVA.so.6.18.04  \
#                    /usr/lib64/root/libRMVA.so.6.18.04  \
#                    /usr/lib64/root/libRooFitCore.so.6.18.04  \
#                    /usr/lib64/root/libRooFit.so.6.18.04  \
#                    /usr/lib64/root/libRooStats.so.6.18.04  \
#                    /usr/lib64/root/libHistFactory.so.6.18.04  \
#                    /usr/bin/hist2workspace  && \
#     yum clean all

ENV HOME /home

COPY startup.sh $HOME/startup.sh

ENTRYPOINT ["/bin/bash", "/home/startup.sh","/bin/bash"]
    


    