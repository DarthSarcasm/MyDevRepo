#!/usr/bin/python

# first spark demo, from the book (json not included)

# necessary library imports
from pyspark import SparkConf, SparkContext
from pyspark.sql.functions import desc

# initial Spark Context setup
conf = SparkConf().setMaster("local").setAppName("FirstDemo")
sc = SparkContext(conf = conf)

# flightData2015 = spark.read.json("jsonfilepath") initial read
flightData2015 = spark.read.schema(jsonSchema).option("header", "true").csv("filepath") # read with options

flightData2015\
        .groupBy("DEST_COUNTRY_NAME")\
        .sum("count")\
        .withColumnRenamed("sum(count)", "destination_total")\
        .sort(desc("destination_total"))\
        .limit(5)\
        .collect()