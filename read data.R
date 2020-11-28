library(dplyr)
system("java -version")
packageVersion("sparklyr")
library(sparklyr)
spark_installed_versions()
sc <- spark_connect(master = "local", version = "2.3")

train <- spark_read_csv(sc, "train.csv")

class(train)

q <- train %>% filter(train, content_type_id ==0)
class(q)

twrite.csv(q, "qtrain.csv", row.names = FALSE, )

