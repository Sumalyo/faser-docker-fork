FROM atlas/centos7-atlasos:latest

ENV HOME /home

# modify the rpm and install the Athena release
#COPY ModifyRPM.sh $HOME/ModifyRPM.sh
#RUN cd /tmp/ && \
#    source $HOME/ModifyRPM.sh && \
#    yum install -y Athena_22.0.4_x86_64-centos7-gcc8-opt && \
#    yum clean all

# get a newer version of git
RUN cd /tmp/ && \
    wget https://centos7.iuscommunity.org/ius-release.rpm && \
    rpm -i --nodeps ius-release.rpm && \
    yum remove -y git && \
    yum install -y git2u && \
    yum clean all
 
COPY startup.sh $HOME/startup.sh
 
ENTRYPOINT ["/bin/bash", "/home/startup.sh","/bin/bash"] 


