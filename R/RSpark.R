# R with Spark

#install.packages("sparklyr")

library(sparklyr)
spark_install(version = "1.6.2")

# Connection to Spark
sc <- spark_connect(master = "local")

library(dplyr)
iris_tbl <- copy_to(sc, iris)
