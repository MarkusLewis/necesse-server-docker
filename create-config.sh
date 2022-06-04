#!/bin/bash
echo "Building Configuration"

mkdir -p /root/.config/Necesse/cfg

# Setup Server Config
export SERVER_CONFIG_PATH=/root/.config/Necesse/cfg/server.cfg

echo "SERVER = { // Generated from environment variables" > $SERVER_CONFIG_PATH
echo "	port = $NECESSE_PORT, // [0 - 65535] Server default port" >> $SERVER_CONFIG_PATH
echo "	slots = $NECESSE_SLOTS, // [1 - 250] Server default slots" >> $SERVER_CONFIG_PATH
echo "	password = $NECESSE_PASSWORD, // Leave blank for no password" >> $SERVER_CONFIG_PATH
echo "	pauseWhenEmpty = $NECESSE_PAUSE_WHEN_EMPTY," >> $SERVER_CONFIG_PATH
echo "	giveClientsPower = $NECESSE_GIVE_CLIENTS_POWER, // If true, clients will have much more power over what hits them, their position etc" >> $SERVER_CONFIG_PATH
echo "	logging = $NECESSE_LOGGING, // If true, will create log files for each server start" >> $SERVER_CONFIG_PATH
echo "	language = $NECESSE_LANGUAGE," >> $SERVER_CONFIG_PATH
echo "	zipSaves = $NECESSE_ZIP_SAVES, // If true, will create new saves uncompressed" >> $SERVER_CONFIG_PATH
echo "	MOTD = $NECESSE_MOTD // Message of the day" >> $SERVER_CONFIG_PATH
echo "}" >> $SERVER_CONFIG_PATH

# Setup World Config
export WORLD_CONFIG_PATH="/root/.config/Necesse/saves/$NECESSE_WORLD_NAME/worldSettings.cfg"
mkdir -p /root/.config/Necesse/saves/$NECESSE_WORLD_NAME

echo "WORLDSETTINGS = { // Generated from environment variables" > $WORLD_CONFIG_PATH
echo "	allowCheats = $NECESSE_ALLOW_CHEATS," >> $WORLD_CONFIG_PATH
echo "	difficulty = $NECESSE_DIFFICULTY," >> $WORLD_CONFIG_PATH
echo "	deathPenalty = $NECESSE_DEATH_PENTALTY," >> $WORLD_CONFIG_PATH
echo "	raidFrequency = $NECESSE_RAID_FREQUENCY," >> $WORLD_CONFIG_PATH
echo "	playerHunger = $NECESSE_PLAYER_HUNGER," >> $WORLD_CONFIG_PATH
echo "	disableMobSpawns = $NECESSE_DISABLE_MOB_SPAWNS," >> $WORLD_CONFIG_PATH
echo "	forcedPvP = $NECESSE_FORCED_PVP, // True = players will always have PvP enabled" >> $WORLD_CONFIG_PATH
echo "	unloadSettlements = $NECESSE_UNLOAD_SETTLEMENTS," >> $WORLD_CONFIG_PATH
echo "	maxSettlementsPerPlayer = $NECESSE_MAX_SETTLEMENTS_PER_PLAYER," >> $WORLD_CONFIG_PATH
echo "	dayTimeMod = $NECESSE_DAY_TIME_MOD, // Day time modifier (The higher, the longer day will last, max 10)" >> $WORLD_CONFIG_PATH
echo "	nightTimeMod = $NECESSE_NIGHT_TIME_MOD, // Night time modifier (The higher, the longer night will last, max 10)" >> $WORLD_CONFIG_PATH
echo "	gameVersion = 0.21.22" >> $WORLD_CONFIG_PATH
echo "}" >> $WORLD_CONFIG_PATH

echo "Configuration completed"
