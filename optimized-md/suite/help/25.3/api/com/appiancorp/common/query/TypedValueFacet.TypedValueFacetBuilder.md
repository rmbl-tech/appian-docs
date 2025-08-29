---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/TypedValueFacet.TypedValueFacetBuilder.html
original_path: api/com/appiancorp/common/query/TypedValueFacet.TypedValueFacetBuilder.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class TypedValueFacet.TypedValueFacetBuilder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.TypedValueFacet.TypedValueFacetBuilder

Enclosing class:

[TypedValueFacet](TypedValueFacet.html "class in com.appiancorp.common.query")

* * *

public static class TypedValueFacet.TypedValueFacetBuilder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

A builder that will construct a TypedValueFacet with the correct parameters

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypedValueFacetBuilder](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[allowMultipleSelections](#allowMultipleSelections\(boolean\))(boolean allowMultipleSelections)`

    `[TypedValueFacet](TypedValueFacet.html "class in com.appiancorp.common.query")`

    `[build](#build\(\))()`

    `static [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[builder](#builder\(\))()`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[completeOptions](#completeOptions\(\))()`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[defaultOption](#defaultOption\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[defaultOptions](#defaultOptions\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> defaultOptions)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[facetData](#facetData\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[facetType](#facetType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[id](#id\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[incompleteOptions](#incompleteOptions\(\))()`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[isExclusiveOptions](#isExclusiveOptions\(boolean\))(boolean isExclusiveOptions)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[name](#name\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[numOmittedOptions](#numOmittedOptions\(int\))(int numOmittedOptions)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[omittedOptionsDataCount](#omittedOptionsDataCount\(int\))(int omittedOptionsDataCount)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[options](#options\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>> options)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[sourceRef](#sourceRef\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)`

    `[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")`

    `[visible](#visible\(boolean\))(boolean isVisible)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TypedValueFacetBuilder

        public TypedValueFacetBuilder()

-   ## Method Details

    -   ### builder

        public static [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") builder()

    -   ### id

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") id([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

    -   ### name

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") name([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

    -   ### visible

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") visible(boolean isVisible)

    -   ### options

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") options([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>> options)

    -   ### defaultOption

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") defaultOption([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption)

    -   ### defaultOptions

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") defaultOptions([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> defaultOptions)

    -   ### completeOptions

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") completeOptions()

    -   ### incompleteOptions

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") incompleteOptions()

    -   ### numOmittedOptions

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") numOmittedOptions(int numOmittedOptions)

    -   ### omittedOptionsDataCount

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") omittedOptionsDataCount(int omittedOptionsDataCount)

    -   ### isExclusiveOptions

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") isExclusiveOptions(boolean isExclusiveOptions)

    -   ### allowMultipleSelections

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") allowMultipleSelections(boolean allowMultipleSelections)

    -   ### facetType

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") facetType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType)

    -   ### facetData

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") facetData([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") facetData)

    -   ### sourceRef

        public [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query") sourceRef([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)

    -   ### build

        public [TypedValueFacet](TypedValueFacet.html "class in com.appiancorp.common.query") build()