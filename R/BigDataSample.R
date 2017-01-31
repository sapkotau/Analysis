# Quering hive table from R

#install.packages(c("rJava", "RJDBC"))

library("DBI")
library("rJava")
library("RJDBC")
Sys.setenv(HIVE_HOME="/usr/hdp/current/hive-client")
Sys.setenv(HADOOP_HOME="/usr/hdp/2.5.0.0-1245/hadoop")
for(l in list.files('usr/hdp/current/hive-client/lib/')){
    .jaddClassPath(paste("/usr/hdp/2.5.0.0-1245/hadoop/",l,sep=""))
}
options( java.parameters = "-Xmx8g" )
drv <- JDBC("org.apache.hive.jdbc.HiveDriver", "/usr/hdp/current/hive-client/lib/hive-jdbc.jar")
conn <- dbConnect(drv, "jdbc:hive2://localhost:10000/default", "usapkota", "Pokhara11235$")

show_databases <- dbGetQuery(conn, "show databases")