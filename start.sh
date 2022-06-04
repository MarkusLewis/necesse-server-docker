#!/bin/bash
/app/create-config.sh
java -jar Server.jar -nogui -world $NECESSE_WORLD_NAME
