---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/AppianError.html
original_path: api/com/appiancorp/exceptions/AppianError.html
version: "25.3"
title: "Class AppianError"
page_id: "api/com/appiancorp/exceptions/AppianError"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.exceptions](package-summary.html)

# Class AppianError

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.exceptions.AppianError

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[AppianResponseError](AppianResponseError.html "class in com.appiancorp.exceptions")`

* * *

@GwtCompatible public class AppianError extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This class holds information about an error. The text held in this class is expected to be localized.

See Also:

-   [Serialized Form](../../../serialized-form.html#com.appiancorp.exceptions.AppianError)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions")`

    A builder to create instances of [`AppianError`](AppianError.html "class in com.appiancorp.exceptions").

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected [AppianError](AppianError.html "class in com.appiancorp.exceptions")`

    `[cause](#cause)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[CAUSE](#CAUSE)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[code](#code)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[CODE](#CODE)`

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[data](#data)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DATA](#DATA)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[details](#details)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DETAILS](#DETAILS)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ERROR_ORIGINAL_MESSAGE_WITH_ERROR_CODE](#ERROR_ORIGINAL_MESSAGE_WITH_ERROR_CODE)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[message](#message)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[MESSAGE](#MESSAGE)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[originalMessageWithErrorCode](#originalMessageWithErrorCode)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[title](#title)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TITLE](#TITLE)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[AppianError](#%3Cinit%3E\(\))()`

    `[AppianError](#%3Cinit%3E\(java.lang.String,java.lang.String,java.lang.String,java.lang.String,com.appiancorp.exceptions.AppianError\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details, [AppianError](AppianError.html "class in com.appiancorp.exceptions") cause)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static <T extends [Iterable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Iterable.html "class or interface in java.lang")<[AppianError](AppianError.html "class in com.appiancorp.exceptions")>>   T`

    `[collapseToNull](#collapseToNull\(T\))(T errors)`

    If the given collection is `null`, or empty, or contains only `null` items, returns `null`.

    `static com.google.common.base.Equivalence<[AppianError](AppianError.html "class in com.appiancorp.exceptions")>`

    `[equalDataCheck](#equalDataCheck\(\))()`

    Returns an `Equivalence` that compares all fields of [`AppianError`](AppianError.html "class in com.appiancorp.exceptions").

    `[AppianError](AppianError.html "class in com.appiancorp.exceptions")`

    `[getCause](#getCause\(\))()`

    Returns the lower-level error that caused this error.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCode](#getCode\(\))()`

    Returns the unique code identifying the error.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getData](#getData\(\))()`

    Returns any further data required to successfully process the error.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDetails](#getDetails\(\))()`

    Returns detailed information about the error (for example, metadata such as ids/uuids).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(\))()`

    Returns the error message suitable for end users.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessageWithCode](#getMessageWithCode\(\))()`

    Returns the [`error message`](#getMessage\(\)) concatenated with the [`error code`](#getCode\(\)).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getOriginalMessageWithErrorCode](#getOriginalMessageWithErrorCode\(\))()`

    Returns the original error message and error code if the exception was wrapped.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTitle](#getTitle\(\))()`

    Returns the error title.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.exceptions.AppianError.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

    -   ### CODE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") CODE

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.exceptions.AppianError.CODE)

    -   ### TITLE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TITLE

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.exceptions.AppianError.TITLE)

    -   ### MESSAGE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") MESSAGE

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.exceptions.AppianError.MESSAGE)

    -   ### DETAILS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DETAILS

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.exceptions.AppianError.DETAILS)

    -   ### ERROR\_ORIGINAL\_MESSAGE\_WITH\_ERROR\_CODE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ERROR\_ORIGINAL\_MESSAGE\_WITH\_ERROR\_CODE

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.exceptions.AppianError.ERROR_ORIGINAL_MESSAGE_WITH_ERROR_CODE)

    -   ### CAUSE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") CAUSE

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.exceptions.AppianError.CAUSE)

    -   ### DATA

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DATA

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.exceptions.AppianError.DATA)

    -   ### code

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code

    -   ### title

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title

    -   ### message

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message

    -   ### details

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details

    -   ### cause

        protected [AppianError](AppianError.html "class in com.appiancorp.exceptions") cause

    -   ### data

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") data

    -   ### originalMessageWithErrorCode

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") originalMessageWithErrorCode

-   ## Constructor Details

    -   ### AppianError

        protected AppianError()

    -   ### AppianError

        public AppianError([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details, [AppianError](AppianError.html "class in com.appiancorp.exceptions") cause)

-   ## Method Details

    -   ### getCode

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCode()

        Returns the unique code identifying the error.

    -   ### getTitle

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTitle()

        Returns the error title.

    -   ### getMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessage()

        Returns the error message suitable for end users.

    -   ### getDetails

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDetails()

        Returns detailed information about the error (for example, metadata such as ids/uuids). This information is meant for designers or administrators.

    -   ### getCause

        public [AppianError](AppianError.html "class in com.appiancorp.exceptions") getCause()

        Returns the lower-level error that caused this error. Returns `null` if this error is the root error.

    -   ### getMessageWithCode

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessageWithCode()

        Returns the [`error message`](#getMessage\(\)) concatenated with the [`error code`](#getCode\(\)).

    -   ### getData

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getData()

        Returns any further data required to successfully process the error.

    -   ### getOriginalMessageWithErrorCode

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getOriginalMessageWithErrorCode()

        Returns the original error message and error code if the exception was wrapped.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### collapseToNull

        public static <T extends [Iterable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Iterable.html "class or interface in java.lang")<[AppianError](AppianError.html "class in com.appiancorp.exceptions")\>> T collapseToNull(T errors)

        If the given collection is `null`, or empty, or contains only `null` items, returns `null`. Otherwise, returns the original collection unchanged.

    -   ### equalDataCheck

        public static com.google.common.base.Equivalence<[AppianError](AppianError.html "class in com.appiancorp.exceptions")\> equalDataCheck()

        Returns an `Equivalence` that compares all fields of [`AppianError`](AppianError.html "class in com.appiancorp.exceptions").