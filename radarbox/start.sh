#!/usr/bin/env bash
set -e

# Check if service has been disabled through the DISABLED_SERVICES environment variable.

if [[ ",$DISABLED_SERVICES," =~ ",$BALENA_SERVICE_NAME," ]]; then
        echo "$BALENA_SERVICE_NAME is manually disabled."
        sleep infinity
fi

# Verify that all the required varibles are set before starting up the application.

echo "Verifying settings..."
echo " "
sleep 2

missing_variables=false

# Begin defining all the required configuration variables.

[ -z "$RADARBOX_KEY" ] && echo "RadarBox key latitude is missing, fetching from server." || echo "RadarBox key latitude is set: $RADARBOX_KEY"
[ -z "$LAT" ] && echo "Receiver latitude is missing, will abort startup." && missing_variables=true || echo "Receiver latitude is set: $LAT"
[ -z "$LON" ] && echo "Receiver longitude is missing, will abort startup." && missing_variables=true || echo "Receiver longitude is set: $LON"
[ -z "$ALT" ] && echo "Receiver altitude is missing, will abort startup." && missing_variables=true || echo "Receiver altitude is set: $ALT"
[ -z "$RECEIVER_HOST" ] && echo "Receiver host is missing, will abort startup." && missing_variables=true || echo "Receiver host is set: $RECEIVER_HOST"
[ -z "$RECEIVER_PORT" ] && echo "Receiver port is missing, will abort startup." && missing_variables=true || echo "Receiver port is set: $RECEIVER_PORT"

# End defining all the required configuration variables.

echo " "

if [ "$missing_variables" = true ]
then
        echo "Settings missing, aborting..."
        echo " "
        sleep infinity
fi

echo "Settings verified, proceeding with startup."
echo " "

# Variables are verified – continue with startup procedure.

# Write settings to config file and set permissions.
envsubst < /etc/rbfeeder.ini.tpl > /etc/rbfeeder.ini
chmod a+rw /etc/rbfeeder.ini

# Start rbfeeder and put it in the background.

arch="$(dpkg --print-architecture)"
echo System Architecture: $arch

# If host architecture is i386 or amd64, run RadarBox through armhf software emulation.
if [ "$arch" = "i386" ] || [ "$arch" = "amd64" ]; then 
	/usr/bin/qemu-arm-static /usr/bin/rbfeeder &
else 
	/usr/bin/rbfeeder &
fi

# Wait for any services to exit.
wait -n