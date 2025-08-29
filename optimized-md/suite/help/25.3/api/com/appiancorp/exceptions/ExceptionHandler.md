---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/ExceptionHandler.html
original_path: api/com/appiancorp/exceptions/ExceptionHandler.html
version: "25.3"
---

Package [com.appiancorp.exceptions](package-summary.html)

# Interface ExceptionHandler

* * *

public interface ExceptionHandler

Encapsulates reusable logic for handling exceptions.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[canHandle](#canHandle\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t)`

    `void`

    `[handle](#handle\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t)`

    Handles the given Throwable.

-   ## Method Details

    -   ### canHandle

        boolean canHandle([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t)

        Returns:

        true if this ExceptionHandler knows how to handle the given Throwable, and false otherwise.

    -   ### handle

        void handle([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t)

        Handles the given Throwable. This ExceptionHandler may throw an exception of its own if canHandle(t) returns false.