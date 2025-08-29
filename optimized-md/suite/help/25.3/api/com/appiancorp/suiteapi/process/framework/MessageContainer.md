---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/MessageContainer.html
original_path: api/com/appiancorp/suiteapi/process/framework/MessageContainer.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Interface MessageContainer

* * *

public interface MessageContainer

Container populated with error messages by the `validate` or `onSave` methods in a smart service class that extends [`AppianSmartService`](AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework"). If the `MessageContainer` contains any error messages, the process execution layer will prevent the activity from executing and display the validation messages added using `addError`.

See Also:

-   [`AppianSmartService.validate(MessageContainer)`](AppianSmartService.html#validate\(com.appiancorp.suiteapi.process.framework.MessageContainer\))
-   [`AppianSmartService.onSave(MessageContainer)`](AppianSmartService.html#onSave\(com.appiancorp.suiteapi.process.framework.MessageContainer\))
-   `Validatable`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addError](#addError\(java.lang.String,java.lang.String,java.lang.Object...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") acpKey, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") messageKey, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... messageValues)`

    Add an error to the container.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getErrorMessage](#getErrorMessage\(\))()`

    Gives the error messages that were added to the container as a single string with "\[" and "\]" delineating the messages.

    `boolean`

    `[isEmpty](#isEmpty\(\))()`

    Called by the process execution layer to determine if there are any validation errors that would prevent the smart service's `run` method from executing.

-   ## Method Details

    -   ### addError

        void addError([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") acpKey, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") messageKey, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... messageValues)

        Add an error to the container. Doing so will cause the smart service's `run` method to not be executed and will return the error messages to the user in the form (for attended nodes) or sent via alert for unattended nodes.

        Parameters:

        `acpKey` - the name of the ACP associated with the validation error. All errors must be associated with an ACP.

        `messageKey` - the key to the error message in the bundle

        `messageValues` - the parameters to be used with the message bundle to create the full message.

    -   ### isEmpty

        boolean isEmpty()

        Called by the process execution layer to determine if there are any validation errors that would prevent the smart service's `run` method from executing.

        Returns:

        whether or not errors have been added to the container

    -   ### getErrorMessage

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getErrorMessage()

        Gives the error messages that were added to the container as a single string with "\[" and "\]" delineating the messages. Used by the process execution layer to create the message part of the error alert.

        Returns:

        a String representation of all errors added to the container