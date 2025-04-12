#!/bin/bash

cd /code &&
./configure --disable-orca --with-perl --with-python --with-libxml --prefix=/usr/local/cloudberry &&
make -j8 &&
sudo make install &&
source /usr/local/cloudberry/greenplum_path.sh &&
cd /code/gpAux/gpdemo &&
make create-demo-cluster &&
source /code/gpAux/gpdemo/gpdemo-env.sh