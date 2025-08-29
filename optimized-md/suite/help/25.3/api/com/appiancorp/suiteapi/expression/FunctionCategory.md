---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/FunctionCategory.html
original_path: api/com/appiancorp/suiteapi/expression/FunctionCategory.html
version: "25.3"
title: "Class FunctionCategory"
page_id: "api/com/appiancorp/suiteapi/expression/FunctionCategory"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.expression](package-summary.html)

# Class FunctionCategory

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.expression.FunctionCategory

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")`

* * *

public class FunctionCategory extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang"), [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

This class represents a function category in the Expression Editor.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.expression.FunctionCategory)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[FunctionCategory](#%3Cinit%3E\(\))()`

    `[FunctionCategory](#%3Cinit%3E\(com.appiancorp.suiteapi.expression.FunctionCategory\))([FunctionCategory](FunctionCategory.html "class in com.appiancorp.suiteapi.expression") fc)`

    `[FunctionCategory](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    `[FunctionCategory](#%3Cinit%3E\(java.lang.String,java.util.List\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Function](Function.html "class in com.appiancorp.suiteapi.expression")> functions)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addFunction](#addFunction\(com.appiancorp.suiteapi.expression.Function\))([Function](Function.html "class in com.appiancorp.suiteapi.expression") f)`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    `int`

    `[compareTo](#compareTo\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)`

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[Function](Function.html "class in com.appiancorp.suiteapi.expression")[]`

    `[getFunctions](#getFunctions\(\))()`

    Keep this as the JavaScript side needs it instead of the List.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Function](Function.html "class in com.appiancorp.suiteapi.expression")>`

    `[getFunctionsList](#getFunctionsList\(\))()`

    Gets the functions in this category

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getI18nKey](#getI18nKey\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the name of the category

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setFunctionsList](#setFunctionsList\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Function](Function.html "class in com.appiancorp.suiteapi.expression")> functions)`

    Sets the functions in this category

    `void`

    `[setI18nKey](#setI18nKey\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") i18nKey)`

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Sets the unique string name of the category

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### FunctionCategory

        public FunctionCategory()

    -   ### FunctionCategory

        public FunctionCategory([FunctionCategory](FunctionCategory.html "class in com.appiancorp.suiteapi.expression") fc)

    -   ### FunctionCategory

        public FunctionCategory([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

    -   ### FunctionCategory

        public FunctionCategory([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Function](Function.html "class in com.appiancorp.suiteapi.expression")\> functions)

-   ## Method Details

    -   ### getFunctionsList

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Function](Function.html "class in com.appiancorp.suiteapi.expression")\> getFunctionsList()

        Gets the functions in this category

        Returns:

        an array of `Function` objects representing the functions in this category

        See Also:

        -   [`Function`](Function.html "class in com.appiancorp.suiteapi.expression")

    -   ### getFunctions

        public [Function](Function.html "class in com.appiancorp.suiteapi.expression")\[\] getFunctions()

        Keep this as the JavaScript side needs it instead of the List. Ack.

        Returns:

    -   ### setFunctionsList

        public void setFunctionsList([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Function](Function.html "class in com.appiancorp.suiteapi.expression")\> functions)

        Sets the functions in this category

        Parameters:

        `functions` - an array of `Function` objects representing the functions to set in this category

        See Also:

        -   [`Function`](Function.html "class in com.appiancorp.suiteapi.expression")

    -   ### addFunction

        public void addFunction([Function](Function.html "class in com.appiancorp.suiteapi.expression") f)

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the name of the category

        Returns:

        the unique string name of the category

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Sets the unique string name of the category

        Parameters:

        `name` - The name of the category

    -   ### getI18nKey

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getI18nKey()

    -   ### setI18nKey

        public void setI18nKey([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") i18nKey)

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        String for debugging purposes

    -   ### compareTo

        public int compareTo([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)

        Specified by:

        `[compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html#compareTo\(T\) "class or interface in java.lang")` in interface `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")`

        Returns:

        int a negative integer, zero, or a positive integer as this object is less than, equal to, or greater than the specified object.

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`