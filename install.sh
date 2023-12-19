#!/user/bin bash

if [ ! -d "/opt/oracle" ]; then

    mkdir /tmp/oracle-client

	curl https://download.oracle.com/otn_software/linux/instantclient/2112000/instantclient-basic-linux.x64-21.12.0.0.0dbru.zip -o /tmp/oracle-client/instantclient-basic-linux.x64-21.12.0.0.0dbru.zip

	unzip -o /tmp/oracle-client/instantclient-basic-linux.x64-21.12.0.0.0dbru.zip -d /opt/oracle/

	mkdir /opt/oracle/lib

    mv /opt/oracle/instantclient_21_12 /opt/oracle/instantclient

	rm -f /opt/oracle/instantclient/libclntsh.so

    ln -s /opt/oracle/instantclient/libclntsh.so.12.1 /opt/oracle/instantclient/libclntsh.so

    rm -drf /tmp/oracle-client
fi
								# sh -c "echo /opt/oracle/instantclient_21_1 > /etc/ld.so.conf.d/oracle-instantclient.conf"

								# ldconfig
apt install libaio1

export ORACLE_HOME="/opt/oracle/instantclient"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME
