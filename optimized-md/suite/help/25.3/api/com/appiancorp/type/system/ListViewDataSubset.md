---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/type/system/ListViewDataSubset.html
original_path: api/com/appiancorp/type/system/ListViewDataSubset.html
version: "25.3"
---

Package [com.appiancorp.type.system](package-summary.html)

# Class ListViewDataSubset<I>

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.paging.DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system"),I>

com.appiancorp.type.system.ListViewDataSubset<I>

Type Parameters:

`I` - identifiers

Direct Known Subclasses:

`[TypedValueListViewDataSubset](TypedValueListViewDataSubset.html "class in com.appiancorp.type.system")`

* * *

@GwtCompatible public abstract class ListViewDataSubset<I> extends [DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system"),I>

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

A ListViewDataSubset is a [`DataSubset`](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging") designed specifically to be used with [`ListView`](ListView.html "class in com.appiancorp.type.system") objects. The items in the `data` field of a ListViewDataSubset are of type [`ListViewItem`](ListViewItem.html "class in com.appiancorp.type.system").

Any subclass of this should add the following Jaxb annotations:

-   Add `@XmlElement(type=Object.class, nillable=true, namespace="")` [`DataSubset.getIdentifiers()`](../../suiteapi/common/paging/DataSubset.html#getIdentifiers\(\)) along with an `@XmlSeeAlso(I.class)` where I is the type parameter to this class.
-   Add `@XmlRootElement(namespace=Type.APPIAN_NAMESPACE, name=ListViewDataSubset.XML_ROOT_ELEMENT)` annotation to the class
-   Add `@XmlType(namespace=[Your Namespace], propOrder = {"startIndex", "batchSize", "sort", "totalCount", "data", "identifiers", "errors"})` annotation to the class

See also the code example in [`DataSubset`](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[XML_ROOT_ELEMENT](#XML_ROOT_ELEMENT)`

    ### Fields inherited from class com.appiancorp.suiteapi.common.paging.[DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")

    `[BATCH_SIZE_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#BATCH_SIZE_FIELD_NAME), [IDENTIFIERS_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#IDENTIFIERS_FIELD_NAME), [RESULTS_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#RESULTS_FIELD_NAME), [SORT_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#SORT_FIELD_NAME), [START_INDEX_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#START_INDEX_FIELD_NAME), [TOTAL_COUNT_FIELD_NAME](../../suiteapi/common/paging/DataSubset.html#TOTAL_COUNT_FIELD_NAME)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[ListViewDataSubset](#%3Cinit%3E\(\))()`

    `[ListViewDataSubset](#%3Cinit%3E\(int,int,java.util.List,int,java.util.List,java.util.List,java.util.List\))(int startIndex, int batchSize, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")> sort, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[I](ListViewDataSubset.html "type parameter in ListViewDataSubset")> ids, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AppianError](../../exceptions/AppianError.html "class in com.appiancorp.exceptions")> errors)`

    Same as other constructor except the paging information is broken out into separate parameters

    `[ListViewDataSubset](#%3Cinit%3E\(com.appiancorp.suiteapi.common.paging.PagingInfo,int,java.util.List,java.util.List,java.util.List\))([PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[I](ListViewDataSubset.html "type parameter in ListViewDataSubset")> ids, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AppianError](../../exceptions/AppianError.html "class in com.appiancorp.exceptions")> errors)`

    Constructs a ListViewDataSubset using the given paging information, the total number of results, the list of results, the underlying data source identifiers, and the list of errors collected while building this datasubset.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static com.google.common.base.Equivalence<[ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<?>>`

    `[equalDataCheck](#equalDataCheck\(\))()`

    Returns an Equivalence object that can be used to determine if two ListViewDataSubset objects are equal.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")>`

    `[getData](#getData\(\))()`

    Returns the paged results.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AppianError](../../exceptions/AppianError.html "class in com.appiancorp.exceptions")>`

    `[getErrors](#getErrors\(\))()`

    Returns the list of errors generated while building this ListViewDataSubset

    `static com.appian.core.base.ToStringFunction<[ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")>`

    `[multilineToString](#multilineToString\(int\))(int indent)`

    Returns a `ToStringFunction` that can be used to generate the multiline String representation of a ListViewDataSubset

    `protected com.appian.core.base.MultilineToStringHelper`

    `[multilineToStringHelper](#multilineToStringHelper\(int\))(int indent)`

    `protected void`

    `[setData](#setData\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")> data)`

    Sets the results

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.common.paging.[DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")

    `[getBatchSize](../../suiteapi/common/paging/DataSubset.html#getBatchSize\(\)), [getIdentifiers](../../suiteapi/common/paging/DataSubset.html#getIdentifiers\(\)), [getSort](../../suiteapi/common/paging/DataSubset.html#getSort\(\)), [getStartIndex](../../suiteapi/common/paging/DataSubset.html#getStartIndex\(\)), [getTotalCount](../../suiteapi/common/paging/DataSubset.html#getTotalCount\(\)), [setIdentifiers](../../suiteapi/common/paging/DataSubset.html#setIdentifiers\(java.util.List\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### XML\_ROOT\_ELEMENT

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") XML\_ROOT\_ELEMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.type.system.ListViewDataSubset.XML_ROOT_ELEMENT)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### ListViewDataSubset

        protected ListViewDataSubset()

    -   ### ListViewDataSubset

        public ListViewDataSubset([PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")\> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[I](ListViewDataSubset.html "type parameter in ListViewDataSubset")\> ids, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AppianError](../../exceptions/AppianError.html "class in com.appiancorp.exceptions")\> errors)

        Constructs a ListViewDataSubset using the given paging information, the total number of results, the list of results, the underlying data source identifiers, and the list of errors collected while building this datasubset. The list of results must be a list of [`ListViewItem`](ListViewItem.html "class in com.appiancorp.type.system") objects.

        Parameters:

        `pagingInfo` - the paging constraints and sorting info applied to this result

        `totalCount` - the total number of items available as the result, which may be greater than the number of items returned in this data subset

        `data` - the list of items

        `ids` - a parallel list of identifiers for the items

        `errors` - a parallel list of errors that should be returned instead of the corresponding item, place a null in the corresponding list position to indicate no error; leave entire list null if there are no errors

    -   ### ListViewDataSubset

        public ListViewDataSubset(int startIndex, int batchSize, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> sort, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")\> data, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[I](ListViewDataSubset.html "type parameter in ListViewDataSubset")\> ids, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AppianError](../../exceptions/AppianError.html "class in com.appiancorp.exceptions")\> errors)

        Same as other constructor except the paging information is broken out into separate parameters

-   ## Method Details

    -   ### getErrors

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AppianError](../../exceptions/AppianError.html "class in com.appiancorp.exceptions")\> getErrors()

        Returns the list of errors generated while building this ListViewDataSubset

        Returns:

        the list of errors generated while building this ListViewDataSubset

    -   ### getData

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")\> getData()

        Returns the paged results.

        Specified by:

        `[getData](../../suiteapi/common/paging/DataSubset.html#getData\(\))` in class `[DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system"),[I](ListViewDataSubset.html "type parameter in ListViewDataSubset")>`

        Returns:

        the page results

    -   ### setData

        protected void setData([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")\> data)

        Description copied from class: `[DataSubset](../../suiteapi/common/paging/DataSubset.html#setData\(java.util.List\))`

        Sets the results

        Specified by:

        `[setData](../../suiteapi/common/paging/DataSubset.html#setData\(java.util.List\))` in class `[DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system"),[I](ListViewDataSubset.html "type parameter in ListViewDataSubset")>`

        Parameters:

        `data` - List of results

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](../../suiteapi/common/paging/DataSubset.html#toString\(\))` in class `[DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system"),[I](ListViewDataSubset.html "type parameter in ListViewDataSubset")>`

    -   ### multilineToStringHelper

        protected com.appian.core.base.MultilineToStringHelper multilineToStringHelper(int indent)

        Overrides:

        `[multilineToStringHelper](../../suiteapi/common/paging/DataSubset.html#multilineToStringHelper\(int\))` in class `[DataSubset](../../suiteapi/common/paging/DataSubset.html "class in com.appiancorp.suiteapi.common.paging")<[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system"),[I](ListViewDataSubset.html "type parameter in ListViewDataSubset")>`

    -   ### multilineToString

        public static com.appian.core.base.ToStringFunction<[ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")\> multilineToString(int indent)

        Returns a `ToStringFunction` that can be used to generate the multiline String representation of a ListViewDataSubset

        Parameters:

        `indent` - - number of spaces to increment each level of indentation

        Returns:

        a ToStringFunction object to get the multiline string representation of a ListViewDataSubset

    -   ### equalDataCheck

        public static com.google.common.base.Equivalence<[ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<?>> equalDataCheck()

        Returns an Equivalence object that can be used to determine if two ListViewDataSubset objects are equal. This Equivalence objects equivalent(ListViewDataSubset lvds1, ListViewDataSubset lvds2) should be used instead of equals().

        Returns:

        an Equivalent object that can be used to determine if ListViewDataSubsets are equivalent