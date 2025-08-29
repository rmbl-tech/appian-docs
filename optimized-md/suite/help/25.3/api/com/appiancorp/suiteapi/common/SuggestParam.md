---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/SuggestParam.html
original_path: api/com/appiancorp/suiteapi/common/SuggestParam.html
version: "25.3"
title: "Class SuggestParam"
page_id: "api/com/appiancorp/suiteapi/common/SuggestParam"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class SuggestParam

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.SuggestParam

* * *

public class SuggestParam extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[SuggestParam.SuggestFilter](SuggestParam.SuggestFilter.html "class in com.appiancorp.suiteapi.common")`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SuggestParam](#%3Cinit%3E\(\))()`

    Default constructor

    `[SuggestParam](#%3Cinit%3E\(com.appiancorp.suiteapi.common.SuggestParam\))([SuggestParam](SuggestParam.html "class in com.appiancorp.suiteapi.common") param)`

    Convenience creator used for cloning [`SuggestParam`](SuggestParam.html "class in com.appiancorp.suiteapi.common") instances.

    `[SuggestParam](#%3Cinit%3E\(java.lang.Long,java.lang.String%5B%5D,java.lang.String%5B%5D,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] displayProperties, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] searchProperties, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] sortProperties)`

    Constructs a new instance.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInFromParent](#fillInFromParent\(com.appiancorp.suiteapi.common.SuggestParam\))([SuggestParam](SuggestParam.html "class in com.appiancorp.suiteapi.common") parent)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDisplayProperties](#getDisplayProperties\(\))()`

    `[SuggestParam.SuggestFilter](SuggestParam.SuggestFilter.html "class in com.appiancorp.suiteapi.common")[]`

    `[getFilters](#getFilters\(\))()`

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getIncludeAllDescendants](#getIncludeAllDescendants\(\))()`

    `[LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")[]`

    `[getRootItems](#getRootItems\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getSearchProperties](#getSearchProperties\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getSortProperties](#getSortProperties\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    `boolean`

    `[isRunContainsQuery](#isRunContainsQuery\(\))()`

    Returns whether a "contains query" should be executed when searching for suggestions.

    `boolean`

    `[isRunSpaceQuery](#isRunSpaceQuery\(\))()`

    Returns whether a "space query" should be executed when searching for suggestions.

    `void`

    `[setDisplayProperties](#setDisplayProperties\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] displayProperties)`

    `void`

    `[setFilters](#setFilters\(com.appiancorp.suiteapi.common.SuggestParam.SuggestFilter%5B%5D\))([SuggestParam.SuggestFilter](SuggestParam.SuggestFilter.html "class in com.appiancorp.suiteapi.common")[] filters)`

    `void`

    `[setIncludeAllDescendants](#setIncludeAllDescendants\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeAllDescendants)`

    `void`

    `[setRootItems](#setRootItems\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")[] rootItem)`

    `void`

    `[setRunContainsQuery](#setRunContainsQuery\(boolean\))(boolean runContainsQuery)`

    Specify whether a "contains query" should be executed when searching for suggestions.

    `void`

    `[setRunSpaceQuery](#setRunSpaceQuery\(boolean\))(boolean runSpaceQuery)`

    Specify whether a "space query" should be executed when searching for suggestions.

    `void`

    `[setSearchProperties](#setSearchProperties\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] searchProperties)`

    `void`

    `[setSortProperties](#setSortProperties\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] sortProperties)`

    `void`

    `[setType](#setType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### SuggestParam

        public SuggestParam()

        Default constructor

    -   ### SuggestParam

        public SuggestParam([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] displayProperties, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] searchProperties, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] sortProperties)

        Constructs a new instance.

        Parameters:

        `type` - the Appian type this suggest represents

        `displayProperties` - the list of display properties; these are the properties being requested for the type

        `searchProperties` - the list of object properties to search across

        `sortProperties` - the list of object properties that are sortable for suggest requests

        See Also:

        -   [`AppianType`](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")

    -   ### SuggestParam

        public SuggestParam([SuggestParam](SuggestParam.html "class in com.appiancorp.suiteapi.common") param)

        Convenience creator used for cloning [`SuggestParam`](SuggestParam.html "class in com.appiancorp.suiteapi.common") instances. This creator is useful when you intend to copy and edit a constant param template.

-   ## Method Details

    -   ### isRunSpaceQuery

        public boolean isRunSpaceQuery()

        Returns whether a "space query" should be executed when searching for suggestions.

        See Also:

        -   [`setRunSpaceQuery(boolean)`](#setRunSpaceQuery\(boolean\))

    -   ### setRunSpaceQuery

        public void setRunSpaceQuery(boolean runSpaceQuery)

        Specify whether a "space query" should be executed when searching for suggestions. Executing a space query allows matching items whose name does not start with the search term, but whose name contains the search term somewhere in the middle and after a space. For example, given the items \["Date", "Time", "Date and Time", "MyTimeDataType", "MyDataType (Time)"\] and the search term "time": - Without space query enabled, the results will be 1 item: \["Time"\]. - With space query enabled, the results will be 2 items: \["Time", "Date and Time"\].

        Parameters:

        `runSpaceQuery` - true if a "space query" should be executed, and false otherwise

    -   ### isRunContainsQuery

        public boolean isRunContainsQuery()

        Returns whether a "contains query" should be executed when searching for suggestions.

        See Also:

        -   [`setRunContainsQuery(boolean)`](#setRunContainsQuery\(boolean\))

    -   ### setRunContainsQuery

        public void setRunContainsQuery(boolean runContainsQuery)

        Specify whether a "contains query" should be executed when searching for suggestions. Executing a contains query allows matching items whose names do not start with the search term, but whose name contains the search term somewhere in the middle.

        Parameters:

        `runContainsQuery` - true if a "contains query" should be executed, and false otherwise

    -   ### getIncludeAllDescendants

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getIncludeAllDescendants()

    -   ### setIncludeAllDescendants

        public void setIncludeAllDescendants([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeAllDescendants)

    -   ### getRootItems

        public [LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] getRootItems()

    -   ### setRootItems

        public void setRootItems([LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] rootItem)

    -   ### getType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

    -   ### setType

        public void setType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type)

    -   ### getDisplayProperties

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDisplayProperties()

    -   ### setDisplayProperties

        public void setDisplayProperties([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] displayProperties)

    -   ### getSortProperties

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getSortProperties()

    -   ### setSortProperties

        public void setSortProperties([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] sortProperties)

    -   ### getFilters

        public [SuggestParam.SuggestFilter](SuggestParam.SuggestFilter.html "class in com.appiancorp.suiteapi.common")\[\] getFilters()

    -   ### setFilters

        public void setFilters([SuggestParam.SuggestFilter](SuggestParam.SuggestFilter.html "class in com.appiancorp.suiteapi.common")\[\] filters)

    -   ### getSearchProperties

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getSearchProperties()

    -   ### setSearchProperties

        public void setSearchProperties([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] searchProperties)

    -   ### fillInFromParent

        public void fillInFromParent([SuggestParam](SuggestParam.html "class in com.appiancorp.suiteapi.common") parent)