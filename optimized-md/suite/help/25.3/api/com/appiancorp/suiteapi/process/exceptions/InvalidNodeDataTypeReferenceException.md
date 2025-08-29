---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/exceptions/InvalidNodeDataTypeReferenceException.html
original_path: api/com/appiancorp/suiteapi/process/exceptions/InvalidNodeDataTypeReferenceException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.exceptions](package-summary.html)

# Class InvalidNodeDataTypeReferenceException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[java.lang.RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException](../../common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

[com.appiancorp.suiteapi.type.exceptions.InvalidTypeException](../../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

[com.appiancorp.suiteapi.type.exceptions.InvalidTypeReferenceException](../../type/exceptions/InvalidTypeReferenceException.html "class in com.appiancorp.suiteapi.type.exceptions")

com.appiancorp.suiteapi.process.exceptions.InvalidNodeDataTypeReferenceException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class InvalidNodeDataTypeReferenceException extends [InvalidTypeReferenceException](../../type/exceptions/InvalidTypeReferenceException.html "class in com.appiancorp.suiteapi.type.exceptions")

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.exceptions.InvalidNodeDataTypeReferenceException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[InvalidNodeDataTypeReferenceException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.String%5B%5D,javax.xml.namespace.QName%5B%5D\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] nodeData_, [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")[] typesNames_)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    See [`AppianException.getErrorCode()`](../../common/exceptions/AppianException.html#getErrorCode\(\))

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    See [`AppianException.getErrorCodeArguments(Locale)`](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getNodeData](#getNodeData\(\))()`

    `[LocaleString](../../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getNodeName](#getNodeName\(\))()`

    `void`

    `[setNodeName](#setNodeName\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../../common/LocaleString.html "class in com.appiancorp.suiteapi.common") nodeName_)`

    ### Methods inherited from class com.appiancorp.suiteapi.type.exceptions.[InvalidTypeReferenceException](../../type/exceptions/InvalidTypeReferenceException.html "class in com.appiancorp.suiteapi.type.exceptions")

    `[getErrorCodeArguments](../../type/exceptions/InvalidTypeReferenceException.html#getErrorCodeArguments\(\)), [getTypesNames](../../type/exceptions/InvalidTypeReferenceException.html#getTypesNames\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianRuntimeException](../../common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[equals](../../common/exceptions/AppianRuntimeException.html#equals\(java.lang.Object\)), [getCause](../../common/exceptions/AppianRuntimeException.html#getCause\(\)), [getErrorCodeArgumentsAsStringArray](../../common/exceptions/AppianRuntimeException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../common/exceptions/AppianRuntimeException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../common/exceptions/AppianRuntimeException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../common/exceptions/AppianRuntimeException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../common/exceptions/AppianRuntimeException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../common/exceptions/AppianRuntimeException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../common/exceptions/AppianRuntimeException.html#getMessage\(\)), [getStackTrace](../../common/exceptions/AppianRuntimeException.html#getStackTrace\(\)), [hashCode](../../common/exceptions/AppianRuntimeException.html#hashCode\(\)), [initCause](../../common/exceptions/AppianRuntimeException.html#initCause\(java.lang.Throwable\)), [isDelegateInstanceOf](../../common/exceptions/AppianRuntimeException.html#isDelegateInstanceOf\(java.lang.Class\)), [printStackTrace](../../common/exceptions/AppianRuntimeException.html#printStackTrace\(\)), [printStackTrace](../../common/exceptions/AppianRuntimeException.html#printStackTrace\(java.io.PrintStream\)), [printStackTrace](../../common/exceptions/AppianRuntimeException.html#printStackTrace\(java.io.PrintWriter\)), [setStackTrace](../../common/exceptions/AppianRuntimeException.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\)), [toAppianException](../../common/exceptions/AppianRuntimeException.html#toAppianException\(\)), [toString](../../common/exceptions/AppianRuntimeException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### InvalidNodeDataTypeReferenceException

        public InvalidNodeDataTypeReferenceException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] nodeData\_, [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")\[\] typesNames\_)

-   ## Method Details

    -   ### getNodeName

        public [LocaleString](../../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getNodeName()

    -   ### setNodeName

        public void setNodeName([LocaleString](../../common/LocaleString.html "class in com.appiancorp.suiteapi.common") nodeName\_)

    -   ### getNodeData

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getNodeData()

    -   ### getErrorCode

        public [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") getErrorCode()

        Description copied from class: `[AppianRuntimeException](../../common/exceptions/AppianRuntimeException.html#getErrorCode\(\))`

        See [`AppianException.getErrorCode()`](../../common/exceptions/AppianException.html#getErrorCode\(\))

        Overrides:

        `[getErrorCode](../../type/exceptions/InvalidTypeReferenceException.html#getErrorCode\(\))` in class `[InvalidTypeReferenceException](../../type/exceptions/InvalidTypeReferenceException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### getErrorCodeArguments

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Description copied from class: `[AppianRuntimeException](../../common/exceptions/AppianRuntimeException.html#getErrorCodeArguments\(java.util.Locale\))`

        See [`AppianException.getErrorCodeArguments(Locale)`](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\))

        Overrides:

        `[getErrorCodeArguments](../../common/exceptions/AppianRuntimeException.html#getErrorCodeArguments\(java.util.Locale\))` in class `[AppianRuntimeException](../../common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")`