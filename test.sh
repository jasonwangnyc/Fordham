# -*- coding: utf-8 -*-

../../start.sh
/usr/local/hadoop/bin/hdfs dfs -rm -r /q1/input/
/usr/local/hadoop/bin/hdfs dfs -rm -r /q1/output/
/usr/local/hadoop/bin/hdfs dfs -mkdir -p /q1/input/
/usr/local/hadoop/bin/hdfs dfs -copyFromLocal ../../Parking_Violations_Issued_-_Fiscal_Year_2021.csv /q1/input/
/usr/local/hadoop/bin/hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.9.2.jar \
-file ../../q1/mapper.py -mapper ../../q1/map.py \
-file ../../q1/reducer.py -reducer ../../q1/reducer.py \
-input /q1/input/* -output /q1/output/
/usr/local/hadoop/bin/hdfs dfs -cat /q1/output/part-00000
/usr/local/hadoop/bin/hdfs dfs -rm -r /q1/input/
/usr/local/hadoop/bin/hdfs dfs -rm -r /q1/output/
../../stop.sh