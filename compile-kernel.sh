#!/bin/sh

START_TIME=$(date +%s)

cd /src/udm-kernel
.github/prepare.sh -V al-linux-v10.2.0-v1.10.4.3702-91ba352
.github/build.sh

END_TIME=$(date +%s)
ELAPSED_TIME=$(($END_TIME - $START_TIME))
echo "Kernel build finished in $ELAPSED_TIME seconds." > /src/build_time.txt
