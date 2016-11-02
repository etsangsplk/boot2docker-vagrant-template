#!/bin/sh

# -------------------------------------------------
# Parametrization
# -------------------------------------------------
BOOT2DOCKER_EXTENSION_DIR="/var/lib/boot2docker/extension"
BOOT2DOCKER_EXTENSION_BOOTLOCAL="$BOOT2DOCKER_EXTENSION_DIR/bootlocal.sh"
LOGFILE="/var/lib/boot2docker/log/vagrant-bootlocal.log"

# -------------------------------------------------
# Execute bootlocal.sh if present to enable
# live customization
# -------------------------------------------------
if [ -f $BOOT2DOCKER_EXTENSION_BOOTLOCAL ]; then
   echo "==== [INFO][BOOTLOCAL][$(date)] Starting..."  | tee -a $LOGFILE
   $BOOT2DOCKER_EXTENSION_BOOTLOCAL 2>&1 | tee -a $LOGFILE
else
   echo "[WARN][$(date +"%T")] Bootlocal not found, try PROVISION before"  | tee -a $LOGFILE
fi
