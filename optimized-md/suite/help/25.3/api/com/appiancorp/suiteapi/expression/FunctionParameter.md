---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/FunctionParameter.html
original_path: api/com/appiancorp/suiteapi/expression/FunctionParameter.html
version: "25.3"
title: "Class FunctionParameter"
page_id: "api/com/appiancorp/suiteapi/expression/FunctionParameter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.expression](package-summary.html)

# Class FunctionParameter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.expression.FunctionParameter

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class FunctionParameter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This class represents a parameter of a function in the Expression Editor. The attributes type and typename are mutually exclusive. Typename is used to reference types that are not base primitive types with a known id.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.expression.FunctionParameter)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[FunctionParameter](#%3Cinit%3E\(\))()`

    `[FunctionParameter](#%3Cinit%3E\(com.appiancorp.suiteapi.expression.FunctionParameter\))([FunctionParameter](FunctionParameter.html "class in com.appiancorp.suiteapi.expression") fp)`

    `[FunctionParameter](#%3Cinit%3E\(java.lang.reflect.Method,int,com.appiancorp.suiteapi.common.Name,com.appiancorp.suiteapi.expression.annotations.Parameter,int\))([Method](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/reflect/Method.html "class or interface in java.lang.reflect") method, int methodParameterIndex, [Name](../common/Name.html "annotation interface in com.appiancorp.suiteapi.common") name, [Parameter](annotations/Parameter.html "annotation interface in com.appiancorp.suiteapi.expression.annotations") param, int type)`

    Create a FunctionParameter using a type id.

    `[FunctionParameter](#%3Cinit%3E\(java.lang.reflect.Method,int,com.appiancorp.suiteapi.common.Name,com.appiancorp.suiteapi.expression.annotations.Parameter,java.lang.String\))([Method](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/reflect/Method.html "class or interface in java.lang.reflect") method, int methodParameterIndex, [Name](../common/Name.html "annotation interface in com.appiancorp.suiteapi.common") name, [Parameter](annotations/Parameter.html "annotation interface in com.appiancorp.suiteapi.expression.annotations") param, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") systemTypename)`

    Create a FunctionParameter using a name for the type of the parameter instead of a type id.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Gets the description of parameter

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the name of parameter

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getSystemTypename](#getSystemTypename\(\))()`

    Gets the Typename of the parameter.

    `int`

    `[getType](#getType\(\))()`

    Gets the Type of the parameter.

    `int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[isRequired](#isRequired\(\))()`

    Indicates whether the parameter is required as an input to the function

    `boolean`

    `[isTranslatable](#isTranslatable\(\))()`

    Indicates whether this function parameter is translatable or not.

    `boolean`

    `[isUnlimited](#isUnlimited\(\))()`

    Indicates whether this parameter may have an unlimited number of entries.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    Sets the description of parameter

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Sets the name of parameter

    `void`

    `[setRequired](#setRequired\(boolean\))(boolean required)`

    Sets whether the parameter is required as an input to the function

    `void`

    `[setSystemTypename](#setSystemTypename\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") systemTypename)`

    Sets the Typename of the parameter.

    `void`

    `[setTranslatable](#setTranslatable\(boolean\))(boolean translatable)`

    Sets whether this function parameter is translatable or not.

    `void`

    `[setType](#setType\(int\))(int type)`

    Sets the Type of the parameter.

    `void`

    `[setUnlimited](#setUnlimited\(boolean\))(boolean isUnlimited)`

    Sets whether this function parameter can take an unlimited number of entries.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### FunctionParameter

        public FunctionParameter()

    -   ### FunctionParameter

        public FunctionParameter([FunctionParameter](FunctionParameter.html "class in com.appiancorp.suiteapi.expression") fp)

    -   ### FunctionParameter

        public FunctionParameter([Method](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/reflect/Method.html "class or interface in java.lang.reflect") method, int methodParameterIndex, [Name](../common/Name.html "annotation interface in com.appiancorp.suiteapi.common") name, [Parameter](annotations/Parameter.html "annotation interface in com.appiancorp.suiteapi.expression.annotations") param, int type)

        Create a FunctionParameter using a type id. Use this constructor when the parameter type is a built-in system type such as Integer or String.

        See Also:

        -   [`AppianType`](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")

    -   ### FunctionParameter

        public FunctionParameter([Method](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/reflect/Method.html "class or interface in java.lang.reflect") method, int methodParameterIndex, [Name](../common/Name.html "annotation interface in com.appiancorp.suiteapi.common") name, [Parameter](annotations/Parameter.html "annotation interface in com.appiancorp.suiteapi.expression.annotations") param, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") systemTypename)

        Create a FunctionParameter using a name for the type of the parameter instead of a type id. Use this contructor when the parameter type is not a built-in system type like Integer or Text.

        See Also:

        -   [`AppianType`](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")

-   ## Method Details

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Gets the description of parameter

        Returns:

        the string description of the parameter

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)

        Sets the description of parameter

        Parameters:

        `description` - the string description of the parameter

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the name of parameter

        Returns:

        the name of the parameter

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Sets the name of parameter

        Parameters:

        `name` - the name of parameter

    -   ### isRequired

        public boolean isRequired()

        Indicates whether the parameter is required as an input to the function

        Returns:

        `true` or `false` if the parameter is required or not.

    -   ### setRequired

        public void setRequired(boolean required)

        Sets whether the parameter is required as an input to the function

        Parameters:

        `required` - `true` or `false` if the parameter is required or not.

    -   ### getType

        public int getType()

        Gets the Type of the parameter. This will match one of the types in `TypedVariable`

        Returns:

        the Type of the parameter

        See Also:

        -   [`TypedVariable`](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### setType

        public void setType(int type)

        Sets the Type of the parameter. This must match one of the types in `TypedVariable`

        Parameters:

        `type` - the Type of the parameter

        See Also:

        -   [`TypedVariable`](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### getSystemTypename

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getSystemTypename()

        Gets the Typename of the parameter. This value is empty is the type was provided using its ID.

        Returns:

        The Typename of the parameter

    -   ### setSystemTypename

        public void setSystemTypename([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") systemTypename)

        Sets the Typename of the parameter.

    -   ### isUnlimited

        public boolean isUnlimited()

        Indicates whether this parameter may have an unlimited number of entries.

    -   ### setUnlimited

        public void setUnlimited(boolean isUnlimited)

        Sets whether this function parameter can take an unlimited number of entries. This value cannot be updated on the server.

        See Also:

        -   [`isUnlimited()`](#isUnlimited\(\))

    -   ### isTranslatable

        public boolean isTranslatable()

        Indicates whether this function parameter is translatable or not.

    -   ### setTranslatable

        public void setTranslatable(boolean translatable)

        Sets whether this function parameter is translatable or not.

        See Also:

        -   [`isTranslatable()`](#isTranslatable\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        String for debugging purposes

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`