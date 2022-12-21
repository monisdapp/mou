#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4a7fa151-519e-985c-0dbd-9fbc0cb504db"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

