export JAVACMD="${JAVACMD:-java}"
export MAX_RAM="${MAX_RAM:-2048M}"       # -Xmx
export JAVA_PARAMETERS="${JAVA_PARAMETERS:--XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:+CMSClassUnloadingEnabled -XX:ParallelGCThreads=5 -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10}"
