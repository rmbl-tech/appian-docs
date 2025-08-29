---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/type/system/TypedValueListView.html
original_path: api/com/appiancorp/type/system/TypedValueListView.html
version: "25.3"
---

Package [com.appiancorp.type.system](package-summary.html)

# Class TypedValueListView

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.type.system.ListView](ListView.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

com.appiancorp.type.system.TypedValueListView

* * *

@GwtCompatible public class TypedValueListView extends [ListView](ListView.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

A ListView where the ListViewDataSubset contains results with [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") identifiers, and the Facet values are TypedValue objects.

A TypedValueListView can be constructed with a ListViewDataSubset and a list of Facet objects, although the list of Facet objects is not required.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [ListView](ListView.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[EMPTY](#EMPTY)`

    ### Fields inherited from class com.appiancorp.type.system.[ListView](ListView.html "class in com.appiancorp.type.system")

    `[LOCAL_PART](ListView.html#LOCAL_PART), [QNAME](ListView.html#QNAME), [XML_ROOT_ELEMENT](ListView.html#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypedValueListView](#%3Cinit%3E\(com.appiancorp.type.system.ListViewDataSubset\))([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")> dataSubset)`

    The identifiers of the ListViewDataSubset must be [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") objects.

    `[TypedValueListView](#%3Cinit%3E\(com.appiancorp.type.system.ListViewDataSubset,java.util.List\))([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")> dataSubset, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> facets)`

    The identifiers of the ListViewDatSubset must be [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") objects.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[getDataSubset](#getDataSubset\(\))()`

    Returns the [`ListViewDataSubset`](ListViewDataSubset.html "class in com.appiancorp.type.system").

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>>`

    `[getFacets](#getFacets\(\))()`

    Returns the facets that are applicable to the current (possibly filtered) data set.

    `protected void`

    `[setDataSubset](#setDataSubset\(com.appiancorp.type.system.ListViewDataSubset\))([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")> dataSubset)`

    `protected void`

    `[setFacets](#setFacets\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> facets)`

    ### Methods inherited from class com.appiancorp.type.system.[ListView](ListView.html "class in com.appiancorp.type.system")

    `[equalDataCheck](ListView.html#equalDataCheck\(\)), [multilineToString](ListView.html#multilineToString\(int\)), [toString](ListView.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### EMPTY

        public static final [ListView](ListView.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> EMPTY

-   ## Constructor Details

    -   ### TypedValueListView

        public TypedValueListView([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> dataSubset, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> facets)

        The identifiers of the ListViewDatSubset must be [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") objects.

        Parameters:

        `dataSubset` -

        `facets` -

    -   ### TypedValueListView

        public TypedValueListView([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> dataSubset)

        The identifiers of the ListViewDataSubset must be [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") objects.

        Parameters:

        `dataSubset` -

-   ## Method Details

    -   ### getDataSubset

        public [ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> getDataSubset()

        Returns the [`ListViewDataSubset`](ListViewDataSubset.html "class in com.appiancorp.type.system"). The identifiers of the ListViewDataSubset will be [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") objects.

        Specified by:

        `[getDataSubset](ListView.html#getDataSubset\(\))` in class `[ListView](ListView.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Returns:

        the ListViewDataSubset

    -   ### setDataSubset

        protected void setDataSubset([ListViewDataSubset](ListViewDataSubset.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> dataSubset)

        Specified by:

        `[setDataSubset](ListView.html#setDataSubset\(com.appiancorp.type.system.ListViewDataSubset\))` in class `[ListView](ListView.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    -   ### getFacets

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> getFacets()

        Returns the facets that are applicable to the current (possibly filtered) data set. The order is significant -- facets that are most relevant for an end user come first. The Facet values will be [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") objects.

        Specified by:

        `[getFacets](ListView.html#getFacets\(\))` in class `[ListView](ListView.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Returns:

        the list of Facets

    -   ### setFacets

        protected void setFacets([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](../../common/query/Facet.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> facets)

        Specified by:

        `[setFacets](ListView.html#setFacets\(java.util.List\))` in class `[ListView](ListView.html "class in com.appiancorp.type.system")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type"),[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`