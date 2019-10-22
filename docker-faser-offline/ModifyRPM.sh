echo "Modifying RPM caches"


echo "                                                      " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "[tdaq-centos7]                                        " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "name=TDAQ releases centos7                            " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "baseurl=http://cern.ch/atlas-tdaq-sw/yum/tdaq/centos7 " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "gpgcheck=0                                            " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "enabled=1                                             " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "protect=0                                             " >>  /etc/yum.repos.d/atlas-tdaq.repo 


echo "                                                             " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "[tdaq-common-centos7]                                        " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "name=tdaq-common releases centos7                            " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "baseurl=http://cern.ch/atlas-tdaq-sw/yum/tdaq-common/centos7 " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "gpgcheck=0                                                   " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "enabled=1                                                    " >>  /etc/yum.repos.d/atlas-tdaq.repo 
echo "protect=0                                                    " >>  /etc/yum.repos.d/atlas-tdaq.repo 