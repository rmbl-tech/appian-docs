---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/TypedValueFacet.html
original_path: api/com/appiancorp/common/query/TypedValueFacet.html
version: "25.3"
title: "Class TypedValueFacet"
page_id: "api/com/appiancorp/common/query/TypedValueFacet"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class TypedValueFacet

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.Facet](Facet.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

com.appiancorp.common.query.TypedValueFacet

All Implemented Interfaces:

`com.appiancorp.common.query.ReadOnlyFacet<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

* * *

@GwtCompatible public final class TypedValueFacet extends [Facet](Facet.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

This class holds the metadata for a facet and its options. For example, a Car record could have a Color facet with the options Black, White, Silver.

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    A builder that will construct a TypedValueFacet with the correct parameters

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.common.query.[Facet](Facet.html "class in com.appiancorp.common.query")

    `[DEFAULT_OPTION](Facet.html#DEFAULT_OPTION), [LOCAL_PART](Facet.html#LOCAL_PART), [QNAME](Facet.html#QNAME), [VISIBLE_BY_DEFAULT](Facet.html#VISIBLE_BY_DEFAULT), [XML_ROOT_ELEMENT](Facet.html#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypedValueFacet](#%3Cinit%3E\(com.appiancorp.type.cdt.UserDtoFacetOptionGroup\))(com.appiancorp.type.cdt.UserDtoFacetOptionGroup dtoFacet)`

    `[TypedValueFacet](#%3Cinit%3E\(java.lang.Long,java.lang.String,boolean,java.lang.String,java.util.List,int,int,boolean,boolean,java.lang.String,java.lang.Object,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, boolean allowMultipleSelections, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)`

    `[TypedValueFacet](#%3Cinit%3E\(java.lang.Long,java.lang.String,boolean,java.lang.String,java.util.List,java.util.List,int,int,boolean,boolean,java.lang.String,java.lang.Object,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> defaultOptions, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, boolean allowMultipleSelections, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)`

    `[TypedValueFacet](#%3Cinit%3E\(java.lang.String,boolean,java.lang.String,java.lang.Object,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)`

    Constructs a new date range facet (Assuming the DATE\_RANGE "facetType" is passed in)

    `[TypedValueFacet](#%3Cinit%3E\(java.lang.String,boolean,java.lang.String,java.util.List,int,int,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions)`

    Constructs a new selection/dropdown facet.

    `[TypedValueFacet](#%3Cinit%3E\(java.lang.String,boolean,java.lang.String,java.util.List,int,int,boolean,boolean,java.lang.String,java.lang.Object,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, boolean allowMultipleSelections, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[getAllowMultipleSelections](#getAllowMultipleSelections\(\))()`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getFacetData](#getFacetData\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>>`

    `[getOptions](#getOptions\(\))()`

    `protected void`

    `[setAllowMultipleSelections](#setAllowMultipleSelections\(boolean\))(boolean allowMultipleSelections)`

    `protected void`

    `[setFacetData](#setFacetData\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData)`

    `protected void`

    `[setOptions](#setOptions\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> options)`

    Sets the options for this facet.

    ### Methods inherited from class com.appiancorp.common.query.[Facet](Facet.html "class in com.appiancorp.common.query")

    `[equalDataCheck](Facet.html#equalDataCheck\(\)), [equals](Facet.html#equals\(java.lang.Object\)), [findOptionById](Facet.html#findOptionById\(java.lang.String\)), [findOptionById](Facet.html#findOptionById\(java.util.List,java.lang.String\)), [findOptionByIdReadOnly](Facet.html#findOptionByIdReadOnly\(java.lang.String\)), [findOptionByIdReadOnly](Facet.html#findOptionByIdReadOnly\(java.util.List,java.lang.String\)), [getAppliedOptions](Facet.html#getAppliedOptions\(\)), [getDefaultOption](Facet.html#getDefaultOption\(\)), [getDefaultOptions](Facet.html#getDefaultOptions\(\)), [getFacetType](Facet.html#getFacetType\(\)), [getName](Facet.html#getName\(\)), [getNumOmittedOptions](Facet.html#getNumOmittedOptions\(\)), [getOmittedOptionsDataCount](Facet.html#getOmittedOptionsDataCount\(\)), [getOptionsReadOnly](Facet.html#getOptionsReadOnly\(\)), [getSourceRef](Facet.html#getSourceRef\(\)), [getTotalNumOptions](Facet.html#getTotalNumOptions\(\)), [hashCode](Facet.html#hashCode\(\)), [isExclusiveOptions](Facet.html#isExclusiveOptions\(\)), [isVisible](Facet.html#isVisible\(\)), [multilineToString](Facet.html#multilineToString\(int\)), [setAppliedOptions](Facet.html#setAppliedOptions\(com.appiancorp.common.query.Criteria\)), [setAppliedOptions](Facet.html#setAppliedOptions\(java.lang.Iterable,com.appiancorp.common.query.Criteria\)), [toString](Facet.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TypedValueFacet

        public TypedValueFacet([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions)

        Constructs a new selection/dropdown facet.

        Parameters:

        `name` - The name of the facet.

        `options` - The list of options for this facet.

        `defaultOption` - The label name of the option to be applied

        `isVisible` - is the facet visible at run time to the user.

        `numOmittedOptions` - The number of additional options that are available, but are not included in the provided list of options.

        `omittedOptionsDataCount` - The number of objects that contain data matched by the omitted options. This allows the UI to present the generic option "Other" along with a count.

        `isExclusiveOptions` - Whether this facet's options are exclusive or not. See [`Facet.isExclusiveOptions()`](Facet.html#isExclusiveOptions\(\)).

    -   ### TypedValueFacet

        public TypedValueFacet([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)

        Constructs a new date range facet (Assuming the DATE\_RANGE "facetType" is passed in)

        Parameters:

        `name` - The name of the facet

        `isVisible` - is the facet visible at run time

        `facetType` - from FacetType enum (Right now we only know how to process DATE\_RANGE)

        `facetData` - data fields specific to this type of facet

        `sourceRef` - name of the field (record list is bring filtered on)

    -   ### TypedValueFacet

        public TypedValueFacet([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, boolean allowMultipleSelections, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)

    -   ### TypedValueFacet

        public TypedValueFacet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, boolean allowMultipleSelections, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)

    -   ### TypedValueFacet

        public TypedValueFacet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> defaultOptions, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, boolean allowMultipleSelections, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)

    -   ### TypedValueFacet

        public TypedValueFacet(com.appiancorp.type.cdt.UserDtoFacetOptionGroup dtoFacet)

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

    -   ### getOptions

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> getOptions()

        Specified by:

        `[getOptions](Facet.html#getOptions\(\))` in class `[Facet](Facet.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Returns:

        The options of this facet.

    -   ### setOptions

        protected void setOptions([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> options)

        Description copied from class: `[Facet](Facet.html#setOptions\(java.util.List\))`

        Sets the options for this facet.

        Specified by:

        `[setOptions](Facet.html#setOptions\(java.util.List\))` in class `[Facet](Facet.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Parameters:

        `options` - the list of options

    -   ### getFacetData

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getFacetData()

    -   ### setFacetData

        protected void setFacetData([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData)

    -   ### getAllowMultipleSelections

        public boolean getAllowMultipleSelections()

    -   ### setAllowMultipleSelections

        protected void setAllowMultipleSelections(boolean allowMultipleSelections)