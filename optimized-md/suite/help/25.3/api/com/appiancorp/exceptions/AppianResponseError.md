---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/AppianResponseError.html
original_path: api/com/appiancorp/exceptions/AppianResponseError.html
version: "25.3"
---

Package [com.appiancorp.exceptions](package-summary.html)

# Class AppianResponseError

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.exceptions.AppianError](AppianError.html "class in com.appiancorp.exceptions")

com.appiancorp.exceptions.AppianResponseError

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public final class AppianResponseError extends [AppianError](AppianError.html "class in com.appiancorp.exceptions")

See Also:

-   [Serialized Form](../../../serialized-form.html#com.appiancorp.exceptions.AppianResponseError)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions")`

    A builder to create instances of [`AppianResponseError`](AppianResponseError.html "class in com.appiancorp.exceptions").

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.exceptions.[AppianError](AppianError.html "class in com.appiancorp.exceptions")

    `[cause](AppianError.html#cause), [CAUSE](AppianError.html#CAUSE), [code](AppianError.html#code), [CODE](AppianError.html#CODE), [data](AppianError.html#data), [DATA](AppianError.html#DATA), [details](AppianError.html#details), [DETAILS](AppianError.html#DETAILS), [ERROR_ORIGINAL_MESSAGE_WITH_ERROR_CODE](AppianError.html#ERROR_ORIGINAL_MESSAGE_WITH_ERROR_CODE), [LOCAL_PART](AppianError.html#LOCAL_PART), [message](AppianError.html#message), [MESSAGE](AppianError.html#MESSAGE), [originalMessageWithErrorCode](AppianError.html#originalMessageWithErrorCode), [QNAME](AppianError.html#QNAME), [title](AppianError.html#title), [TITLE](AppianError.html#TITLE)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[getHttpCode](#getHttpCode\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getResponseBody](#getResponseBody\(\))()`

    ### Methods inherited from class com.appiancorp.exceptions.[AppianError](AppianError.html "class in com.appiancorp.exceptions")

    `[collapseToNull](AppianError.html#collapseToNull\(T\)), [equalDataCheck](AppianError.html#equalDataCheck\(\)), [getCause](AppianError.html#getCause\(\)), [getCode](AppianError.html#getCode\(\)), [getData](AppianError.html#getData\(\)), [getDetails](AppianError.html#getDetails\(\)), [getMessage](AppianError.html#getMessage\(\)), [getMessageWithCode](AppianError.html#getMessageWithCode\(\)), [getOriginalMessageWithErrorCode](AppianError.html#getOriginalMessageWithErrorCode\(\)), [getTitle](AppianError.html#getTitle\(\)), [toString](AppianError.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### getResponseBody

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getResponseBody()

    -   ### getHttpCode

        public int getHttpCode()