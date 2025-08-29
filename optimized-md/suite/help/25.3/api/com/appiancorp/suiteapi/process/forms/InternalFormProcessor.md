---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/forms/InternalFormProcessor.html
original_path: api/com/appiancorp/suiteapi/process/forms/InternalFormProcessor.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.forms](package-summary.html)

# Interface InternalFormProcessor

* * *

public interface InternalFormProcessor

This interface will allow for the parsing and processing of forms stored in the collaboration center. The documents will be read in from the collaboration center and sent to the correct InternalFormProcessor class. The implementation of this class will have to add either the task id or process model id as a hidden parameters (for attended nodes and process start forms respectively) and then modify the submit action (action in HTML, and the action of the submit button in PDF) to point to the correct URL.

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[buildParameterMap](#buildParameterMap\(javax.servlet.http.HttpServletRequest,com.appiancorp.suiteapi.process.forms.FormElementBinding%5B%5D,com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))(javax.servlet.http.HttpServletRequest q_, [FormElementBinding](FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")[] bindings_, [ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] acps_)`

    Creates a map whose keys are ACP keys (ACP~i) and whose values are the values that match the request parameters whose names are bound the corresponding ACP names.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[buildParameterMap](#buildParameterMap\(javax.servlet.http.HttpServletRequest,com.appiancorp.suiteapi.process.forms.FormElementBinding%5B%5D,com.appiancorp.suiteapi.process.ProcessVariable%5B%5D\))(javax.servlet.http.HttpServletRequest q_, [FormElementBinding](FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")[] bindings_, [ProcessVariable](../ProcessVariable.html "class in com.appiancorp.suiteapi.process")[] pvs_)`

    Creates a map whose keys are process parameter keys (PP~x) and whose values are the values that match the request parameters whose names are bound the corresponding process variable names.

    `com.appiancorp.web.framework.kernel.main.IActionForward`

    `[getAttendedNodeConfirmationResponse](#getAttendedNodeConfirmationResponse\(javax.servlet.http.HttpServletRequest,java.lang.String\))(javax.servlet.http.HttpServletRequest q_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url_)`

    Gets the forward after the task was started successfully

    `com.appiancorp.web.framework.kernel.main.IActionForward`

    `[getProcessStartConfirmationResponse](#getProcessStartConfirmationResponse\(javax.servlet.http.HttpServletRequest,java.lang.Long,java.lang.Long\))(javax.servlet.http.HttpServletRequest q_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId_)`

    Gets the forward after the process was started successfully

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")`

    `[retrieveInputs](#retrieveInputs\(byte%5B%5D\))(byte[] form_)`

    Deprecated.

    Use retrieveInputs([`InputStream`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io")) version instead (deprecated in 6.2).

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[retrieveInputs](#retrieveInputs\(java.io.InputStream\))([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") form_)`

    Gets the list of inputs on the form using an InputStream as the source.

    `byte[]`

    `[transformNodeForm](#transformNodeForm\(byte%5B%5D,java.lang.String,java.util.Map,java.util.Map\))(byte[] originalForm_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") submitAction_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> extraParameters_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")> defaultValues_)`

    The transformNodeForm method will be used for both process start and attended node forms.

-   ## Method Details

    -   ### transformNodeForm

        byte\[\] transformNodeForm(byte\[\] originalForm\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") submitAction\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> extraParameters\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> defaultValues\_)

        The transformNodeForm method will be used for both process start and attended node forms. When modifying the attended node forms, the extraParameters\_ will have a key with String value of $taskId, and its value will be the current task id. For process start forms, again one parameter will be passed in, containing the key $processModelId and the value of the process model id for the process to be started. All extra parameters passed in must be created as hidden inputs on the original form.

        Parameters:

        `originalForm_` - the parsed data of the collaboration document corresponding to the `InternalForm`

        `submitAction_` - the class name of the action to which the form should be submitted

        `extraParameters_` - map of parameter keys with values, that might be injected by the framework as necessary. For example, `taskId` for node start forms, and `processModelId` for process start forms.

        Returns:

        the transformed form with the process specific or node specific information

    -   ### retrieveInputs

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") retrieveInputs(byte\[\] form\_) throws [IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")

        Deprecated.

        Use retrieveInputs([`InputStream`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io")) version instead (deprecated in 6.2).

        Gets the list of inputs on the form.

        Parameters:

        `form_` - the form

        Returns:

        a list of input names on the form

        Throws:

        `[IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")`

    -   ### retrieveInputs

        [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> retrieveInputs([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") form\_) throws [IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")

        Gets the list of inputs on the form using an InputStream as the source. This allows for better performance when handling large files.

        Parameters:

        `form_` - the form

        Returns:

        a list of input names on the form

        Throws:

        `[IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")`

    -   ### buildParameterMap

        [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") buildParameterMap(javax.servlet.http.HttpServletRequest q\_, [FormElementBinding](FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")\[\] bindings\_, [ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] acps\_)

        Creates a map whose keys are ACP keys (ACP~i) and whose values are the values that match the request parameters whose names are bound the corresponding ACP names. Does not support ACPs that are beans and bean arrays.

        Parameters:

        `q_` - an HTTP request, containing request parameters whose names map to the `formInput` property of the `bindings_`

        `bindings_` - a binding of request names to acp names

        `acps_` - the ACPs for the activity being executed

        Returns:

        a map that binds ACP keys to submitted values

    -   ### buildParameterMap

        [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") buildParameterMap(javax.servlet.http.HttpServletRequest q\_, [FormElementBinding](FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")\[\] bindings\_, [ProcessVariable](../ProcessVariable.html "class in com.appiancorp.suiteapi.process")\[\] pvs\_)

        Creates a map whose keys are process parameter keys (PP~x) and whose values are the values that match the request parameters whose names are bound the corresponding process variable names.

        Parameters:

        `q_` - an HTTP request, containing request parameters whose names map to the `formInput` property of the `bindings_`

        `bindings_` - a binding of request names to pv names

        `pvs_` - process variable (parameters)

        Returns:

        a map that binds process parameter keys to submitted values

    -   ### getAttendedNodeConfirmationResponse

        com.appiancorp.web.framework.kernel.main.IActionForward getAttendedNodeConfirmationResponse(javax.servlet.http.HttpServletRequest q\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url\_)

        Gets the forward after the task was started successfully

        Parameters:

        `q_` - the request

        Returns:

        the forward after the task start has been confirmed

    -   ### getProcessStartConfirmationResponse

        com.appiancorp.web.framework.kernel.main.IActionForward getProcessStartConfirmationResponse(javax.servlet.http.HttpServletRequest q\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId\_)

        Gets the forward after the process was started successfully

        Parameters:

        `q_` - the request

        Returns:

        the forward after the process start has been confirmed