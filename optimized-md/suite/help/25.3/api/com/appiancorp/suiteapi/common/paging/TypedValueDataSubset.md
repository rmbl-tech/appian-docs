---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/paging/TypedValueDataSubset.html
original_path: api/com/appiancorp/suiteapi/common/paging/TypedValueDataSubset.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.paging](package-summary.html)

# Class TypedValueDataSubset

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.paging.DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

com.appiancorp.suiteapi.common.paging.TypedValueDataSubset

* * *

public class TypedValueDataSubset extends [DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

This class provides strong-typing support for [`TypedValue`](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\-based paging data. The class is JAXB-compatible and generates standard XML that conforms to the XSD defined by the [`DataSubset`](DataSubset.html "class in com.appiancorp.suiteapi.common.paging") class. This means it can be used as the runtime return or parameter type in both custom smart services and expressions functions.

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.common.paging.[DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging")

    `[BATCH_SIZE_FIELD_NAME](DataSubset.html#BATCH_SIZE_FIELD_NAME), [IDENTIFIERS_FIELD_NAME](DataSubset.html#IDENTIFIERS_FIELD_NAME), [LOCAL_PART](DataSubset.html#LOCAL_PART), [QNAME](DataSubset.html#QNAME), [RESULTS_FIELD_NAME](DataSubset.html#RESULTS_FIELD_NAME), [SORT_FIELD_NAME](DataSubset.html#SORT_FIELD_NAME), [START_INDEX_FIELD_NAME](DataSubset.html#START_INDEX_FIELD_NAME), [TOTAL_COUNT_FIELD_NAME](DataSubset.html#TOTAL_COUNT_FIELD_NAME), [XML_ROOT_ELEMENT](DataSubset.html#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypedValueDataSubset](#%3Cinit%3E\(\))()`

    `[TypedValueDataSubset](#%3Cinit%3E\(int,int,java.util.List,int,java.util.List,java.util.List\))(int startIndex, int batchSize, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")> sort, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")> identifiers)`

    `[TypedValueDataSubset](#%3Cinit%3E\(com.appiancorp.suiteapi.common.paging.PagingInfo,int,java.util.List,java.util.List\))([PagingInfo](PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")> identifiers)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[getData](#getData\(\))()`

    Returns the paged results.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[getIdentifiers](#getIdentifiers\(\))()`

    Returns the identifiers of the data in [`getData()`](#getData\(\)).

    `protected void`

    `[setData](#setData\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")> data)`

    Sets the paged results

    `protected void`

    `[setIdentifiers](#setIdentifiers\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")> identifiers)`

    Sets the the identifiers of the data in [`getData()`](#getData\(\)).

    ### Methods inherited from class com.appiancorp.suiteapi.common.paging.[DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging")

    `[getBatchSize](DataSubset.html#getBatchSize\(\)), [getSort](DataSubset.html#getSort\(\)), [getStartIndex](DataSubset.html#getStartIndex\(\)), [getTotalCount](DataSubset.html#getTotalCount\(\)), [multilineToString](DataSubset.html#multilineToString\(int\)), [multilineToStringHelper](DataSubset.html#multilineToStringHelper\(int\)), [toString](DataSubset.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TypedValueDataSubset

        public TypedValueDataSubset()

    -   ### TypedValueDataSubset

        public TypedValueDataSubset([PagingInfo](PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> identifiers)

    -   ### TypedValueDataSubset

        public TypedValueDataSubset(int startIndex, int batchSize, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> sort, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> identifiers)

-   ## Method Details

    -   ### getData

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> getData()

        Returns the paged results.

        Specified by:

        `[getData](DataSubset.html#getData\(\))` in class `[DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    -   ### getIdentifiers

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> getIdentifiers()

        Returns the identifiers of the data in [`getData()`](#getData\(\)). These are only unique if the underlying data source guarantees uniqueness.

        Specified by:

        `[getIdentifiers](DataSubset.html#getIdentifiers\(\))` in class `[DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    -   ### setData

        protected void setData([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> data)

        Sets the paged results

        Specified by:

        `[setData](DataSubset.html#setData\(java.util.List\))` in class `[DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Parameters:

        `data` - List of [`TypedValue`](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") results

    -   ### setIdentifiers

        protected void setIdentifiers([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> identifiers)

        Sets the the identifiers of the data in [`getData()`](#getData\(\)).

        Specified by:

        `[setIdentifiers](DataSubset.html#setIdentifiers\(java.util.List\))` in class `[DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Parameters:

        `identifiers` - List of [`TypedValue`](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") identifiers