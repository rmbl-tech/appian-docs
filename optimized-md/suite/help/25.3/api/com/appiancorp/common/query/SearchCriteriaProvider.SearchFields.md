---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/SearchCriteriaProvider.SearchFields.html
original_path: api/com/appiancorp/common/query/SearchCriteriaProvider.SearchFields.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class SearchCriteriaProvider.SearchFields

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.SearchCriteriaProvider.SearchFields

Enclosing class:

[SearchCriteriaProvider](SearchCriteriaProvider.html "class in com.appiancorp.common.query")

* * *

public static class SearchCriteriaProvider.SearchFields extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SearchFields](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[SearchCriteriaProvider.SearchFields](SearchCriteriaProvider.SearchFields.html "class in com.appiancorp.common.query")`

    `[addIntField](#addIntField\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldName)`

    `[SearchCriteriaProvider.SearchFields](SearchCriteriaProvider.SearchFields.html "class in com.appiancorp.common.query")`

    `[addStringField](#addStringField\(java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldName, boolean startsWith)`

    `boolean`

    `[isEmpty](#isEmpty\(\))()`

    `[SearchCriteriaProvider.SearchFields](SearchCriteriaProvider.SearchFields.html "class in com.appiancorp.common.query")`

    `[setCustomCriteria](#setCustomCriteria\(java.util.function.Function\))([Function](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/function/Function.html "class or interface in java.util.function")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Criteria](Criteria.html "interface in com.appiancorp.common.query")> criteria)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### SearchFields

        public SearchFields()

-   ## Method Details

    -   ### addStringField

        public [SearchCriteriaProvider.SearchFields](SearchCriteriaProvider.SearchFields.html "class in com.appiancorp.common.query") addStringField([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldName, boolean startsWith)

    -   ### setCustomCriteria

        public [SearchCriteriaProvider.SearchFields](SearchCriteriaProvider.SearchFields.html "class in com.appiancorp.common.query") setCustomCriteria([Function](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/function/Function.html "class or interface in java.util.function")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Criteria](Criteria.html "interface in com.appiancorp.common.query")\> criteria)

    -   ### addIntField

        public [SearchCriteriaProvider.SearchFields](SearchCriteriaProvider.SearchFields.html "class in com.appiancorp.common.query") addIntField([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldName)

    -   ### isEmpty

        public boolean isEmpty()