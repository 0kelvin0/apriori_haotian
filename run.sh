mkdir -p classes
rm -Rf classes/*
javac -classpath $($HADOOP_HOME/bin/hadoop classpath) -d classes ./src/main/com/pranit/*/*/*.java
jar -cvf mba.jar -C classes .