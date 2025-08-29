---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/GenericFacet.html
original_path: api/com/appiancorp/common/query/GenericFacet.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class GenericFacet

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.Facet](Facet.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>

com.appiancorp.common.query.GenericFacet

All Implemented Interfaces:

`com.appiancorp.common.query.ReadOnlyFacet<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

* * *

@GwtCompatible public final class GenericFacet extends [Facet](Facet.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>

This class holds the metadata for a facet and its options. For example, a Car record could have a Color facet with the options Black, White, Silver.

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    A builder that will construct a GenericFacet with the correct parameters

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.common.query.[Facet](Facet.html "class in com.appiancorp.common.query")

    `[DEFAULT_OPTION](Facet.html#DEFAULT_OPTION), [LOCAL_PART](Facet.html#LOCAL_PART), [QNAME](Facet.html#QNAME), [VISIBLE_BY_DEFAULT](Facet.html#VISIBLE_BY_DEFAULT), [XML_ROOT_ELEMENT](Facet.html#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[GenericFacet](#%3Cinit%3E\(java.lang.String,boolean,java.lang.String,java.util.List,int,int,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions)`

    Constructs a new facet.

    `[GenericFacet](#%3Cinit%3E\(java.lang.String,boolean,java.lang.String,java.util.List,int,int,boolean,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)`

    `[GenericFacet](#%3Cinit%3E\(java.lang.String,boolean,java.lang.String,java.util.List,java.util.List,int,int,boolean,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> defaultOptions, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>>`

    `[getOptions](#getOptions\(\))()`

    `protected void`

    `[setOptions](#setOptions\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>> options)`

    Sets the options for this facet.

    ### Methods inherited from class com.appiancorp.common.query.[Facet](Facet.html "class in com.appiancorp.common.query")

    `[equalDataCheck](Facet.html#equalDataCheck\(\)), [equals](Facet.html#equals\(java.lang.Object\)), [findOptionById](Facet.html#findOptionById\(java.lang.String\)), [findOptionById](Facet.html#findOptionById\(java.util.List,java.lang.String\)), [findOptionByIdReadOnly](Facet.html#findOptionByIdReadOnly\(java.lang.String\)), [findOptionByIdReadOnly](Facet.html#findOptionByIdReadOnly\(java.util.List,java.lang.String\)), [getAppliedOptions](Facet.html#getAppliedOptions\(\)), [getDefaultOption](Facet.html#getDefaultOption\(\)), [getDefaultOptions](Facet.html#getDefaultOptions\(\)), [getFacetType](Facet.html#getFacetType\(\)), [getName](Facet.html#getName\(\)), [getNumOmittedOptions](Facet.html#getNumOmittedOptions\(\)), [getOmittedOptionsDataCount](Facet.html#getOmittedOptionsDataCount\(\)), [getOptionsReadOnly](Facet.html#getOptionsReadOnly\(\)), [getSourceRef](Facet.html#getSourceRef\(\)), [getTotalNumOptions](Facet.html#getTotalNumOptions\(\)), [hashCode](Facet.html#hashCode\(\)), [isExclusiveOptions](Facet.html#isExclusiveOptions\(\)), [isVisible](Facet.html#isVisible\(\)), [multilineToString](Facet.html#multilineToString\(int\)), [setAppliedOptions](Facet.html#setAppliedOptions\(com.appiancorp.common.query.Criteria\)), [setAppliedOptions](Facet.html#setAppliedOptions\(java.lang.Iterable,com.appiancorp.common.query.Criteria\)), [toString](Facet.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### GenericFacet

        public GenericFacet([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions)

        Constructs a new facet.

        Parameters:

        `name` - The name of the facet.

        `options` - The list of options for this facet.

        `defaultOption` - The name of the label of the option to be applied by default

        `numOmittedOptions` - The number of additional options that are available, but are not included in the provided list of options.

        `omittedOptionsDataCount` - The number of objects that contain data matched by the omitted options. This allows the UI to present the generic option "Other" along with a count.

        `isExclusiveOptions` - Whether this facet's options are exclusive or not. See [`Facet.isExclusiveOptions()`](Facet.html#isExclusiveOptions\(\)).

    -   ### GenericFacet

        public GenericFacet([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)

    -   ### GenericFacet

        public GenericFacet([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, boolean isVisible, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> defaultOptions, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>> options, int numOmittedOptions, int omittedOptionsDataCount, boolean isExclusiveOptions, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)

-   ## Method Details

    -   ### getOptions

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>> getOptions()

        Specified by:

        `[getOptions](Facet.html#getOptions\(\))` in class `[Facet](Facet.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

        Returns:

        The options of this facet.

    -   ### setOptions

        protected void setOptions([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>> options)

        Description copied from class: `[Facet](Facet.html#setOptions\(java.util.List\))`

        Sets the options for this facet.

        Specified by:

        `[setOptions](Facet.html#setOptions\(java.util.List\))` in class `[Facet](Facet.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

        Parameters:

        `options` - the list of options