---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/GenericQuery.GenericBuilder.Aggregator.html
original_path: api/com/appiancorp/common/query/GenericQuery.GenericBuilder.Aggregator.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class GenericQuery.GenericBuilder.Aggregator

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.QueryBuilderTools.Aggregator](QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")

com.appiancorp.common.query.GenericQuery.GenericBuilder.Aggregator

Enclosing class:

[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")

* * *

public static final class GenericQuery.GenericBuilder.Aggregator extends [QueryBuilderTools.Aggregator](QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")

This class encapsulates all the available Aggregation Functions in a more object oriented way.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Aggregator](#%3Cinit%3E\(\))()`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.common.query.[QueryBuilderTools.Aggregator](QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")

    `[aggregation](QueryBuilderTools.Aggregator.html#aggregation\(java.lang.String,com.appiancorp.common.query.AggregationFunction\)), [aggregation](QueryBuilderTools.Aggregator.html#aggregation\(java.lang.String,java.lang.String,boolean,com.appiancorp.common.query.AggregationFunction\)), [avg](QueryBuilderTools.Aggregator.html#avg\(com.appiancorp.common.query.Column\)), [avg](QueryBuilderTools.Aggregator.html#avg\(com.appiancorp.common.query.ColumnAlias\)), [avg](QueryBuilderTools.Aggregator.html#avg\(com.appiancorp.common.query.ColumnAlias,boolean\)), [avg](QueryBuilderTools.Aggregator.html#avg\(java.lang.String,java.lang.String\)), [avg](QueryBuilderTools.Aggregator.html#avg\(java.lang.String,java.lang.String,boolean\)), [count](QueryBuilderTools.Aggregator.html#count\(com.appiancorp.common.query.Column\)), [count](QueryBuilderTools.Aggregator.html#count\(com.appiancorp.common.query.ColumnAlias\)), [count](QueryBuilderTools.Aggregator.html#count\(com.appiancorp.common.query.ColumnAlias,boolean\)), [count](QueryBuilderTools.Aggregator.html#count\(java.lang.String,java.lang.String\)), [count](QueryBuilderTools.Aggregator.html#count\(java.lang.String,java.lang.String,boolean\)), [group](QueryBuilderTools.Aggregator.html#group\(com.appiancorp.common.query.Column\)), [group](QueryBuilderTools.Aggregator.html#group\(com.appiancorp.common.query.ColumnAlias\)), [group](QueryBuilderTools.Aggregator.html#group\(java.lang.String\)), [group](QueryBuilderTools.Aggregator.html#group\(java.lang.String,boolean\)), [group](QueryBuilderTools.Aggregator.html#group\(java.lang.String,java.lang.String\)), [group](QueryBuilderTools.Aggregator.html#group\(java.lang.String,java.lang.String,boolean\)), [group](QueryBuilderTools.Aggregator.html#group\(java.lang.String,java.lang.String,com.appiancorp.common.query.GroupingFunction,boolean\)), [max](QueryBuilderTools.Aggregator.html#max\(com.appiancorp.common.query.Column\)), [max](QueryBuilderTools.Aggregator.html#max\(com.appiancorp.common.query.ColumnAlias\)), [max](QueryBuilderTools.Aggregator.html#max\(com.appiancorp.common.query.ColumnAlias,boolean\)), [max](QueryBuilderTools.Aggregator.html#max\(java.lang.String,java.lang.String\)), [max](QueryBuilderTools.Aggregator.html#max\(java.lang.String,java.lang.String,boolean\)), [min](QueryBuilderTools.Aggregator.html#min\(com.appiancorp.common.query.Column\)), [min](QueryBuilderTools.Aggregator.html#min\(com.appiancorp.common.query.ColumnAlias\)), [min](QueryBuilderTools.Aggregator.html#min\(com.appiancorp.common.query.ColumnAlias,boolean\)), [min](QueryBuilderTools.Aggregator.html#min\(java.lang.String,java.lang.String\)), [min](QueryBuilderTools.Aggregator.html#min\(java.lang.String,java.lang.String,boolean\)), [sum](QueryBuilderTools.Aggregator.html#sum\(com.appiancorp.common.query.Column\)), [sum](QueryBuilderTools.Aggregator.html#sum\(com.appiancorp.common.query.ColumnAlias\)), [sum](QueryBuilderTools.Aggregator.html#sum\(com.appiancorp.common.query.ColumnAlias,boolean\)), [sum](QueryBuilderTools.Aggregator.html#sum\(java.lang.String,java.lang.String\)), [sum](QueryBuilderTools.Aggregator.html#sum\(java.lang.String,java.lang.String,boolean\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Aggregator

        public Aggregator()