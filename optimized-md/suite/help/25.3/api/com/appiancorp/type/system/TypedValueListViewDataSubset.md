---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/type/system/TypedValueListViewDataSubset.html
original_path: api/com/appiancorp/type/system/TypedValueListViewDataSubset.html
version: "25.3"
---

Package [com.appiancorp.type.system](package-summary.html)

# Class TypedValueListViewDataSubset

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.paging.DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system"),I>

[com.appiancorp.type.system.ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

com.appiancorp.type.system.TypedValueListViewDataSubset

* * *

@GwtCompatible public class TypedValueListViewDataSubset extends [ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

A [`ListViewDataSubset`](ListViewDataSubset.html "class in com.appiancorp.type.system") where the result identifiers are [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") objects.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [TypedValueListViewDataSubset](TypedValueListViewDataSubset.html "class in com.appiancorp.type.system")`

    `[EMPTY](#EMPTY)`

    ### Fields inherited from class com.appiancorp.type.system.[ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")

    `[QNAME](ListViewDataSubset.html#QNAME), [XML_ROOT_ELEMENT](ListViewDataSubset.html#XML_ROOT_ELEMENT)`

    ### Fields inherited from class com.appiancorp.suiteapi.common.paging.[DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")

    `[BATCH_SIZE_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#BATCH_SIZE_FIELD_NAME), [IDENTIFIERS_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#IDENTIFIERS_FIELD_NAME), [RESULTS_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#RESULTS_FIELD_NAME), [SORT_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#SORT_FIELD_NAME), [START_INDEX_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#START_INDEX_FIELD_NAME), [TOTAL_COUNT_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#TOTAL_COUNT_FIELD_NAME)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypedValueListViewDataSubset](#%3Cinit%3E\(int,int,java.util.List,int,java.util.List,java.util.List,java.util.List\))(int startIndex, int batchSize, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")> sort, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")> ids, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AppianError](../../exceptions/AppianError.html "class in com.appiancorp.exceptions")> errors)`

    Constructs a TypedValueListViewDataSubset using the given start index, batch size, list of sort information, the total number of results, the list of results, the underlying data source identifiers, and any errors that were collected while building this DataSubset.

    `[TypedValueListViewDataSubset](#%3Cinit%3E\(com.appiancorp.suiteapi.common.paging.PagingInfo,int,java.util.List,java.util.List,java.util.List\))([PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")> ids, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AppianError](../../exceptions/AppianError.html "class in com.appiancorp.exceptions")> errors)`

    The identifiers in a TypedValueListViewDataSubset will be [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") objects.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[getIdentifiers](#getIdentifiers\(\))()`

    Returns the identifiers of the data in [`ListViewDataSubset.getData()`](ListViewDataSubset.html#getData\(\)).

    `protected void`

    `[setIdentifiers](#setIdentifiers\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")> identifiers)`

    Sets the the identifiers of the data in [`DataSubset.getData()`](../../suiteapi/common/paging/DataSubset.html#getData\(\)).

    ### Methods inherited from class com.appiancorp.type.system.[ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")

    `[equalDataCheck](ListViewDataSubset.html#equalDataCheck\(\)), [getData](ListViewDataSubset.html#getData\(\)), [getErrors](ListViewDataSubset.html#getErrors\(\)), [multilineToString](ListViewDataSubset.html#multilineToString\(int\)), [multilineToStringHelper](ListViewDataSubset.html#multilineToStringHelper\(int\)), [setData](ListViewDataSubset.html#setData\(java.util.List\)), [toString](ListViewDataSubset.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.paging.[DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")

    `[getBatchSize](../../suiteapi/common/paging/DataSubset.html#getBatchSize\(\)), [getSort](../../suiteapi/common/paging/DataSubset.html#getSort\(\)), [getStartIndex](../../suiteapi/common/paging/DataSubset.html#getStartIndex\(\)), [getTotalCount](../../suiteapi/common/paging/DataSubset.html#getTotalCount\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### EMPTY

        public static final [TypedValueListViewDataSubset](TypedValueListViewDataSubset.html "class in com.appiancorp.type.system") EMPTY

-   ## Constructor Details

    -   ### TypedValueListViewDataSubset

        public TypedValueListViewDataSubset([PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")\> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> ids, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AppianError](../../exceptions/AppianError.html "class in com.appiancorp.exceptions")\> errors)

        The identifiers in a TypedValueListViewDataSubset will be [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") objects.

        Parameters:

        `pagingInfo` - the [`PagingInfo`](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") used to specific the start and size of the view

        `totalCount` - the total number of results available

        `data` - the list of results

        `ids` - the underlying data source identifiers

        `errors` - errors that were collected while building this DataSubset

    -   ### TypedValueListViewDataSubset

        public TypedValueListViewDataSubset(int startIndex, int batchSize, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> sort, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")\> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> ids, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AppianError](../../exceptions/AppianError.html "class in com.appiancorp.exceptions")\> errors)

        Constructs a TypedValueListViewDataSubset using the given start index, batch size, list of sort information, the total number of results, the list of results, the underlying data source identifiers, and any errors that were collected while building this DataSubset.

        Parameters:

        `startIndex` - the beginning of the view

        `batchSize` - the request number of results

        `sort` - a list of SortInfo

        `totalCount` - the total number of results available

        `data` - the list of results

        `ids` - the underlying data source identifiers

        `errors` - errors that were collected while building this DataSubset

-   ## Method Details

    -   ### getIdentifiers

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> getIdentifiers()

        Returns the identifiers of the data in [`ListViewDataSubset.getData()`](ListViewDataSubset.html#getData\(\)). These are only unique if the underlying data source guarantees uniqueness.

        Specified by:

        `[getIdentifiers](../../suiteapi/common/paging/DataSubset.html#getIdentifiers\(\))` in class `[DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system"),[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Returns:

        the identifiers of the data in the DataSubset

    -   ### setIdentifiers

        protected void setIdentifiers([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> identifiers)

        Description copied from class: `[DataSubset](../../suiteapi/common/paging/DataSubset.html#setIdentifiers\(java.util.List\))`

        Sets the the identifiers of the data in [`DataSubset.getData()`](../../suiteapi/common/paging/DataSubset.html#getData\(\)).

        Specified by:

        `[setIdentifiers](../../suiteapi/common/paging/DataSubset.html#setIdentifiers\(java.util.List\))` in class `[DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system"),[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Parameters:

        `identifiers` - List of identifiers