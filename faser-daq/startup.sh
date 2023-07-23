echo "STARTING Faser Env Setup"
source /opt/lcg/gcc/8.3.0/x86_64-centos7/setup.sh

echo "ENDING Faser Env Setup"

echo "Placing you in bash env - Remember, YOU ARE A BEAUTIFUL PERSON! Now go get some!"
echo "Now starting supervisord"
/usr/local/bin/supervisord -c /etc/supervisor/supervisord.conf
echo "Now starting redis database"
/usr/bin/redis-server /etc/redis.conf --daemonize yes
# sed -i 's/\(moody-incl arch=linux-None-x86_64\)/\1, zstd arch=linux-centos7-x86_64, googletest arch=linux-centos7-x86_64, lz4@1.9.2 arch=linux-centos7-x86_64, brotli arch=linux-centos7-x86_64/' /daqling-spack-repo/spack/var/spack/environments/daqling/spack.yaml;
# . /daqling-spack-repo/spack/share/spack/setup-env.sh ; spack env activate daqling ; spack find; spack install ;
ps aux
/bin/bash