---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/ExpressionDependency.TypeDependency.html
original_path: api/com/appiancorp/suiteapi/expression/ExpressionDependency.TypeDependency.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.expression](package-summary.html)

# Class ExpressionDependency.TypeDependency

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.expression.ExpressionDependency.TypeDependency

Enclosing class:

[ExpressionDependency](ExpressionDependency.html "class in com.appiancorp.suiteapi.expression")

* * *

public static class ExpressionDependency.TypeDependency extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

A TypeDependency represents the variety of type literals that may be discovered as dependencies.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypeDependency](#%3Cinit%3E\(\))()`

    Default constructor has no dependencies.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addTypeId](#addTypeId\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") typeLiteral)`

    Add a typeId and its typeLiteral to the dependencies.

    `void`

    `[addUnresolvedTypeLiteral](#addUnresolvedTypeLiteral\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") typeLiteral)`

    Add an unresolved typeLiteral to the dependencies.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getResolvedTypeLiterals](#getResolvedTypeLiterals\(\))()`

    These type literals could be found in the system.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")>`

    `[getTypeIds](#getTypeIds\(\))()`

    These type ids were referenced by found type literals.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getUnresolvedTypeLiterals](#getUnresolvedTypeLiterals\(\))()`

    These type literals could not be found in the system.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    String conversion.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TypeDependency

        public TypeDependency()

        Default constructor has no dependencies.

-   ## Method Details

    -   ### addTypeId

        public void addTypeId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") typeLiteral)

        Add a typeId and its typeLiteral to the dependencies.

        Parameters:

        `typeId` -

        `typeLiteral` -

    -   ### addUnresolvedTypeLiteral

        public void addUnresolvedTypeLiteral([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") typeLiteral)

        Add an unresolved typeLiteral to the dependencies.

        Parameters:

        `typeLiteral` -

    -   ### getTypeIds

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> getTypeIds()

        These type ids were referenced by found type literals.

        Returns:

    -   ### getUnresolvedTypeLiterals

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getUnresolvedTypeLiterals()

        These type literals could not be found in the system.

        Returns:

    -   ### getResolvedTypeLiterals

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getResolvedTypeLiterals()

        These type literals could be found in the system.

        Returns:

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        String conversion.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`