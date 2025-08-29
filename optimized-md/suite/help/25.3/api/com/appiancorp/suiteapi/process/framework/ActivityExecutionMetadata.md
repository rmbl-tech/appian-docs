---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/ActivityExecutionMetadata.html
original_path: api/com/appiancorp/suiteapi/process/framework/ActivityExecutionMetadata.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Class ActivityExecutionMetadata

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.framework.ActivityExecutionMetadata

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ActivityExecutionMetadata extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Metadata attributes of an activity that are needed during its execution. Generally, these objects are retrieved from API calls on the ProcessExecutionService, so developers should not interact with the setter methods.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.framework.ActivityExecutionMetadata)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ActivityExecutionMetadata](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAdditionalContext](#addAdditionalContext\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value)`

    Add additional context passed to the node from an external service, displacing only an item with the same key.

    `void`

    `[addAdditionalContext](#addAdditionalContext\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> additionalContext)`

    Add additional context passed to the node from an external service, displacing only items with the same key.

    `[ActivityProperties](../ActivityProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getActivityProperties](#getActivityProperties\(\))()`

    Gets the properties of an activity, such as the task properties, process properties, and process model properties for a task, the process it is in, and the model for that process.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getAdditionalContext](#getAdditionalContext\(\))()`

    A map of additional context that is passed to the node from an external service.

    `int`

    `[getAsyncState](#getAsyncState\(\))()`

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getChainingTimeout](#getChainingTimeout\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getConfirmationUrl](#getConfirmationUrl\(\))()`

    Gets the url of the page that should be shown to the user who performs an attended task if that task completes successfully.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getExecutionEnvironment](#getExecutionEnvironment\(\))()`

    The environment in which the activity executes, such as process execution engine or Java.

    `[FormConfig](../forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getForm](#getForm\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGrantorUsername](#getGrantorUsername\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getHelper](#getHelper\(\))()`

    `[ActivityParameterHelper](ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework")`

    `[getHelperInstance](#getHelperInstance\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getJavaActivityClassname](#getJavaActivityClassname\(\))()`

    Gets the fully qualified class name of the java class that embodies the activity.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getOutputExpressions](#getOutputExpressions\(\))()`

    `[ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[]`

    `[getParameters](#getParameters\(\))()`

    Gets the input parameters on which the activity operates.

    `int`

    `[getPrecedingChainedActivity](#getPrecedingChainedActivity\(\))()`

    `[ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getReturnVariables](#getReturnVariables\(\))()`

    Gets the variables whose values are produced during activity execution.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUser](#getUser\(\))()`

    The user who executes the activity

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getWorkId](#getWorkId\(\))()`

    Gets the workId of an activity if it's managed by the workq, null otherwise.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getWorkToken](#getWorkToken\(\))()`

    Gets the unique disambiguation token of an activity if it's managed by the workq, null otherwise

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getWorkType](#getWorkType\(\))()`

    Gets the work type code of an activity if it's managed by the workq, null otherwise

    `boolean`

    `[hasPrecedingChainedActivity](#hasPrecedingChainedActivity\(\))()`

    `boolean`

    `[isAsynchronous](#isAsynchronous\(\))()`

    `boolean`

    `[isBackButtonEnabled](#isBackButtonEnabled\(\))()`

    `boolean`

    `[isChained](#isChained\(\))()`

    `boolean`

    `[isFormDeleted](#isFormDeleted\(\))()`

    `boolean`

    `[isLingering](#isLingering\(\))()`

    Returns `true` if this is a Quick Task, `false` otherwise.

    `boolean`

    `[isOnCompleteKeepFormData](#isOnCompleteKeepFormData\(\))()`

    `void`

    `[setActivityProperties](#setActivityProperties\(com.appiancorp.suiteapi.process.ActivityProperties\))([ActivityProperties](../ActivityProperties.html "class in com.appiancorp.suiteapi.process") activityProperties_)`

    `void`

    `[setAdditionalContext](#setAdditionalContext\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> additionalContext_)`

    Deprecated.

    see addAdditionalContext to not displace existing context

    `void`

    `[setAsynchronous](#setAsynchronous\(boolean\))(boolean asynchronous_)`

    `void`

    `[setAsyncState](#setAsyncState\(int\))(int asyncStateCode)`

    `void`

    `[setBackButtonEnabled](#setBackButtonEnabled\(boolean\))(boolean backButtonEnabled_)`

    `void`

    `[setChained](#setChained\(boolean\))(boolean chained_)`

    `void`

    `[setChainingTimeout](#setChainingTimeout\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") chainingTimeout)`

    `void`

    `[setConfirmationUrl](#setConfirmationUrl\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") confirmationUrl_)`

    Sets the url of the page that should be shown to the user who performs an attended task if that task completes successfully.

    `void`

    `[setExecutionEnvironment](#setExecutionEnvironment\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") executionEnvironment_)`

    The environment in which the activity executes, such as process execution engine or Java.

    `void`

    `[setForm](#setForm\(com.appiancorp.suiteapi.process.forms.FormConfig\))([FormConfig](../forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") form_)`

    `void`

    `[setFormDeleted](#setFormDeleted\(boolean\))(boolean formDeleted_)`

    `void`

    `[setGrantorUsername](#setGrantorUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)`

    `void`

    `[setHelper](#setHelper\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") helper_)`

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    `void`

    `[setJavaActivityClassname](#setJavaActivityClassname\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") javaActivityClassname_)`

    Sets the fully qualified class name of the java class that embodies the activity.

    `void`

    `[setLingering](#setLingering\(boolean\))(boolean lingering_)`

    `void`

    `[setOnCompleteKeepFormData](#setOnCompleteKeepFormData\(boolean\))(boolean onCompleteKeepFormData_)`

    `void`

    `[setOutputExpressions](#setOutputExpressions\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] outputExpressions)`

    `void`

    `[setParameters](#setParameters\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] parameters_)`

    Sets the input parameters on which the activity operates.

    `void`

    `[setPrecedingChainedActivity](#setPrecedingChainedActivity\(int\))(int precedingChainedActivity_)`

    `void`

    `[setReturnVariables](#setReturnVariables\(com.appiancorp.suiteapi.process.ActivityReturnVariable%5B%5D\))([ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")[] returnVariables_)`

    The variables whose values are produced during activity execution.

    `void`

    `[setUser](#setUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") _user)`

    The user who executes the activity

    `void`

    `[setWorkId](#setWorkId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") workId_)`

    `void`

    `[setWorkToken](#setWorkToken\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") _workToken)`

    `void`

    `[setWorkType](#setWorkType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") workType)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ActivityExecutionMetadata

        public ActivityExecutionMetadata()

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

    -   ### getExecutionEnvironment

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getExecutionEnvironment()

        The environment in which the activity executes, such as process execution engine or Java.

        Returns:

        one of the `ActivityClassSchema.ENVIRONMENT_XXX` constants.

        See Also:

        -   [`ActivityClassSchema`](../ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")

    -   ### setExecutionEnvironment

        public void setExecutionEnvironment([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") executionEnvironment\_)

        The environment in which the activity executes, such as process execution engine or Java.

        Parameters:

        `executionEnvironment_` - one of the `ActivityClassSchema.ENVIRONMENT_XXX` constants.

        See Also:

        -   [`ActivityClassSchema`](../ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")

    -   ### getOutputExpressions

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getOutputExpressions()

        Returns:

        output expressions for the activity, which are full expressions to be evaluated in context of the completed activity. Non-null.

    -   ### setOutputExpressions

        public void setOutputExpressions([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] outputExpressions)

        Parameters:

        `outputExpressions` - the output expressions or the activity, which are full expressions to be evaluated in context of the completed activity.

    -   ### getJavaActivityClassname

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getJavaActivityClassname()

        Gets the fully qualified class name of the java class that embodies the activity. This method is only useful if the execution environment is Java.

        Returns:

        the activity class name

    -   ### setJavaActivityClassname

        public void setJavaActivityClassname([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") javaActivityClassname\_)

        Sets the fully qualified class name of the java class that embodies the activity. This method is only useful if the execution environment is Java.

    -   ### getParameters

        public [ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] getParameters()

        Gets the input parameters on which the activity operates.

        Returns:

        the parameters

    -   ### setParameters

        public void setParameters([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] parameters\_)

        Sets the input parameters on which the activity operates.

    -   ### getConfirmationUrl

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getConfirmationUrl()

        Gets the url of the page that should be shown to the user who performs an attended task if that task completes successfully.

        Returns:

        the confirmation page

    -   ### setConfirmationUrl

        public void setConfirmationUrl([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") confirmationUrl\_)

        Sets the url of the page that should be shown to the user who performs an attended task if that task completes successfully.

    -   ### getReturnVariables

        public [ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] getReturnVariables()

        Gets the variables whose values are produced during activity execution. These values are then stored in the database via a call to `ProcessExecutionService.completeActivity`.

        Returns:

        the results from the execution of the activity

        See Also:

        -   [`SafeActivityReturnVariable`](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")

    -   ### setReturnVariables

        public void setReturnVariables([ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] returnVariables\_)

        The variables whose values are produced during activity execution. These values are then stored in the database via a call to `ProcessExecutionService.completeActivity`.

    -   ### getUser

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUser()

        The user who executes the activity

        Returns:

        the username of the user who executes the activity.

    -   ### setUser

        public void setUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") \_user)

        The user who executes the activity

        Parameters:

        `_user` - the primary key (username) of the user.

    -   ### getActivityProperties

        public [ActivityProperties](../ActivityProperties.html "class in com.appiancorp.suiteapi.process") getActivityProperties()

        Gets the properties of an activity, such as the task properties, process properties, and process model properties for a task, the process it is in, and the model for that process.

        Returns:

        the properties

        See Also:

        -   [`TaskProperties`](../TaskProperties.html "class in com.appiancorp.suiteapi.process")
        -   [`ProcessProperties`](../ProcessProperties.html "class in com.appiancorp.suiteapi.process")
        -   [`ProcessModelProperties`](../ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")

    -   ### setActivityProperties

        public void setActivityProperties([ActivityProperties](../ActivityProperties.html "class in com.appiancorp.suiteapi.process") activityProperties\_)

    -   ### getWorkId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getWorkId()

        Gets the workId of an activity if it's managed by the workq, null otherwise.

    -   ### setWorkId

        public void setWorkId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") workId\_)

    -   ### getWorkToken

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getWorkToken()

        Gets the unique disambiguation token of an activity if it's managed by the workq, null otherwise

    -   ### setWorkToken

        public void setWorkToken([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") \_workToken)

    -   ### getWorkType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getWorkType()

        Gets the work type code of an activity if it's managed by the workq, null otherwise

    -   ### setWorkType

        public void setWorkType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") workType)

    -   ### getGrantorUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGrantorUsername()

    -   ### setGrantorUsername

        public void setGrantorUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)

    -   ### getForm

        public [FormConfig](../forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") getForm()

        Returns:

        the form configuration object which will specify the form that will be used for the activity. Forms can be internal, JSP or dynamic

        See Also:

        -   [`InternalForm`](../forms/InternalForm.html "class in com.appiancorp.suiteapi.process.forms")
        -   [`DynamicForm`](../forms/DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")
        -   [`JSPForm`](../forms/JSPForm.html "class in com.appiancorp.suiteapi.process.forms")

    -   ### setForm

        public void setForm([FormConfig](../forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") form\_)

    -   ### getHelperInstance

        public [ActivityParameterHelper](ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework") getHelperInstance()

        Returns:

        the instantiated Helper class for the activity

    -   ### setHelper

        public void setHelper([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") helper\_)

    -   ### getHelper

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getHelper()

        Returns:

        fully qualified name of the helper class.

    -   ### isAsynchronous

        public boolean isAsynchronous()

        Returns:

        `true` if the activity is asynchronous else `false`. Asynchronous activities do not stall the Process Execution Engine

    -   ### setAsynchronous

        public void setAsynchronous(boolean asynchronous\_)

    -   ### getPrecedingChainedActivity

        public int getPrecedingChainedActivity()

    -   ### hasPrecedingChainedActivity

        public boolean hasPrecedingChainedActivity()

    -   ### setPrecedingChainedActivity

        public void setPrecedingChainedActivity(int precedingChainedActivity\_)

    -   ### isChained

        public boolean isChained()

    -   ### setChained

        public void setChained(boolean chained\_)

    -   ### getChainingTimeout

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getChainingTimeout()

    -   ### setChainingTimeout

        public void setChainingTimeout([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") chainingTimeout)

    -   ### isLingering

        public boolean isLingering()

        Returns `true` if this is a Quick Task, `false` otherwise.

        Returns:

        `true` if it's a Quick Task, `false` otherwise.

    -   ### setLingering

        public void setLingering(boolean lingering\_)

    -   ### isBackButtonEnabled

        public boolean isBackButtonEnabled()

    -   ### setBackButtonEnabled

        public void setBackButtonEnabled(boolean backButtonEnabled\_)

    -   ### isFormDeleted

        public boolean isFormDeleted()

    -   ### setFormDeleted

        public void setFormDeleted(boolean formDeleted\_)

    -   ### isOnCompleteKeepFormData

        public boolean isOnCompleteKeepFormData()

    -   ### setOnCompleteKeepFormData

        public void setOnCompleteKeepFormData(boolean onCompleteKeepFormData\_)

    -   ### getAdditionalContext

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getAdditionalContext()

        A map of additional context that is passed to the node from an external service. This item can be null

    -   ### setAdditionalContext

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setAdditionalContext([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> additionalContext\_)

        Deprecated.

        see addAdditionalContext to not displace existing context

        Parameters:

        `additionalContext_` -

    -   ### addAdditionalContext

        public void addAdditionalContext([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value)

        Add additional context passed to the node from an external service, displacing only an item with the same key.

        Parameters:

        `key` -

        `value` -

    -   ### addAdditionalContext

        public void addAdditionalContext([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> additionalContext)

        Add additional context passed to the node from an external service, displacing only items with the same key.

        Parameters:

        `additionalContext` -

    -   ### getAsyncState

        public int getAsyncState()

    -   ### setAsyncState

        public void setAsyncState(int asyncStateCode)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`