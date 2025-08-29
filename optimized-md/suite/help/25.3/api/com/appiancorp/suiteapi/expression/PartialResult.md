---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/PartialResult.html
original_path: api/com/appiancorp/suiteapi/expression/PartialResult.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.expression](package-summary.html)

# Class PartialResult

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.expression.PartialResult

All Implemented Interfaces:

`[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class PartialResult extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

This class represents the partial evaluation of a function in the Expression Editor, as well as the result of that evaluation.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.expression.PartialResult)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PartialResult](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAssignmentOperator](#getAssignmentOperator\(\))()`

    Gets the assignment operator Supported operators are:
    : Direct Modification
    +: Addition Modification
    \-: Subtraction Modification
    \*: Multiplication Modification
    /: Division Modification
    ^: Exponentiation Modification
    &: Concatenation Modification

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAssignmentVariable](#getAssignmentVariable\(\))()`

    Gets the assignment variable.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFunction](#getFunction\(\))()`

    Gets the name of the function

    `[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getFunctionParameters](#getFunctionParameters\(\))()`

    Gets the function parameters

    `[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")`

    `[getResult](#getResult\(\))()`

    Gets the partial result

    `void`

    `[setAssignmentOperator](#setAssignmentOperator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") operator_)`

    Sets the assignment operator Allowed operators are:
    : Direct Modification
    +: Addition Modification
    \-: Subtraction Modification
    \*: Multiplication Modification
    /: Division Modification
    ^: Exponentiation Modification
    &: Concatenation Modification

    `void`

    `[setAssignmentVariable](#setAssignmentVariable\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") variable_)`

    Sets assignment variable.

    `void`

    `[setFunction](#setFunction\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") function_)`

    Sets the name of the function

    `void`

    `[setFunctionParameters](#setFunctionParameters\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D\))([TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")[] parameters_)`

    Sets the function parameters

    `void`

    `[setResult](#setResult\(com.appiancorp.suiteapi.process.TypedVariable\))([TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process") result_)`

    Sets the partial result

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PartialResult

        public PartialResult()

-   ## Method Details

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        the function

    -   ### getAssignmentOperator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAssignmentOperator()

        Gets the assignment operator Supported operators are:
        : Direct Modification
        +: Addition Modification
        \-: Subtraction Modification
        \*: Multiplication Modification
        /: Division Modification
        ^: Exponentiation Modification
        &: Concatenation Modification

        Returns:

        String assignment operator

    -   ### setAssignmentOperator

        public void setAssignmentOperator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") operator\_)

        Sets the assignment operator Allowed operators are:
        : Direct Modification
        +: Addition Modification
        \-: Subtraction Modification
        \*: Multiplication Modification
        /: Division Modification
        ^: Exponentiation Modification
        &: Concatenation Modification

        Parameters:

        `operator_` - String assignment operator

    -   ### getAssignmentVariable

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAssignmentVariable()

        Gets the assignment variable. This is the string that appears before the assignment operator and is the variable that will be assigned the value returned by the expression. E.g. a:1+2, a is the assignment variable, : the assignment operator and a will be set to be 3.

        Returns:

        the assignment variable

    -   ### setAssignmentVariable

        public void setAssignmentVariable([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") variable\_)

        Sets assignment variable. This is the string that appears before the assignment operator and is the variable that will be assigned the value returned by the expression. E.g. a:1+2, a is the assignment variable, : the assignment operator and a will be set to be 3.

        Parameters:

        `variable_` - String assignment variable

    -   ### getFunction

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFunction()

        Gets the name of the function

        Returns:

        the name of the function

    -   ### setFunction

        public void setFunction([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") function\_)

        Sets the name of the function

        Parameters:

        `function_` - the name of the function

    -   ### getFunctionParameters

        public [TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] getFunctionParameters()

        Gets the function parameters

        Returns:

        array of `TypedVariable` function parameters

        See Also:

        -   [`TypedVariable`](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### setFunctionParameters

        public void setFunctionParameters([TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] parameters\_)

        Sets the function parameters

        Parameters:

        `parameters_` - array of `TypedVariable` function parameters

        See Also:

        -   [`TypedVariable`](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### getResult

        public [TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process") getResult()

        Gets the partial result

        Returns:

        the partial result as a `TypedVariable`

        See Also:

        -   [`TypedVariable`](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### setResult

        public void setResult([TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process") result\_)

        Sets the partial result

        Parameters:

        `result_` - the partial result as a `TypedVariable`

        See Also:

        -   [`TypedVariable`](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Description copied from interface: `[AppianTypeHolder](../process/AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))`

        If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache. Later, the cache will populate itself with the display strings that correspond to all of its ids, such as "Human Resources" for group 9.

        Specified by:

        `[fillInAppianTypes](../process/AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - cache of Appian-typed objects.