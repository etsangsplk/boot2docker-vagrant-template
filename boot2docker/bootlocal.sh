#!/bin/sh

# -------------------------------------------------
# Parametrization
# -------------------------------------------------
BOOT2DOCKER_CONFIG_DIR="/var/lib/boot2docker/config"
BOOT2DOCKER_CONFIG_BOOTLOCAL="$BOOT2DOCKER_CONFIG_DIR/bootlocal.sh"
LOGFILE="/var/lib/boot2docker/log/vagrant-bootlocal.log"

# -------------------------------------------------
# Execute bootlocal.sh if present to enable
# live customization
# -------------------------------------------------
if [ -f $BOOT2DOCKER_CONFIG_BOOTLOCAL ]; then
   echo "== BOOTLOCAL execution... [$(date)] "
   $BOOT2DOCKER_CONFIG_BOOTLOCAL >> $LOGFILE 2>&1
else
   echo "== BOOTLOCAL not found, try PROVISION before [$(date)] "
fi
