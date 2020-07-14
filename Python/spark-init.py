## code snippet for setting up an initial spark context
## local is the cluster connection, My App is the application name.
## expect to see this a lot if coding standards are not created / adhered to.

## A Python Spark job MUST be invoked with ./bin/spark-submit <filename>.py

from pyspark import SparkConf, SparkContext

conf = SparkConf().setMaster("local").setAppName("My App")
sc = SparkContext(conf = conf)