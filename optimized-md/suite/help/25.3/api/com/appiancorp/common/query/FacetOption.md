---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/FacetOption.html
original_path: api/com/appiancorp/common/query/FacetOption.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class FacetOption<T>

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.FacetOption<T>

Type Parameters:

`T` - the type of values in the facet option filters

All Implemented Interfaces:

`com.appiancorp.common.query.ReadOnlyFacetOption`

Direct Known Subclasses:

`[GenericFacetOption](GenericFacetOption.html "class in com.appiancorp.common.query")`, `[TypedValueFacetOption](TypedValueFacetOption.html "class in com.appiancorp.common.query")`

* * *

@GwtCompatible public abstract class FacetOption<T> extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.common.query.ReadOnlyFacetOption

This class holds the metadata for an individual option for a [`facet`](Facet.html "class in com.appiancorp.common.query"). The key piece of metadata of a facet option is the filters that should be applied when that facet is selected. For example:

-   a "Color" facet could have the option "Black" which specifies a single filter: `color = black`
-   a "Closing Date" facet could have the option "1st Quarter" which specifies the filters: `closingDate >= 2012-01-01` and `closingDate < 2012-04-01`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[COUNT_NOT_AVAILABLE](#COUNT_NOT_AVAILABLE)`

    The value used when a count is not available.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[XML_ROOT_ELEMENT](#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[FacetOption](#%3Cinit%3E\(\))()`

    Default constructor, provided only for JAXB serialization.

    `protected`

    `[FacetOption](#%3Cinit%3E\(java.lang.String,java.lang.String,java.util.List\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[T](FacetOption.html "type parameter in FacetOption")>> filters)`

    Constructs a new facet option.

    `protected`

    `[FacetOption](#%3Cinit%3E\(java.lang.String,java.lang.String,java.util.List,boolean,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[T](FacetOption.html "type parameter in FacetOption")>> filters, boolean isApplied, int dataCount)`

    Constructs a new facet option.

    `protected`

    `[FacetOption](#%3Cinit%3E\(java.lang.String,java.util.List,boolean,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[T](FacetOption.html "type parameter in FacetOption")>> filters, boolean isApplied, int dataCount)`

    This is for creating a facet using design time data (a facet that does not yet have an ID since it has not been persisted).

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static com.google.common.base.Equivalence<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<?>>`

    `[equalDataCheck](#equalDataCheck\(\))()`

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Compares the given object by checking that it's an instance of [`FacetOption`](FacetOption.html "class in com.appiancorp.common.query") and has the same [`id`](#getId\(\)) as this option.

    `static <T> [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<T>>`

    `[getAppliedOptions](#getAppliedOptions\(java.lang.Iterable\))([Iterable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Iterable.html "class or interface in java.lang")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<T>> opts)`

    Returns a subset of the given options which are the applied options (ie, options whose [`isApplied`](#isApplied\(\)) property is set to `true`).

    `int`

    `[getDataCount](#getDataCount\(\))()`

    `abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[T](FacetOption.html "type parameter in FacetOption")>>`

    `[getFilters](#getFilters\(\))()`

    `abstract [Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[getFiltersAsCriteria](#getFiltersAsCriteria\(\))()`

    `com.google.common.collect.ImmutableList<com.appiancorp.common.query.ReadOnlyFilter>`

    `[getFiltersReadOnly](#getFiltersReadOnly\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns a hash code that uses the [`id`](#getId\(\)) property only.

    `boolean`

    `[isApplied](#isApplied\(\))()`

    Indicates whether the filters of this option are applied to the current data set.

    `static com.google.common.base.Predicate<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<?>>`

    `[isAppliedPredicate](#isAppliedPredicate\(\))()`

    `void`

    `[setApplied](#setApplied\(boolean\))(boolean isApplied)`

    Sets whether this option is selected or not.

    `void`

    `[setDataCount](#setDataCount\(int\))(int dataCount)`

    Sets the number of objects whose data matches the filters of this option.

    `protected abstract void`

    `[setFilters](#setFilters\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[T](FacetOption.html "type parameter in FacetOption")>> filters)`

    Sets the list of filters to add to a query when this option is selected.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### XML\_ROOT\_ELEMENT

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") XML\_ROOT\_ELEMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.FacetOption.XML_ROOT_ELEMENT)

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.FacetOption.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

    -   ### COUNT\_NOT\_AVAILABLE

        public static final int COUNT\_NOT\_AVAILABLE

        The value used when a count is not available. For example, see [`getDataCount()`](#getDataCount\(\)), [`Facet.getOmittedOptionsDataCount()`](Facet.html#getOmittedOptionsDataCount\(\)), etc.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.FacetOption.COUNT_NOT_AVAILABLE)

-   ## Constructor Details

    -   ### FacetOption

        protected FacetOption()

        Default constructor, provided only for JAXB serialization. Sub-classes should not expose a public default constructor.

    -   ### FacetOption

        protected FacetOption([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[T](FacetOption.html "type parameter in FacetOption")\>> filters)

        Constructs a new facet option. The [`isApplied`](#isApplied\(\)) property is set to `false`, and the [`dataCount`](#getDataCount\(\)) property is set to [`COUNT_NOT_AVAILABLE`](#COUNT_NOT_AVAILABLE).

        Parameters:

        `id` - the id of this option

        `name` - the name of this option

        `filters` - the list of filters to add to a query when this option is selected

    -   ### FacetOption

        protected FacetOption([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[T](FacetOption.html "type parameter in FacetOption")\>> filters, boolean isApplied, int dataCount)

        Constructs a new facet option.

        Parameters:

        `id` - the id of this option

        `name` - the name of this option

        `filters` - the list of filters to add to a query when this option is selected

        `isApplied` - whether this option is selected or not

        `dataCount` - the number of objects whose data matches the filters of this option

    -   ### FacetOption

        protected FacetOption([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[T](FacetOption.html "type parameter in FacetOption")\>> filters, boolean isApplied, int dataCount)

        This is for creating a facet using design time data (a facet that does not yet have an ID since it has not been persisted). This is necessary to show designers the performance of their record types using changes they have not yet saved.

        Parameters:

        `name` - the name of this option

        `filters` - the list of filters to add to a query when this option is selected

        `isApplied` - whether this option is selected or not

        `dataCount` - the number of objects whose data matches the filters of this option

-   ## Method Details

    -   ### getId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getId()

        Specified by:

        `getId` in interface `com.appiancorp.common.query.ReadOnlyFacetOption<[T](FacetOption.html "type parameter in FacetOption")>`

        Returns:

        The id of this option.

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Specified by:

        `getName` in interface `com.appiancorp.common.query.ReadOnlyFacetOption<[T](FacetOption.html "type parameter in FacetOption")>`

        Returns:

        The name of this option.

    -   ### isApplied

        public boolean isApplied()

        Indicates whether the filters of this option are applied to the current data set.

        Specified by:

        `isApplied` in interface `com.appiancorp.common.query.ReadOnlyFacetOption<[T](FacetOption.html "type parameter in FacetOption")>`

        Returns:

        `true` if this option is applied and `false` otherwise.

    -   ### setApplied

        public void setApplied(boolean isApplied)

        Sets whether this option is selected or not.

        Parameters:

        `isApplied` - `true` if this option is applied and `false` otherwise.

    -   ### getDataCount

        public int getDataCount()

        Specified by:

        `getDataCount` in interface `com.appiancorp.common.query.ReadOnlyFacetOption<[T](FacetOption.html "type parameter in FacetOption")>`

        Returns:

        The number of objects whose data matches the filters of this option. If this number is not available, returns [`COUNT_NOT_AVAILABLE`](#COUNT_NOT_AVAILABLE).

    -   ### setDataCount

        public void setDataCount(int dataCount)

        Sets the number of objects whose data matches the filters of this option.

        Parameters:

        `dataCount` - the number of objects whose data for this facet matches this option

    -   ### getFilters

        public abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[T](FacetOption.html "type parameter in FacetOption")\>> getFilters()

        Returns:

        The list of filters to add to a query when this option is selected.

    -   ### getFiltersReadOnly

        public com.google.common.collect.ImmutableList<com.appiancorp.common.query.ReadOnlyFilter> getFiltersReadOnly()

        Specified by:

        `getFiltersReadOnly` in interface `com.appiancorp.common.query.ReadOnlyFacetOption<[T](FacetOption.html "type parameter in FacetOption")>`

    -   ### setFilters

        protected abstract void setFilters([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Filter](Filter.html "class in com.appiancorp.common.query")<[T](FacetOption.html "type parameter in FacetOption")\>> filters)

        Sets the list of filters to add to a query when this option is selected.

        Parameters:

        `filters` - the list of filters

    -   ### getFiltersAsCriteria

        public abstract [Criteria](Criteria.html "interface in com.appiancorp.common.query") getFiltersAsCriteria()

        Specified by:

        `getFiltersAsCriteria` in interface `com.appiancorp.common.query.ReadOnlyFacetOption<[T](FacetOption.html "type parameter in FacetOption")>`

        Returns:

        This option's filters wrapped in a criteria if needed.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Returns a hash code that uses the [`id`](#getId\(\)) property only.

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Compares the given object by checking that it's an instance of [`FacetOption`](FacetOption.html "class in com.appiancorp.common.query") and has the same [`id`](#getId\(\)) as this option.

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equalDataCheck

        public static com.google.common.base.Equivalence<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<?>> equalDataCheck()

        Returns:

        An equivalence implementation that checks all properties of [`FacetOption`](FacetOption.html "class in com.appiancorp.common.query").

    -   ### isAppliedPredicate

        public static com.google.common.base.Predicate<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<?>> isAppliedPredicate()

        Returns:

        A predicate that returns `true` if the given option's [`isApplied()`](#isApplied\(\)) property is `true`, and `false` otherwise.

    -   ### getAppliedOptions

        public static <T> [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<T>> getAppliedOptions([Iterable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Iterable.html "class or interface in java.lang")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<T>> opts)

        Returns a subset of the given options which are the applied options (ie, options whose [`isApplied`](#isApplied\(\)) property is set to `true`).

        Parameters:

        `opts` - the options to filter

        Returns:

        the enabled options