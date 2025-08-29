---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/Function.html
original_path: api/com/appiancorp/suiteapi/expression/Function.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.expression](package-summary.html)

# Class Function

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.expression.Function

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Function](Function.html "class in com.appiancorp.suiteapi.expression")>`

* * *

public class Function extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Function](Function.html "class in com.appiancorp.suiteapi.expression")\>

This class represents a function in the Expression Editor.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.expression.Function)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Function](#%3Cinit%3E\(\))()`

    `[Function](#%3Cinit%3E\(com.appiancorp.suiteapi.expression.Function\))([Function](Function.html "class in com.appiancorp.suiteapi.expression") f)`

    `[Function](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addFunctionParameter](#addFunctionParameter\(com.appiancorp.suiteapi.expression.FunctionParameter\))([FunctionParameter](FunctionParameter.html "class in com.appiancorp.suiteapi.expression") parameter)`

    Adds a parameter to the function's parameters.

    `int`

    `[compareTo](#compareTo\(com.appiancorp.suiteapi.expression.Function\))([Function](Function.html "class in com.appiancorp.suiteapi.expression") o)`

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCategoryName](#getCategoryName\(\))()`

    Gets the name of the parent category for the function

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Gets the description of the function

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDomain](#getDomain\(\))()`

    Returns the domain of this function.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExternalDescription](#getExternalDescription\(\))()`

    Gets the path to the external resource containing the description of the function.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFullName](#getFullName\(\))()`

    Gets a name with both domain and name in it but only if [`getDomain()`](#getDomain\(\)) is not null or empty.

    `[FunctionParameter](FunctionParameter.html "class in com.appiancorp.suiteapi.expression")[]`

    `[getFunctionParameters](#getFunctionParameters\(\))()`

    Gets the parameters for the function

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getI18nKey](#getI18nKey\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the unique name of the function

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getOutputSystemTypename](#getOutputSystemTypename\(\))()`

    Return the outputTypename of the function.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getOutputType](#getOutputType\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[isHiddenFromAutosuggest](#isHiddenFromAutosuggest\(\))()`

    Gets `true` or `false` depending on whether the function should be hidden from autosuggest

    `boolean`

    `[isTranslatableParameters](#isTranslatableParameters\(\))()`

    Gets `true` or `false` depending on whether the function can have translatable parameters

    `boolean`

    `[isUnlimitedParameters](#isUnlimitedParameters\(\))()`

    Gets `true` or `false` depending on whether the function can have unlimited parameters

    `void`

    `[setCategoryName](#setCategoryName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Sets the name of the parent category for the function

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    Sets the description of the function

    `void`

    `[setDomain](#setDomain\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") domain)`

    Sets the domain of this function.

    `void`

    `[setExternalDescription](#setExternalDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalDescription)`

    Sets the path to the external resource containing the description of the function.

    `void`

    `[setFunctionParameters](#setFunctionParameters\(com.appiancorp.suiteapi.expression.FunctionParameter%5B%5D\))([FunctionParameter](FunctionParameter.html "class in com.appiancorp.suiteapi.expression")[] parameters)`

    Sets the parameters for the function

    `void`

    `[setHiddenFromAutosuggest](#setHiddenFromAutosuggest\(boolean\))(boolean hiddenFromAutosuggest)`

    Sets `true` or `false` depending on whether the function should be hidden from autosuggest

    `void`

    `[setI18nKey](#setI18nKey\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") i18nKey)`

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Sets the unique name of the function

    `void`

    `[setOutputSystemTypename](#setOutputSystemTypename\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") outputSystemTypename)`

    Set the outputTypename of the function.

    `void`

    `[setOutputType](#setOutputType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") outputType)`

    `void`

    `[setTranslatableParameters](#setTranslatableParameters\(boolean\))(boolean translatableParameters)`

    Sets `true` or `false` depending on whether the function can have translatable parameters

    `void`

    `[setUnlimitedParameters](#setUnlimitedParameters\(boolean\))(boolean parameters)`

    Sets `true` or `false` depending on whether the function can have unlimited parameters

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Function

        public Function()

    -   ### Function

        public Function([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

    -   ### Function

        public Function([Function](Function.html "class in com.appiancorp.suiteapi.expression") f)

-   ## Method Details

    -   ### getCategoryName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCategoryName()

        Gets the name of the parent category for the function

        Returns:

        String name of parent category

    -   ### setCategoryName

        public void setCategoryName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Sets the name of the parent category for the function

        Parameters:

        `name` - String name of parent category

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Gets the description of the function

        Returns:

        String description of function

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)

        Sets the description of the function

        Parameters:

        `description` - String description of function

    -   ### getExternalDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExternalDescription()

        Gets the path to the external resource containing the description of the function. The path must be relative to the root of the servlet context and begin with a '/'.

        An example of a valid path is

        `/components/expeditor/functions/text.jsp`

        Returns:

        path to the resource

    -   ### setExternalDescription

        public void setExternalDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalDescription)

        Sets the path to the external resource containing the description of the function. The path must be relative to the root of the servlet context and begin with a '/'.

        An example of a valid path is

        `/components/expeditor/functions/text.jsp`

        Parameters:

        `externalDescription` - path to the resource

    -   ### getFunctionParameters

        public [FunctionParameter](FunctionParameter.html "class in com.appiancorp.suiteapi.expression")\[\] getFunctionParameters()

        Gets the parameters for the function

        Returns:

        an array of `FunctionParameter` objects representing the parameters for the function

        See Also:

        -   [`FunctionParameter`](FunctionParameter.html "class in com.appiancorp.suiteapi.expression")

    -   ### setFunctionParameters

        public void setFunctionParameters([FunctionParameter](FunctionParameter.html "class in com.appiancorp.suiteapi.expression")\[\] parameters)

        Sets the parameters for the function

        Parameters:

        `parameters` - an array of `FunctionParameter` objects representing the parameters to set for the function

        See Also:

        -   [`FunctionParameter`](FunctionParameter.html "class in com.appiancorp.suiteapi.expression")

    -   ### addFunctionParameter

        public void addFunctionParameter([FunctionParameter](FunctionParameter.html "class in com.appiancorp.suiteapi.expression") parameter)

        Adds a parameter to the function's parameters.

        Parameters:

        `parameter` - The parameter to add.

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the unique name of the function

        Returns:

        Unique String name of function

    -   ### getFullName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFullName()

        Gets a name with both domain and name in it but only if [`getDomain()`](#getDomain\(\)) is not null or empty. Otherwise, this returns the same as [`getName()`](#getName\(\)) returns.

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Sets the unique name of the function

        Parameters:

        `name` - Unique String name of function

    -   ### getDomain

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDomain()

        Returns the domain of this function. The domain qualifies the name of the function. The syntax is domain!name. Domain examples are "fn", "pv", "a", etc.

    -   ### setDomain

        public void setDomain([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") domain)

        Sets the domain of this function. This value cannot be updated on the server.

    -   ### isUnlimitedParameters

        public boolean isUnlimitedParameters()

        Gets `true` or `false` depending on whether the function can have unlimited parameters

        Returns:

        `true` or `false` if function can have unlimited parameters or not

    -   ### setUnlimitedParameters

        public void setUnlimitedParameters(boolean parameters)

        Sets `true` or `false` depending on whether the function can have unlimited parameters

        Parameters:

        `parameters` - `true` or `false` if function can have unlimited parameters or not

    -   ### getOutputType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getOutputType()

    -   ### setOutputType

        public void setOutputType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") outputType)

    -   ### getI18nKey

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getI18nKey()

    -   ### setI18nKey

        public void setI18nKey([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") i18nKey)

    -   ### isHiddenFromAutosuggest

        public boolean isHiddenFromAutosuggest()

        Gets `true` or `false` depending on whether the function should be hidden from autosuggest

    -   ### setHiddenFromAutosuggest

        public void setHiddenFromAutosuggest(boolean hiddenFromAutosuggest)

        Sets `true` or `false` depending on whether the function should be hidden from autosuggest

    -   ### isTranslatableParameters

        public boolean isTranslatableParameters()

        Gets `true` or `false` depending on whether the function can have translatable parameters

        Returns:

        `true` or `false` if function can have translatable parameters or not

    -   ### setTranslatableParameters

        public void setTranslatableParameters(boolean translatableParameters)

        Sets `true` or `false` depending on whether the function can have translatable parameters

        Parameters:

        `parameters` - `true` or `false` if function can have translatable parameters or not

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### compareTo

        public int compareTo([Function](Function.html "class in com.appiancorp.suiteapi.expression") o)

        Specified by:

        `[compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html#compareTo\(T\) "class or interface in java.lang")` in interface `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Function](Function.html "class in com.appiancorp.suiteapi.expression")>`

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        String for debugging purposes

    -   ### getOutputSystemTypename

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getOutputSystemTypename()

        Return the outputTypename of the function.

        Returns:

        the outputTypename of the function

    -   ### setOutputSystemTypename

        public void setOutputSystemTypename([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") outputSystemTypename)

        Set the outputTypename of the function. This attribute is not required and it is mutually exclusive with outputType. Use the outputTypename instead of the outputType if the output type is not a built-in system type like Integer or String. Setting the outputTypeName triggers retrieving the actual type from the outputTypename and setting the outputType attribute.

        Parameters:

        `outputTypename` -

        See Also:

        -   [`AppianType`](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")