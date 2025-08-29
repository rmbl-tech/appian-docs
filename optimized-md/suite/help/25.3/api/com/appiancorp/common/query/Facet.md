---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/Facet.html
original_path: api/com/appiancorp/common/query/Facet.html
version: "25.3"
title: "Class Facet<T>"
page_id: "api/com/appiancorp/common/query/Facet"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class Facet<T>

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.Facet<T>

Type Parameters:

`T` - the type of values in the facet option filters

All Implemented Interfaces:

`com.appiancorp.common.query.ReadOnlyFacet<T>`

Direct Known Subclasses:

`[GenericFacet](GenericFacet.html "class in com.appiancorp.common.query")`, `[TypedValueFacet](TypedValueFacet.html "class in com.appiancorp.common.query")`

* * *

@GwtCompatible public abstract class Facet<T> extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.common.query.ReadOnlyFacet<T>

This class holds the metadata for a facet and its options. For example, a Car record could have a Color facet with the options Black, White, Silver.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DEFAULT_OPTION](#DEFAULT_OPTION)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    `static final boolean`

    `[VISIBLE_BY_DEFAULT](#VISIBLE_BY_DEFAULT)`

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[XML_ROOT_ELEMENT](#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[Facet](#%3Cinit%3E\(\))()`

    Default constructor, provided only for JAXB serialization.

    `protected`

    `[Facet](#%3Cinit%3E\(java.lang.String,boolean,java.lang.String,java.util.List,int,int,boolean,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)`

    Constructs a new facet.

    `protected`

    `[Facet](#%3Cinit%3E\(java.lang.String,boolean,java.lang.String,java.util.List,java.util.List,int,int,boolean,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> defaultOptions, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static com.google.common.base.Equivalence<[Facet](Facet.html "class in com.appiancorp.common.query")<?>>`

    `[equalDataCheck](#equalDataCheck\(\))()`

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Compares the given object by checking that it's an instance of [`Facet`](Facet.html "class in com.appiancorp.common.query") and has the same [`name`](#getName\(\)) as this facet.

    `[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")>`

    `[findOptionById](#findOptionById\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetOptionId)`

    Finds an option by id.

    `static <T> [FacetOption](FacetOption.html "class in com.appiancorp.common.query")<T>`

    `[findOptionById](#findOptionById\(java.util.List,java.lang.String\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](Facet.html "class in com.appiancorp.common.query")<T>> facets, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetOptionId)`

    Finds the first matching option by id, within the options of the given facets.

    `com.appiancorp.common.query.ReadOnlyFacetOption<[T](Facet.html "type parameter in Facet")>`

    `[findOptionByIdReadOnly](#findOptionByIdReadOnly\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetOptionId)`

    `static <T> com.appiancorp.common.query.ReadOnlyFacetOption<T>`

    `[findOptionByIdReadOnly](#findOptionByIdReadOnly\(java.util.List,java.lang.String\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<com.appiancorp.common.query.ReadOnlyFacet<T>> facets, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetOptionId)`

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")>>`

    `[getAppliedOptions](#getAppliedOptions\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDefaultOption](#getDefaultOption\(\))()`

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getDefaultOptions](#getDefaultOptions\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFacetType](#getFacetType\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    `int`

    `[getNumOmittedOptions](#getNumOmittedOptions\(\))()`

    `int`

    `[getOmittedOptionsDataCount](#getOmittedOptionsDataCount\(\))()`

    `abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")>>`

    `[getOptions](#getOptions\(\))()`

    `com.google.common.collect.ImmutableList<com.appiancorp.common.query.ReadOnlyFacetOption<[T](Facet.html "type parameter in Facet")>>`

    `[getOptionsReadOnly](#getOptionsReadOnly\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getSourceRef](#getSourceRef\(\))()`

    `int`

    `[getTotalNumOptions](#getTotalNumOptions\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns a hash code that uses the [`name`](#getName\(\)) property only.

    `boolean`

    `[isExclusiveOptions](#isExclusiveOptions\(\))()`

    `boolean`

    `[isVisible](#isVisible\(\))()`

    `static com.appian.core.base.ToStringFunction<[Facet](Facet.html "class in com.appiancorp.common.query")<?>>`

    `[multilineToString](#multilineToString\(int\))(int indent)`

    Returns a function that generates a multi-line String representation of a facet.

    `void`

    `[setAppliedOptions](#setAppliedOptions\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") appliedCriteria)`

    Sets the [`isApplied`](FacetOption.html#isApplied\(\)) property on the options of this facet, based on the given query criteria.

    `static <T> void`

    `[setAppliedOptions](#setAppliedOptions\(java.lang.Iterable,com.appiancorp.common.query.Criteria\))([Iterable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Iterable.html "class or interface in java.lang")<[Facet](Facet.html "class in com.appiancorp.common.query")<T>> facets, [Criteria](Criteria.html "interface in com.appiancorp.common.query") appliedCriteria)`

    Sets the [`isApplied`](FacetOption.html#isApplied\(\)) property on the appropriate options of the given facets, using [`setAppliedOptions(Criteria)`](#setAppliedOptions\(com.appiancorp.common.query.Criteria\)).

    `protected abstract void`

    `[setOptions](#setOptions\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")>> options)`

    Sets the options for this facet.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### XML\_ROOT\_ELEMENT

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") XML\_ROOT\_ELEMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.Facet.XML_ROOT_ELEMENT)

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.Facet.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

    -   ### DEFAULT\_OPTION

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DEFAULT\_OPTION

    -   ### VISIBLE\_BY\_DEFAULT

        public static final boolean VISIBLE\_BY\_DEFAULT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.Facet.VISIBLE_BY_DEFAULT)

-   ## Constructor Details

    -   ### Facet

        protected Facet()

        Default constructor, provided only for JAXB serialization. Sub-classes should not expose a public default constructor.

    -   ### Facet

        protected Facet([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")\>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)

        Constructs a new facet.

        Parameters:

        `name` - The name of the facet.

        `options` - The list of options for this facet.

        `isVisible` - Whether or not the facet will appear to the user.

        `defaultOption` - The defaultOption to be applied.

        `numOmittedOptions` - The number of additional options that are available, but are not included in the provided list of options.

        `omittedOptionsDataCount` - The number of objects that contain data matched by the omitted options. This allows the UI to present the generic option "Other" along with a count.

        `isExclusiveOptions` - Whether this facet's options are exclusive or not. See [`isExclusiveOptions()`](#isExclusiveOptions\(\)).

        `facetType` - Type of the facet (whether it is List or DateRange)

        `sourceRef` - Name of the field (of the record), on which the filter is applied.

    -   ### Facet

        protected Facet([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> defaultOptions, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")\>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)

-   ## Method Details

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Specified by:

        `getName` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

        Returns:

        The name of this facet.

    -   ### isVisible

        public boolean isVisible()

        Specified by:

        `isVisible` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

        Returns:

        whether or not this facet should be displayed to the user.

    -   ### getDefaultOption

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDefaultOption()

        Specified by:

        `getDefaultOption` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

        Returns:

        the default applied option for the facet.

    -   ### getDefaultOptions

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getDefaultOptions()

        Specified by:

        `getDefaultOptions` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

    -   ### getNumOmittedOptions

        public int getNumOmittedOptions()

        Specified by:

        `getNumOmittedOptions` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

        Returns:

        The number of options that exist, but are not included in [`the list of options`](#getOptions\(\)). If this number is not available, returns [`FacetOption.COUNT_NOT_AVAILABLE`](FacetOption.html#COUNT_NOT_AVAILABLE).

    -   ### getTotalNumOptions

        public int getTotalNumOptions()

        Returns:

        The number of [`options`](#getOptions\(\)) plus the number of [`omitted options`](#getNumOmittedOptions\(\)). If the number of omitted options is not available, returns [`FacetOption.COUNT_NOT_AVAILABLE`](FacetOption.html#COUNT_NOT_AVAILABLE).

    -   ### getOmittedOptionsDataCount

        public int getOmittedOptionsDataCount()

        Specified by:

        `getOmittedOptionsDataCount` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

        Returns:

        The number of objects that have a value for this facet that matches one of the omitted options. If this number is not available, returns [`FacetOption.COUNT_NOT_AVAILABLE`](FacetOption.html#COUNT_NOT_AVAILABLE).

    -   ### isExclusiveOptions

        public boolean isExclusiveOptions()

        Specified by:

        `isExclusiveOptions` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

        Returns:

        `true` if the options are exclusive, and `false` otherwise. If the options are exclusive, only one of the options can be applied for a given query. If the options are not exclusive, multiple options can be selected and applied in a given query. This is analogous to radio buttons vs checkboxes.

    -   ### getFacetType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFacetType()

        Specified by:

        `getFacetType` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

    -   ### getSourceRef

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getSourceRef()

        Specified by:

        `getSourceRef` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

    -   ### getOptions

        public abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")\>> getOptions()

        Returns:

        The options of this facet.

    -   ### setOptions

        protected abstract void setOptions([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")\>> options)

        Sets the options for this facet.

        Parameters:

        `options` - the list of options

    -   ### getOptionsReadOnly

        public com.google.common.collect.ImmutableList<com.appiancorp.common.query.ReadOnlyFacetOption<[T](Facet.html "type parameter in Facet")\>> getOptionsReadOnly()

        Specified by:

        `getOptionsReadOnly` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

    -   ### getAppliedOptions

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")\>> getAppliedOptions()

        Returns:

        The subset of this facet's options that are applied (ie, options whose [`isApplied`](FacetOption.html#isApplied\(\)) property is set to `true`).

    -   ### setAppliedOptions

        public void setAppliedOptions([Criteria](Criteria.html "interface in com.appiancorp.common.query") appliedCriteria)

        Sets the [`isApplied`](FacetOption.html#isApplied\(\)) property on the options of this facet, based on the given query criteria.

        An option's `isApplied` property will be set to `true`, if that option's [`filters`](FacetOption.html#getFilters\(\)) are contained in the given criteria. Otherwise, the `isApplied` property will be set to `false`.

        Parameters:

        `appliedCriteria` - the criteria to use in order to determine which facet options are enabled

    -   ### setAppliedOptions

        public static <T> void setAppliedOptions([Iterable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Iterable.html "class or interface in java.lang")<[Facet](Facet.html "class in com.appiancorp.common.query")<T>> facets, [Criteria](Criteria.html "interface in com.appiancorp.common.query") appliedCriteria)

        Sets the [`isApplied`](FacetOption.html#isApplied\(\)) property on the appropriate options of the given facets, using [`setAppliedOptions(Criteria)`](#setAppliedOptions\(com.appiancorp.common.query.Criteria\)).

        Parameters:

        `facets` - the facets to configure

        `appliedCriteria` - the criteria to use in order to determine which facet options are enabled

    -   ### findOptionById

        public [FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[T](Facet.html "type parameter in Facet")\> findOptionById([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetOptionId)

        Finds an option by id.

        Parameters:

        `facetOptionId` - the target [`option id`](FacetOption.html#getId\(\))

        Returns:

        If this facet's list of options contains an option with the given id, returns that option. Otherwise, returns `null`.

    -   ### findOptionByIdReadOnly

        public com.appiancorp.common.query.ReadOnlyFacetOption<[T](Facet.html "type parameter in Facet")\> findOptionByIdReadOnly([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetOptionId)

        Specified by:

        `findOptionByIdReadOnly` in interface `com.appiancorp.common.query.ReadOnlyFacet<[T](Facet.html "type parameter in Facet")>`

    -   ### findOptionById

        public static <T> [FacetOption](FacetOption.html "class in com.appiancorp.common.query")<T> findOptionById([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Facet](Facet.html "class in com.appiancorp.common.query")<T>> facets, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetOptionId)

        Finds the first matching option by id, within the options of the given facets.

        Parameters:

        `facets` - the facets whose options should be searched

        `facetOptionId` - the target [`option id`](FacetOption.html#getId\(\))

        Returns:

        If the given list of facets contains a facet with an option with the given id, returns that option. Otherwise, returns `null`.

    -   ### findOptionByIdReadOnly

        public static <T> com.appiancorp.common.query.ReadOnlyFacetOption<T> findOptionByIdReadOnly([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<com.appiancorp.common.query.ReadOnlyFacet<T>> facets, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetOptionId)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### multilineToString

        public static com.appian.core.base.ToStringFunction<[Facet](Facet.html "class in com.appiancorp.common.query")<?>> multilineToString(int indent)

        Returns a function that generates a multi-line String representation of a facet.

        Parameters:

        `indent` - the indent to be used by the returned function

        Returns:

        the "toString" function

    -   ### hashCode

        public int hashCode()

        Returns a hash code that uses the [`name`](#getName\(\)) property only.

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Compares the given object by checking that it's an instance of [`Facet`](Facet.html "class in com.appiancorp.common.query") and has the same [`name`](#getName\(\)) as this facet.

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equalDataCheck

        public static com.google.common.base.Equivalence<[Facet](Facet.html "class in com.appiancorp.common.query")<?>> equalDataCheck()

        Returns:

        An equivalence that checks all properties of [`Facet`](Facet.html "class in com.appiancorp.common.query").