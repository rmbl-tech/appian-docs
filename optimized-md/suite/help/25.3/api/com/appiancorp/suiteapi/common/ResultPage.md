---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/ResultPage.html
original_path: api/com/appiancorp/suiteapi/common/ResultPage.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class ResultPage

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Result](Result.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.common.ResultPage

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ReportResultPage](../process/analytics2/ReportResultPage.html "class in com.appiancorp.suiteapi.process.analytics2")`

* * *

public class ResultPage extends [Result](Result.html "class in com.appiancorp.suiteapi.common")

Class for storing the results returned by a paging service call. The results returned by the call can be accessed using the [`Result.getResults()`](Result.html#getResults\(\)) method of the `Result` base class. Since paging methods may return only a subset of all the results [`getAvailableItems()`](#getAvailableItems\(\)) can be used to get the total number of results available on the server.

See Also:

-   [`Result`](Result.html "class in com.appiancorp.suiteapi.common")
-   [`ResultList`](ResultList.html "class in com.appiancorp.suiteapi.common")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.ResultPage)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ResultPage](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addResults](#addResults\(java.lang.Object%5B%5D\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] results_)`

    Add results to the result page.

    `long`

    `[getAvailableItems](#getAvailableItems\(\))()`

    Returns the total number of items available on the server (as opposed to the number of items actually returned by the service call and stored in the result page, which may be different when using a paging method and specifying a batch size that is less than the total number of results on the server).

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getCodesForFailedIds](#getCodesForFailedIds\(\))()`

    Returns the codes for why the requested objects that were not returned from the server couldn't be returned.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getFailedIds](#getFailedIds\(\))()`

    Returns the ids of any objects requested but not returned from the server.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getParent](#getParent\(\))()`

    Returns the parent object of the results (for instance, if getting a page of members of a group, this field might be populated with the group ID).

    `void`

    `[setAvailableItems](#setAvailableItems\(long\))(long availableItems_)`

    See [`getAvailableItems()`](#getAvailableItems\(\)).

    `void`

    `[setCodesForFailedIds](#setCodesForFailedIds\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] codesForFailedIds_)`

    See [`getCodesForFailedIds()`](#getCodesForFailedIds\(\)).

    `void`

    `[setFailedIds](#setFailedIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] failedIds_)`

    See [`getFailedIds()`](#getFailedIds\(\)).

    `void`

    `[setParent](#setParent\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object_)`

    See [`getParent()`](#getParent\(\)).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns the `ResultPage` and its array of results as a string.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Result](Result.html "class in com.appiancorp.suiteapi.common")

    `[getNumResults](Result.html#getNumResults\(\)), [getResults](Result.html#getResults\(\)), [setResults](Result.html#setResults\(java.lang.Object%5B%5D\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ResultPage

        public ResultPage()

-   ## Method Details

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns the `ResultPage` and its array of results as a string.

        Overrides:

        `[toString](Result.html#toString\(\))` in class `[Result](Result.html "class in com.appiancorp.suiteapi.common")`

    -   ### getAvailableItems

        public long getAvailableItems()

        Returns the total number of items available on the server (as opposed to the number of items actually returned by the service call and stored in the result page, which may be different when using a paging method and specifying a batch size that is less than the total number of results on the server).

        Returns:

        The total number of items available on the server.

        See Also:

        -   [`setAvailableItems(long)`](#setAvailableItems\(long\))

    -   ### setAvailableItems

        public void setAvailableItems(long availableItems\_)

        See [`getAvailableItems()`](#getAvailableItems\(\)).

        Parameters:

        `availableItems_` - The number of available items.

        See Also:

        -   [`getAvailableItems()`](#getAvailableItems\(\))

    -   ### addResults

        public void addResults([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] results\_)

        Add results to the result page.

        Parameters:

        `results_` - The objects to add to the result page.

    -   ### getFailedIds

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getFailedIds()

        Returns the ids of any objects requested but not returned from the server. The corresponding array of error codes for why the objects couldn't be returned is accessible through [`getCodesForFailedIds()`](#getCodesForFailedIds\(\)).

        Returns:

        The ids of any objects requested but not returned from the server.

        See Also:

        -   [`setFailedIds(Long[])`](#setFailedIds\(java.lang.Long%5B%5D\))

    -   ### setFailedIds

        public void setFailedIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] failedIds\_)

        See [`getFailedIds()`](#getFailedIds\(\)).

        Parameters:

        `failedIds_` - An array of failed ids.

        See Also:

        -   [`getFailedIds()`](#getFailedIds\(\))

    -   ### getCodesForFailedIds

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getCodesForFailedIds()

        Returns the codes for why the requested objects that were not returned from the server couldn't be returned. The corresponding array of ids of the requested objects that weren't returned is accessible through [`getFailedIds()`](#getFailedIds\(\)).

        Returns:

        The codes for why the requested objects that were not returned from the server couldn't be returned.

        See Also:

        -   [`setCodesForFailedIds(Integer[])`](#setCodesForFailedIds\(java.lang.Integer%5B%5D\))

    -   ### setCodesForFailedIds

        public void setCodesForFailedIds([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] codesForFailedIds\_)

        See [`getCodesForFailedIds()`](#getCodesForFailedIds\(\)).

        Parameters:

        `codesForFailedIds_` - The codes for why the requested objects that were not returned from the server couldn't be returned.

        See Also:

        -   [`getCodesForFailedIds()`](#getCodesForFailedIds\(\))

    -   ### getParent

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getParent()

        Returns the parent object of the results (for instance, if getting a page of members of a group, this field might be populated with the group ID). This field never populated by the backend, and is only populated in select instances by Java.

        Returns:

        The parent object of the results.

        See Also:

        -   [`setParent(Object)`](#setParent\(java.lang.Object\))

    -   ### setParent

        public void setParent([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object\_)

        See [`getParent()`](#getParent\(\)).

        Parameters:

        `object_` - The parent object of the results

        See Also:

        -   [`getParent()`](#getParent\(\))