---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/GenericFacet.GenericFacetBuilder.html
original_path: api/com/appiancorp/common/query/GenericFacet.GenericFacetBuilder.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class GenericFacet.GenericFacetBuilder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.GenericFacet.GenericFacetBuilder

Enclosing class:

[GenericFacet](GenericFacet.html "class in com.appiancorp.common.query")

* * *

public static class GenericFacet.GenericFacetBuilder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

A builder that will construct a GenericFacet with the correct parameters

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[GenericFacetBuilder](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[GenericFacet](GenericFacet.html "class in com.appiancorp.common.query")`

    `[build](#build\(\))()`

    `static [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[builder](#builder\(\))()`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[completeOptions](#completeOptions\(\))()`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[defaultOption](#defaultOption\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption)`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[defaultOptions](#defaultOptions\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> defaultOptions)`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[facetType](#facetType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType)`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[incompleteOptions](#incompleteOptions\(\))()`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[isExclusiveOptions](#isExclusiveOptions\(boolean\))(boolean isExclusiveOptions)`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[name](#name\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[numOmittedOptions](#numOmittedOptions\(int\))(int numOmittedOptions)`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[omittedOptionsDataCount](#omittedOptionsDataCount\(int\))(int omittedOptionsDataCount)`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[options](#options\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>> options)`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[sourceRef](#sourceRef\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)`

    `[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")`

    `[visible](#visible\(boolean\))(boolean isVisible)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### GenericFacetBuilder

        public GenericFacetBuilder()

-   ## Method Details

    -   ### builder

        public static [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") builder()

    -   ### name

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") name([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

    -   ### visible

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") visible(boolean isVisible)

    -   ### options

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") options([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>> options)

    -   ### defaultOption

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") defaultOption([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultOption)

    -   ### defaultOptions

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") defaultOptions([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> defaultOptions)

    -   ### completeOptions

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") completeOptions()

    -   ### incompleteOptions

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") incompleteOptions()

    -   ### numOmittedOptions

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") numOmittedOptions(int numOmittedOptions)

    -   ### omittedOptionsDataCount

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") omittedOptionsDataCount(int omittedOptionsDataCount)

    -   ### isExclusiveOptions

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") isExclusiveOptions(boolean isExclusiveOptions)

    -   ### facetType

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") facetType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") facetType)

    -   ### sourceRef

        public [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query") sourceRef([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sourceRef)

    -   ### build

        public [GenericFacet](GenericFacet.html "class in com.appiancorp.common.query") build()