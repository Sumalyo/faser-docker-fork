echo "STARTING Faser Env Setup"
source /opt/lcg/gcc/8.3.0/x86_64-centos7/setup.sh

echo "ENDING Faser Env Setup"

echo "Placing you in bash env - Remember, YOU ARE A BEAUTIFUL PERSON! Now go get some!"
echo "Now starting supervisord"
/usr/local/bin/supervisord -c /etc/supervisor/supervisord.conf
echo "Now starting redis database"
/usr/bin/redis-server /etc/redis.conf --daemonize yes
ps aux
/bin/bash