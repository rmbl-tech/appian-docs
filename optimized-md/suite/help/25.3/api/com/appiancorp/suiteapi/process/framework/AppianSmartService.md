---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/AppianSmartService.html
original_path: api/com/appiancorp/suiteapi/process/framework/AppianSmartService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Class AppianSmartService

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.framework.AppianSmartService

* * *

public abstract class AppianSmartService extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Abstract class to extend when creating a custom smart service.

Input parameters are defined by using Java bean setters, with an optional getter. Output parameters are defined by using a Java bean getter, without an explicit setter. The name of the input/output parameter is defined as either the name of the bean, or the value of the `@Name` annotation. Additional options, such as required-ness, can be overridden using the `@Input` annotation.

When the smart service is executed, the implementation in the `run` method will be executed.

Sub-classes must only provide one constructor; that constructor can take any combination of Appian services, as well as `SmartServiceContext`.

See Also:

-   [`Name`](../../common/Name.html "annotation interface in com.appiancorp.suiteapi.common")
-   [`Input`](Input.html "annotation interface in com.appiancorp.suiteapi.process.framework")
-   [`PaletteInfo`](../palette/PaletteInfo.html "annotation interface in com.appiancorp.suiteapi.process.palette")
-   [`SmartServiceContext`](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[START_PROCESS_FROM_PORTAL](#START_PROCESS_FROM_PORTAL)`

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[START_PROCESS_FROM_PORTAL_TRUE](#START_PROCESS_FROM_PORTAL_TRUE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AppianSmartService](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[NamedTypedValue](../../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[getDynamicOutputs](#getDynamicOutputs\(\))()`

    Deprecated.

    It is not possible to create a node output dynamically at design time.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getProcessIdStartedFrom](#getProcessIdStartedFrom\(\))()`

    `void`

    `[onSave](#onSave\(com.appiancorp.suiteapi.process.framework.MessageContainer\))([MessageContainer](MessageContainer.html "interface in com.appiancorp.suiteapi.process.framework") messages)`

    Invoked when an attended form is saved.

    `abstract void`

    `[run](#run\(\))()`

    Override this method to provide the main logic for the custom smart service.

    `void`

    `[setDynamicInputs](#setDynamicInputs\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [NamedTypedValue](../../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")> inputs)`

    Dynamic inputs, those added by the designer using the New Node Input functionality in the UI, can be used by the smart service by overriding the `setDynamicInputs` method.

    `void`

    `[setProcessIdStartedFrom](#setProcessIdStartedFrom\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processIdStartedFrom)`

    `void`

    `[validate](#validate\(com.appiancorp.suiteapi.process.framework.MessageContainer\))([MessageContainer](MessageContainer.html "interface in com.appiancorp.suiteapi.process.framework") messages)`

    Override with custom validation logic to validate the inputs and any other pre-requisites to ensure a successful completion of the smart service.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### START\_PROCESS\_FROM\_PORTAL

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") START\_PROCESS\_FROM\_PORTAL

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.framework.AppianSmartService.START_PROCESS_FROM_PORTAL)

    -   ### START\_PROCESS\_FROM\_PORTAL\_TRUE

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") START\_PROCESS\_FROM\_PORTAL\_TRUE

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.framework.AppianSmartService.START_PROCESS_FROM_PORTAL_TRUE)

-   ## Constructor Details

    -   ### AppianSmartService

        public AppianSmartService()

-   ## Method Details

    -   ### setDynamicInputs

        public void setDynamicInputs([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [NamedTypedValue](../../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\> inputs)

        Dynamic inputs, those added by the designer using the New Node Input functionality in the UI, can be used by the smart service by overriding the `setDynamicInputs` method. The body of the method could, for instance, be used to store the inputs into a member variable that can then be used in the body of the run implementation.

        Parameters:

        `inputs` - the inputs on the data tab of the node that were added by the model designer. This parameter is populated by the process execution layer for classes that extend AppianSmartService.

    -   ### getDynamicOutputs

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[NamedTypedValue](../../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\> getDynamicOutputs()

        Deprecated.

        It is not possible to create a node output dynamically at design time.

        Dynamic outputs, those that aren't defined as getter methods in the smart service that extends AppianSmartService, can be dynamically created by logic in the smart service implementation in the `run` method and added to the runtime results by calling `getDynamicOutputs().add()`. Any output added in this way must match the name of a node output created dynamically at design time in order for the value to be available for output mapping.

    -   ### validate

        public void validate([MessageContainer](MessageContainer.html "interface in com.appiancorp.suiteapi.process.framework") messages)

        Override with custom validation logic to validate the inputs and any other pre-requisites to ensure a successful completion of the smart service. This method is always invoked for attended and unattended activities prior to [`run()`](#run\(\)). If the logic of the method adds any errors to the `MessageContainer`, the node will fail to complete and the errors will be displayed to the user (in the case of an attended node) or displayed in the alert (in the case of an unattended node).

        Parameters:

        `messages` - the `MessageContainer` that will hold the error messages displayed as the result of failed validation. The parameter is provided by the process execution layer.

        See Also:

        -   [`onSave(com.appiancorp.suiteapi.process.framework.MessageContainer)`](#onSave\(com.appiancorp.suiteapi.process.framework.MessageContainer\))
        -   [`run()`](#run\(\))

    -   ### onSave

        public void onSave([MessageContainer](MessageContainer.html "interface in com.appiancorp.suiteapi.process.framework") messages)

        Invoked when an attended form is saved. Like the `validate` method, this method allows for logic to validate inputs or other pre-requisites. Unlike `validate`, this is only invoked on attended activities when the user chooses to save the form instead of submitting it. Only override this method if there are strict reasons why a form cannot be saved with invalid values in the inputs. From a usability perspective, it is preferable to allow a user to save a form in an invalid state instead of preventing the save with validation messages.

        Parameters:

        `messages` - the `MessageContainer` that will hold the error messages displayed as the result of failed validation. The parameter is provided by the process execution layer.

        See Also:

        -   [`validate(com.appiancorp.suiteapi.process.framework.MessageContainer)`](#validate\(com.appiancorp.suiteapi.process.framework.MessageContainer\))

    -   ### run

        public abstract void run() throws [SmartServiceException](../exceptions/SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Override this method to provide the main logic for the custom smart service. The `run` method is invoked when the node is executed, after calling all setters and the `validate` method. Throw a SmartServiceException in the body of your method to indicate that the smart service should fail to complete. Note: no automatic cleanup will be conducted, so if your smart service changed the state of persisted data before throwing the exception, that change will remain.

        Throws:

        `[SmartServiceException](../exceptions/SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")`

        See Also:

        -   [`SmartServiceException`](../exceptions/SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

    -   ### setProcessIdStartedFrom

        public void setProcessIdStartedFrom([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processIdStartedFrom)

        Parameters:

        `processIdStartedFrom` -

    -   ### getProcessIdStartedFrom

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getProcessIdStartedFrom()

        Returns:

        the id of the process that started this smart service