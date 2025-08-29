---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/SafeActivityReturnVariable.html
original_path: api/com/appiancorp/suiteapi/process/framework/SafeActivityReturnVariable.html
version: "25.3"
title: "Class SafeActivityReturnVariable"
page_id: "api/com/appiancorp/suiteapi/process/framework/SafeActivityReturnVariable"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Class SafeActivityReturnVariable

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable

* * *

public class SafeActivityReturnVariable extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Wrapper for `ActivityReturnVariable` that enforces non-null value, and contains only getters so that users cannot change the values.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SafeActivityReturnVariable](#%3Cinit%3E\(com.appiancorp.suiteapi.process.ActivityReturnVariable\))([ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process") delegate_)`

    Deprecated. 

    `[SafeActivityReturnVariable](#%3Cinit%3E\(com.appiancorp.suiteapi.process.ActivityReturnVariable,com.appiancorp.suiteapi.type.TypeService\))([ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process") delegate_, [TypeService](../../type/TypeService.html "interface in com.appiancorp.suiteapi.type") ts)`

    Instantiates a wrapper for a `ActivityReturnVariable` object.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")[]`

    `[children](#children\(\))()`

    If the type of the variable is BEAN, returns an array of ACP who are the fields of the bean.

    `static [SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")`

    `[findByName](#findByName\(com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable%5B%5D,java.lang.String\))([SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")[] variables_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Finds the variable in the given array whose `name`corresponds to the given name.

    `static [ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getArvs](#getArvs\(com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable%5B%5D\))([SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")[] safes_)`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getInstanceType](#getInstanceType\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getKey](#getKey\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Deprecated.

    use [`getInstanceType()`](#getInstanceType\(\))

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getValue](#getValue\(\))()`

    `void`

    `[setValue](#setValue\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    Sets the value of the typed variable.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    converts typed variable to a string

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

-   ## Constructor Details

    -   ### SafeActivityReturnVariable

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public SafeActivityReturnVariable([ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process") delegate\_)

        Deprecated.

        Use [`SafeActivityReturnVariable(ActivityReturnVariable, TypeService)`](#%3Cinit%3E\(com.appiancorp.suiteapi.process.ActivityReturnVariable,com.appiancorp.suiteapi.type.TypeService\))

    -   ### SafeActivityReturnVariable

        public SafeActivityReturnVariable([ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process") delegate\_, [TypeService](../../type/TypeService.html "interface in com.appiancorp.suiteapi.type") ts)

        Instantiates a wrapper for a `ActivityReturnVariable` object.

-   ## Method Details

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        converts typed variable to a string

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        the string representation of the underlying typed variable

    -   ### children

        public [SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")\[\] children()

        If the type of the variable is BEAN, returns an array of ACP who are the fields of the bean. If the type of the variable is BEAN\_ARRAY, returns an array of the ACP who are the cells in the array. Otherwise, returns `null`. All non-null return values are wrapped in SafeActivityReturnVariables.

        Note that this is not a getXXX method, so as not to be confused with a property (mostly by ASL/k).

    -   ### getType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

        Deprecated.

        use [`getInstanceType()`](#getInstanceType\(\))

        Returns:

        the type of the typed variable

    -   ### getInstanceType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getInstanceType()

    -   ### getKey

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getKey()

        Returns:

        the key(name) of the typed variable

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

    -   ### getValue

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getValue()

        Returns:

        the value of the typed variable

    -   ### setValue

        public void setValue([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

        Sets the value of the typed variable. Unlike the method on typed variable, this one will not do any conversions - the type must be exactly right.

        Throws:

        `[IllegalStateException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalStateException.html "class or interface in java.lang")` - If called on an object of type BEAN or BEAN\_ARRAY

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - If called with an object that is not of the correct type

    -   ### findByName

        public static [SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework") findByName([SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")\[\] variables\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Finds the variable in the given array whose `name`corresponds to the given name. If no such variable can be found, returns `null`.

        Parameters:

        `variables_` - `SafeActivityReturnVariables` to search through

        `name_` - name of activity variable to search for

        Returns:

        the first `SafeActivityReturnVariable` that exactly matches name\_

    -   ### getArvs

        public static [ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] getArvs([SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")\[\] safes\_)

        Parameters:

        `safes_` - The `SafeActivityReturnVariable` objects to get `ActivityReturnVariable` objects for

        Returns:

        the `ActivityReturnVariable` objects relating to the given `SafeActivityReturnVariable` objects