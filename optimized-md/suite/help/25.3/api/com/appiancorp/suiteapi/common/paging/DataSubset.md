---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/paging/DataSubset.html
original_path: api/com/appiancorp/suiteapi/common/paging/DataSubset.html
version: "25.3"
title: "Class DataSubset<T,I>"
page_id: "api/com/appiancorp/suiteapi/common/paging/DataSubset"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common.paging](package-summary.html)

# Class DataSubset<T,I>

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.paging.DataSubset<T,I>

Type Parameters:

`T` - The type of the results accessible in [`getData()`](#getData\(\))

`I` - The type of the identifiers

Direct Known Subclasses:

`[ListViewDataSubset](../../../type/system/ListViewDataSubset.html "class in com.appiancorp.type.system")`, `[TypedValueDataSubset](TypedValueDataSubset.html "class in com.appiancorp.suiteapi.common.paging")`

* * *

public abstract class DataSubset<T,I> extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes. A view that holds a range of data ([`getData()`](#getData\(\))). If the results are part of larger set, [`getTotalCount()`](#getTotalCount\(\)) will be larger than the number of available results. The boundaries of the view, with respect to the larger set, can be retrieved from [`getStartIndex()`](#getStartIndex\(\)) and [`getBatchSize()`](#getBatchSize\(\)). The results are identified by [`getIdentifiers()`](#getIdentifiers\(\)), which should be either null or of the same size as [`getData()`](#getData\(\)). The identifiers are unique only when the underlying data source guarantees uniqueness.

To use this class in both expression functions and smart services, it's necessary to create a type that extends DataSubset and use the `XmlSeeAlso` annotation to specify the list of types (classes) that the result page may hold at runtime. It's not necessary to specify Java primitive wrappers or their array types nor it's necessary to list classes that can be statically reached from another type already included. The subclass must define both an `XmlType` and `XmlRootElement` annotations.

When subclasses are used as a parameter or return type in expression functions or smart services, it's recommended the [`Type`](../../type/Type.html "annotation interface in com.appiancorp.suiteapi.type") annotation value matches the one defined by [`QNAME`](#QNAME), not the one defined by the subclass, this is important if the subclass does not define extra fields since using will make the subclass appear as a generic [DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging") type to both expression functions and smart services, maximizing interoperability.

Any subclass of this should add the following Jaxb annotations:

-   Add `@XmlElement(type=Object.class, nillable=true, namespace="")` to [`getData()`](#getData\(\)) and [`getIdentifiers()`](#getIdentifiers\(\)) along with an `@XmlSeeAlso({T.class,I.class})` where T and I are the type parameters to this class.
-   Add `@XmlRootElement(namespace=Type.APPIAN_NAMESPACE, name=DataSubset.XML_ROOT_ELEMENT)` annotation to the class
-   Add `@XmlType(namespace=[Your Namespace], propOrder = {"startIndex", "batchSize", "sort", "totalCount", "data", "identifiers"})` annotation to the class
For Example:

 `@XmlRootElement(namespace=Type.APPIAN_NAMESPACE, name=DataSubset.XML_ROOT_ELEMENT)    @XmlType(namespace=[Your Namespace], propOrder = {"startIndex", "batchSize", "sort", "totalCount", "data", "identifiers"})    @XmlSeeAlso({Person.class,String.class})    public static class PersonDataSubset extends DataSubset<Person,String> {       private List<Person> data;      private List<String> identifiers;       public PersonDataSubset() {}       @Override      @XmlElement(type=Object.class, nillable=true, namespace="")      public List<Person> getData() {        return data;      }      @Override      @XmlElement(type=Object.class, nillable=true, namespace="")      public List<String> getIdentifiers() {        return identifiers;      }      @Override      protected void setData(List<Person> data) {        this.data = data;      }      @Override      protected void setIdentifiers(List<String> identifiers) {        this.identifiers = identifiers;      }    }`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[BATCH_SIZE_FIELD_NAME](#BATCH_SIZE_FIELD_NAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[IDENTIFIERS_FIELD_NAME](#IDENTIFIERS_FIELD_NAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[RESULTS_FIELD_NAME](#RESULTS_FIELD_NAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_FIELD_NAME](#SORT_FIELD_NAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[START_INDEX_FIELD_NAME](#START_INDEX_FIELD_NAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TOTAL_COUNT_FIELD_NAME](#TOTAL_COUNT_FIELD_NAME)`

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[XML_ROOT_ELEMENT](#XML_ROOT_ELEMENT)`

    This is both the XML type name and the UUID of the system record created from this Java class

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[DataSubset](#%3Cinit%3E\(\))()`

    `[DataSubset](#%3Cinit%3E\(int,int,java.util.List,int,java.util.List,java.util.List\))(int startIndex, int batchSize, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")> sort, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[T](DataSubset.html "type parameter in DataSubset")> results, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[I](DataSubset.html "type parameter in DataSubset")> identifiers)`

    Creates a view that holds a range of data.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[getBatchSize](#getBatchSize\(\))()`

    Returns the number of **requested** elements.

    `abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[T](DataSubset.html "type parameter in DataSubset")>`

    `[getData](#getData\(\))()`

    Returns the paged results.

    `abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[I](DataSubset.html "type parameter in DataSubset")>`

    `[getIdentifiers](#getIdentifiers\(\))()`

    Returns the identifiers of the data in [`getData()`](#getData\(\)).

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")>`

    `[getSort](#getSort\(\))()`

    Returns the sort expressions that have been applied to the data in [`getData()`](#getData\(\)).

    `int`

    `[getStartIndex](#getStartIndex\(\))()`

    Returns the start index of this paged result.

    `int`

    `[getTotalCount](#getTotalCount\(\))()`

    Returns the total number of results available in the data source.

    `static com.appian.core.base.ToStringFunction<? extends [DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging")>`

    `[multilineToString](#multilineToString\(int\))(int indent)`

    `protected com.appian.core.base.MultilineToStringHelper`

    `[multilineToStringHelper](#multilineToStringHelper\(int\))(int indent)`

    `protected abstract void`

    `[setData](#setData\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[T](DataSubset.html "type parameter in DataSubset")> data)`

    Sets the results

    `protected abstract void`

    `[setIdentifiers](#setIdentifiers\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[I](DataSubset.html "type parameter in DataSubset")> identifiers)`

    Sets the the identifiers of the data in [`getData()`](#getData\(\)).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### START\_INDEX\_FIELD\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") START\_INDEX\_FIELD\_NAME

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.DataSubset.START_INDEX_FIELD_NAME)

    -   ### BATCH\_SIZE\_FIELD\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") BATCH\_SIZE\_FIELD\_NAME

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.DataSubset.BATCH_SIZE_FIELD_NAME)

    -   ### SORT\_FIELD\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_FIELD\_NAME

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.DataSubset.SORT_FIELD_NAME)

    -   ### TOTAL\_COUNT\_FIELD\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TOTAL\_COUNT\_FIELD\_NAME

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.DataSubset.TOTAL_COUNT_FIELD_NAME)

    -   ### RESULTS\_FIELD\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") RESULTS\_FIELD\_NAME

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.DataSubset.RESULTS_FIELD_NAME)

    -   ### IDENTIFIERS\_FIELD\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") IDENTIFIERS\_FIELD\_NAME

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.DataSubset.IDENTIFIERS_FIELD_NAME)

    -   ### XML\_ROOT\_ELEMENT

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") XML\_ROOT\_ELEMENT

        This is both the XML type name and the UUID of the system record created from this Java class

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.DataSubset.XML_ROOT_ELEMENT)

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.DataSubset.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### DataSubset

        protected DataSubset()

    -   ### DataSubset

        public DataSubset(int startIndex, int batchSize, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> sort, int totalCount, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[T](DataSubset.html "type parameter in DataSubset")\> results, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[I](DataSubset.html "type parameter in DataSubset")\> identifiers)

        Creates a view that holds a range of data. identifiers must be either null or the same size as results.

        Parameters:

        `results` - the view of the data.

        `identifiers` - underlying data source identifiers. Unique only when the data source guarantees uniqueness

        `startIndex` - the beginning of the view

        `batchSize` - the "requested" number of results. The actual number of results may be less if the end of the underlying data is reached. A negative batchSize indicates that the maximum number of returned results was not limited.

        `totalCount` - total number of results available in the data source

        `sort` -

-   ## Method Details

    -   ### getStartIndex

        public int getStartIndex()

        Returns the start index of this paged result.

    -   ### getBatchSize

        public int getBatchSize()

        Returns the number of **requested** elements. The actual number of results in this paged result can be retrieved from [`getData()`](#getData\(\)). A negative batchSize indicates that the maximum number of returned results should not be limited.

    -   ### getTotalCount

        public int getTotalCount()

        Returns the total number of results available in the data source.

    -   ### getData

        public abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[T](DataSubset.html "type parameter in DataSubset")\> getData()

        Returns the paged results.

    -   ### getIdentifiers

        public abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[I](DataSubset.html "type parameter in DataSubset")\> getIdentifiers()

        Returns the identifiers of the data in [`getData()`](#getData\(\)). These are only unique if the underlying data source guarantees uniqueness.

    -   ### setData

        protected abstract void setData([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[T](DataSubset.html "type parameter in DataSubset")\> data)

        Sets the results

        Parameters:

        `data` - List of results

    -   ### setIdentifiers

        protected abstract void setIdentifiers([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[I](DataSubset.html "type parameter in DataSubset")\> identifiers)

        Sets the the identifiers of the data in [`getData()`](#getData\(\)).

        Parameters:

        `identifiers` - List of identifiers

    -   ### getSort

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> getSort()

        Returns the sort expressions that have been applied to the data in [`getData()`](#getData\(\)).

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### multilineToStringHelper

        protected com.appian.core.base.MultilineToStringHelper multilineToStringHelper(int indent)

    -   ### multilineToString

        public static com.appian.core.base.ToStringFunction<? extends [DataSubset](DataSubset.html "class in com.appiancorp.suiteapi.common.paging")\> multilineToString(int indent)