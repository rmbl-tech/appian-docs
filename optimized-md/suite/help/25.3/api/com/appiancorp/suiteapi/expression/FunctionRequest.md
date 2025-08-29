---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/FunctionRequest.html
original_path: api/com/appiancorp/suiteapi/expression/FunctionRequest.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.expression](package-summary.html)

# Class FunctionRequest

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.expression.FunctionRequest

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class FunctionRequest extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This class encapsulates a request by a user for a function to be evaluated.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.expression.FunctionRequest)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[FROM_DESIGN](#FROM_DESIGN)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[FROM_EXECUTION](#FROM_EXECUTION)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[FunctionRequest](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDomain](#getDomain\(\))()`

    Gets the domain that will be used to look up the function.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getExpressionId](#getExpressionId\(\))()`

    Gets the unique id of expression needed so asynchronous calls can be made

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFunction](#getFunction\(\))()`

    Gets the function name will be lower cased, as Interface is case insensitive

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFunctionNameWithDomain](#getFunctionNameWithDomain\(\))()`

    Gets the function name together with the domain.

    `[NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[]`

    `[getFunctionParameters](#getFunctionParameters\(\))()`

    Gets parameters that will be arguments to Java function

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getOriginServerType](#getOriginServerType\(\))()`

    Gets the type of server that the function request came from.

    `void`

    `[setDomain](#setDomain\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") domain)`

    Sets the domain that will be used to look up the function.

    `void`

    `[setExpressionId](#setExpressionId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the unique id of expression needed so asynchronous calls can be made

    `void`

    `[setFunction](#setFunction\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") function_)`

    Sets the function name will be lower cased, as Interface is case insensitive

    `void`

    `[setFunctionParameters](#setFunctionParameters\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] parameters_)`

    Sets parameters that will be arguments to Java function

    `void`

    `[setOriginServerType](#setOriginServerType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") originServerType_)`

    Sets the type of server that the function request came from.

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toFunctionString](#toFunctionString\(java.lang.String,com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") _function, [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] _functionParameters)`

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toFunctionString](#toFunctionString\(java.lang.String,java.lang.String,com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") domain, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") _function, [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] _functionParameters)`

    Creates an Appian expression for the specified function and parameters

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns the String representation of the Function Request object.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### FROM\_EXECUTION

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") FROM\_EXECUTION

    -   ### FROM\_DESIGN

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") FROM\_DESIGN

-   ## Constructor Details

    -   ### FunctionRequest

        public FunctionRequest()

-   ## Method Details

    -   ### getExpressionId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getExpressionId()

        Gets the unique id of expression needed so asynchronous calls can be made

        Returns:

        Unique id of expression being evaluated by Java

    -   ### setExpressionId

        public void setExpressionId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the unique id of expression needed so asynchronous calls can be made

        Parameters:

        `id_` - Unique id of expression

    -   ### getFunction

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFunction()

        Gets the function name will be lower cased, as Interface is case insensitive

        Returns:

        String function name

    -   ### setFunction

        public void setFunction([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") function\_)

        Sets the function name will be lower cased, as Interface is case insensitive

        Parameters:

        `function_` - Function name

    -   ### getDomain

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDomain()

        Gets the domain that will be used to look up the function. Can be null or empty string, in which case, the fn! domain should be assumed

        Returns:

        String domain to use

    -   ### setDomain

        public void setDomain([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") domain)

        Sets the domain that will be used to look up the function. Not setting this method, or setting a null or empty string will result in the fn! domain being assumed.

        Parameters:

        `domain` - String domain

    -   ### getFunctionNameWithDomain

        @Transient public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFunctionNameWithDomain()

        Gets the function name together with the domain. The wildcard domain "all" will be ommitted from the result.

        Returns:

        the String representation of the function name together with the domain in the standard domain!function format

    -   ### getFunctionParameters

        public [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] getFunctionParameters()

        Gets parameters that will be arguments to Java function

        Returns:

        function parameters with type and value

    -   ### setFunctionParameters

        public void setFunctionParameters([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] parameters\_)

        Sets parameters that will be arguments to Java function

        Parameters:

        `parameters_` - function parameters with type and value

    -   ### getOriginServerType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getOriginServerType()

        Gets the type of server that the function request came from.

        Returns:

        ServerType that the request came from.

    -   ### setOriginServerType

        public void setOriginServerType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") originServerType\_)

        Sets the type of server that the function request came from.

        Parameters:

        `originServerType_` - type of server that request came from.

    -   ### toFunctionString

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toFunctionString([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_function, [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] \_functionParameters)

    -   ### toFunctionString

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toFunctionString([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") domain, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_function, [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] \_functionParameters)

        Creates an Appian expression for the specified function and parameters

        Parameters:

        `domain` - the domain of the function

        `_function` - the name of the function

        `_functionParameters` - - An array of function parameters

        Returns:

        a String representation of the a function call in the expressions language

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns the String representation of the Function Request object. This will specify the function's Expression ID, context, function name and parameters.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        String the String representation of the object