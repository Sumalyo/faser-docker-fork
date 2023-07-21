# start from the base daqling repository
# https://gitlab.cern.ch/ep-dt-di/daq/daqling/blob/develop/etc/Dockerfile

FROM gitlab-registry.cern.ch/ep-dt-di/daq/daqling:cibase

# put all of the code within the /faser/daq directory in the image
ADD . /faser/daq
WORKDIR /faser/daq

 
# get an up to date version of Git
#RUN cd /tmp/ && \
#    wget https://centos7.iuscommunity.org/ius-release.rpm && \
#    rpm -i --nodeps ius-release.rpm && \
#    yum remove -y git && \
#    yum install -y git2u && \
#    yum clean all
# python3-devel for the rcgui gevent
RUN yum install -y python3-devel && \
    yum clean all

# RUN yum --enablerepo=centos-sclo-rh -y install rh-python38 && \
#     yum clean all

#RUN scl enable rh-python38 bash

#RUN scl enable rh-python38 bash

ADD https://raw.githubusercontent.com/Sumalyo/faser-docker-fork/dev/requirements.txt /faser/daq

RUN python3 -m pip install --upgrade pip

RUN python3 -m pip install -r requirements.txt
# get xrootd for xrdcp
RUN yum install -y xrootd-client && \
    yum clean all

# libusb is for the GPIO boards
RUN yum install -y libusbx-devel && \
    yum clean all

# for creation of LUT
RUN yum install -y muParser && \
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

RUN yum -y install eigen3-devel && \
    yum clean all

RUN yum -y install redis && \
    yum clean all

# RUN yum -y install https://dl.influxdata.com/influxdb/releases/influxdb-1.7.6.x86_64.rpm && \
#     yum clean all

# RUN pip3 install supervisor

# RUN pip3 install supervisor_twiddler

#configs is a folder that I have created in the repo that conatains files to configure supervisor and also fix python imports

USER 0

RUN mkdir /var/log/supervisor

RUN mkdir /log

RUN mkdir $HOME/data

RUN mkdir /etc/supervisor

RUN mkdir /etc/supervisor/conf.d

ADD https://gitlab.cern.ch/ep-dt-di/daq/daqling/-/blob/master/ansible/roles/supervisor/files/supervisord.conf /etc/supervisor/

ADD https://gitlab.cern.ch/ep-dt-di/daq/daqling/-/raw/master/ansible/roles/supervisor/files/inet_http_server.conf /etc/supervisor/conf.d/

ADD https://gitlab.cern.ch/ep-dt-di/daq/daqling/-/raw/master/ansible/roles/supervisor-twiddler/files/twiddler.conf /etc/supervisor/conf.d/
RUN sed -i 's/\[group:xyz\]/[group:abc]/' /etc/supervisor/conf.d/twiddler.conf
# to be edited to run faser group

ADD https://gitlab.cern.ch/ep-dt-di/daq/daqling/-/raw/master/ansible/roles/redis/files/redis.conf /etc/

RUN sed 's/spack install nlohmann-json@3.6.1 ${ARCH} cppzmq@4.3.0 ${ARCH} xmlrpc-c@1.51.06 ${ARCH} boost@1.70.0 ${ARCH} cpr ${ARCH} ers ${ARCH} folly-incl ${ARCH} moody-incl ${ARCH}$/& zstd ${ARCH} googletest ${ARCH} lz4@1.9.2 ${ARCH} brotli ${ARCH}/' /daqling-spack-repo/Install.sh
RUN source /daqling-spack-repo/Install.sh
#Add dependency and Install packages

#CMD ["/usr/local/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]

EXPOSE 22 80 9001 5000

ENTRYPOINT ["/bin/bash", "/home/startup.sh","/bin/bash"]