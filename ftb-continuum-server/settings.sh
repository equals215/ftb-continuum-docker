###################################################
# Configuration for ServerStart.sh and FTBInstall.sh
#
# TODO:
# * updates for new mojang repositories
# * create settings-local.sh automatically if missing
# * document settings-local.sh creation and usage

###################################################
# Pack specific settings
# Only edit this section if you know what you are doing

export MCVER="1.12.2"
export JARFILE="minecraft_server.${MCVER}.jar"
export LAUNCHWRAPPERVERSION="1.12"
export LAUNCHWRAPPER="net/minecraft/launchwrapper/${LAUNCHWRAPPERVERSION}/launchwrapper-${LAUNCHWRAPPERVERSION}.jar"
export FORGEJAR="FTBserver-1.12.2-14.23.5.2796-universal.jar"

###################################################
# Default arguments for JVM

## Copy following lines into settings-local.sh to create local config file which overrides default settings given here
export JAVACMD="java"
export MAX_RAM="2048M"       # -Xmx
export JAVA_PARAMETERS="-XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:+CMSClassUnloadingEnabled -XX:ParallelGCThreads=5 -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10"

