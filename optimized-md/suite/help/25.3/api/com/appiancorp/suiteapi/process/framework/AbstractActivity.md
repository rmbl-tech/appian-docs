---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/AbstractActivity.html
original_path: api/com/appiancorp/suiteapi/process/framework/AbstractActivity.html
version: "25.3"
title: "Class AbstractActivity"
page_id: "api/com/appiancorp/suiteapi/process/framework/AbstractActivity"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Class AbstractActivity

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.framework.AbstractActivity

All Implemented Interfaces:

`[SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")`

* * *

public abstract class AbstractActivity extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")

Abstract class to be subclassed when implementing a Java execution environment activity. The subclass will contain the code that actually performs the activity.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `[ActivityExecutionMetadata](ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework")`

    `[_metadata](#_metadata)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AbstractActivity](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")[]`

    `[execute](#execute\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable%5B%5D,java.lang.Object,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] inputs_, [SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")[] outputs_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3; override the other [`execute(ActivityClassParameter[], SafeActivityReturnVariable[], Object, ServiceContext)`](#execute\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable%5B%5D,java.lang.Object,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

    `[SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")[]`

    `[execute](#execute\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable%5B%5D,java.lang.Object,com.appiancorp.services.ServiceContext\))([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] inputs_, [SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")[] outputs_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters_, [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    The actual method that implements an activity.

    `[HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util")`

    `[getActivityMap](#getActivityMap\(\))()`

    Retrieves the `HashMap` which stores key/value pairs to be used in a non-process environment after the activity executes.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getExtraParameters](#getExtraParameters\(\))()`

    `[ActivityExecutionMetadata](ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework")`

    `[getMetadata](#getMetadata\(\))()`

    Returns the metadata associated with this execution, including properties related to the Process Model and Tasks.

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getPrimaryLocale](#getPrimaryLocale\(\))()`

    Returns the primary Locale of the Appian System.

    `[ProcessModelProperties](../ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessModelProperties](#getProcessModelProperties\(\))()`

    `[ProcessProperties](../ProcessProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getProcessProperties](#getProcessProperties\(\))()`

    `[TaskProperties](../TaskProperties.html "class in com.appiancorp.suiteapi.process")`

    `[getTaskProperties](#getTaskProperties\(\))()`

    `[User](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUser](#getUser\(\))()`

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getUserLocale](#getUserLocale\(\))()`

    Returns the Locale of the User executing this Smart Service.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUsername](#getUsername\(\))()`

    Returns the User for whom this Smart Service is executing.

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[lookupInWebAppJndi](#lookupInWebAppJndi\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Deprecated.

    The JNDI context "comp" should not be used.

    `final [ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[perform](#perform\(\))()`

    This method is called by the framework when the activity is to be executed.

    `final [ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[perform](#perform\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    This method is called by the framework when the activity is to be executed.

    `final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[run](#run\(\))()`

    Deprecated.

    08-07-2006 Use perform() instead.

    `final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[run](#run\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    08-07-2006 Use perform(ServiceContext) instead.

    `void`

    `[setActivityMap](#setActivityMap\(java.util.HashMap\))([HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util") activityMap_)`

    Sets the `HashMap` for this activity.

    `void`

    `[setActivityProperties](#setActivityProperties\(com.appiancorp.suiteapi.process.ActivityProperties\))([ActivityProperties](../ActivityProperties.html "class in com.appiancorp.suiteapi.process") ap_)`

    Convenience method to set all properties at once.

    `void`

    `[setExtraParameters](#setExtraParameters\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters_)`

    `void`

    `[setMetadata](#setMetadata\(com.appiancorp.suiteapi.process.framework.ActivityExecutionMetadata\))([ActivityExecutionMetadata](ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework") metadata_)`

    `void`

    `[setPrimaryLocale](#setPrimaryLocale\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") primaryLocale_)`

    `void`

    `[setProcessModelProperties](#setProcessModelProperties\(com.appiancorp.suiteapi.process.ProcessModelProperties\))([ProcessModelProperties](../ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") processModelProperties_)`

    `void`

    `[setProcessProperties](#setProcessProperties\(com.appiancorp.suiteapi.process.ProcessProperties\))([ProcessProperties](../ProcessProperties.html "class in com.appiancorp.suiteapi.process") processProperties_)`

    `void`

    `[setTaskProperties](#setTaskProperties\(com.appiancorp.suiteapi.process.TaskProperties\))([TaskProperties](../TaskProperties.html "class in com.appiancorp.suiteapi.process") taskProperties_)`

    `void`

    `[setUser](#setUser\(com.appiancorp.suiteapi.personalization.User\))([User](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization") user_)`

    `void`

    `[setUserLocale](#setUserLocale\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") userLocale_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### \_metadata

        public [ActivityExecutionMetadata](ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework") \_metadata

-   ## Constructor Details

    -   ### AbstractActivity

        public AbstractActivity()

-   ## Method Details

    -   ### perform

        public final [ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] perform() throws [ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        This method is called by the framework when the activity is to be executed. This method calls `execute()` but does not notify the process engine of success. This method is not meant to be overridden and is thus final.

        Returns:

        The return values from the activity.

        Throws:

        `[ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")` - This exception contains the actual exception that occurred while executing the activity. It can also contain messages for both user and the administrator. In the case of attended activity the message for the user will be display immediately.

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")` - If anything else goes wrong. Activities can throw any subclass of `Exception`. All exceptions are caught and handled higher in the framework. If an activity fails, it is necessary to throw an exception from this method so that the process engine will be alerted that the activity failed.

    -   ### perform

        public final [ActivityReturnVariable](../ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] perform([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        This method is called by the framework when the activity is to be executed. This method calls `execute()` but does not notify the process engine of success. This method is not meant to be overridden and is thus final.

        Parameters:

        `sc_` - ServiceContext of the user executing the activity.

        Returns:

        The return values from the activity.

        Throws:

        `[ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")` - This exception contains the actual exception that occurred while executing the activity. It can also contain messages for both user and the administrator. In the case of attended activity the message for the user will be display immediately.

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")` - If anything else goes wrong. Activities can throw any subclass of `Exception`. All exceptions are caught and handled higher in the framework. If an activity fails, it is necessary to throw an exception from this method so that the process engine will be alerted that the activity failed.

    -   ### run

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") run() throws [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Deprecated.

        08-07-2006 Use perform() instead.

        This method is called by the framework when the activity is to be executed. This method calls `execute()` and then notifies the process engine of success, assuming the activity was successful. This method is not meant to be overridden and is thus final.

        Returns:

        The id of the next activity to execute.

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")` - If anything goes wrong.

    -   ### run

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") run([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Deprecated.

        08-07-2006 Use perform(ServiceContext) instead.

        This method is called by the framework when the activity is to be executed. This method calls `execute()` and then notifies the process engine of success, assuming the activity was successful. This method is not meant to be overridden and is thus final.

        Parameters:

        `sc_` - ServiceContext of the user executing the activity.

        Returns:

        The id of the next activity to execute.

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")` - If anything goes wrong.

    -   ### execute

        public [SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")\[\] execute([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] inputs\_, [SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")\[\] outputs\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters\_, [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        The actual method that implements an activity. This method is meant to be overridden in all subclasses.

        Parameters:

        `inputs_` - The input parameters to the activity.

        `outputs_` - The structure for the outputs from the activity. This object graph should be populated and returned from this method.

        `extraParameters_` - Any extra parameters for the activity returned to the framework from the [`ActivityParameterHelper.createExtraOutputMap(com.appiancorp.suiteapi.process.ActivityClassParameter[])`](ActivityParameterHelper.html#createExtraOutputMap\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))

        `sc_` - The activity will be performed under this service context

        Returns:

        The results of the activity execution.

        Throws:

        `[ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")` - This exception contains the actual exception that occurred while executing the activity. It can also contain messages for both user and the administrator. In the case of attended activity the message for the user will be display immediately.

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")` - If anything else goes wrong. Activities can throw any subclass of `Exception`. All exceptions are caught and handled higher in the framework. If an activity fails, it is necessary to throw an exception from this method so that the process engine will be alerted that the activity failed.

    -   ### execute

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")\[\] execute([ActivityClassParameter](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] inputs\_, [SafeActivityReturnVariable](SafeActivityReturnVariable.html "class in com.appiancorp.suiteapi.process.framework")\[\] outputs\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_) throws [ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework"), [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Deprecated.

        since 6.0.3; override the other [`execute(ActivityClassParameter[], SafeActivityReturnVariable[], Object, ServiceContext)`](#execute\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D,com.appiancorp.suiteapi.process.framework.SafeActivityReturnVariable%5B%5D,java.lang.Object,com.appiancorp.asl3.servicefw.connect.ServiceContext\))

        Parameters:

        `inputs_` -

        `outputs_` -

        `extraParameters_` -

        `sc_` -

        Returns:

        Throws:

        `[ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")`

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

    -   ### getProcessModelProperties

        public [ProcessModelProperties](../ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") getProcessModelProperties()

        Specified by:

        `[getProcessModelProperties](SmartServiceContext.html#getProcessModelProperties\(\))` in interface `[SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")`

        Returns:

        the properties of the `ProcessModel`

    -   ### setProcessModelProperties

        public void setProcessModelProperties([ProcessModelProperties](../ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") processModelProperties\_)

        See Also:

        -   [`getProcessModelProperties()`](#getProcessModelProperties\(\))

    -   ### getProcessProperties

        public [ProcessProperties](../ProcessProperties.html "class in com.appiancorp.suiteapi.process") getProcessProperties()

        Specified by:

        `[getProcessProperties](SmartServiceContext.html#getProcessProperties\(\))` in interface `[SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")`

        Returns:

        the properties of the process

    -   ### setProcessProperties

        public void setProcessProperties([ProcessProperties](../ProcessProperties.html "class in com.appiancorp.suiteapi.process") processProperties\_)

        See Also:

        -   [`getProcessProperties()`](#getProcessProperties\(\))

    -   ### getTaskProperties

        public [TaskProperties](../TaskProperties.html "class in com.appiancorp.suiteapi.process") getTaskProperties()

        Specified by:

        `[getTaskProperties](SmartServiceContext.html#getTaskProperties\(\))` in interface `[SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")`

        Returns:

        the properties of the task

    -   ### setTaskProperties

        public void setTaskProperties([TaskProperties](../TaskProperties.html "class in com.appiancorp.suiteapi.process") taskProperties\_)

        See Also:

        -   [`getTaskProperties()`](#getTaskProperties\(\))

    -   ### setActivityProperties

        public void setActivityProperties([ActivityProperties](../ActivityProperties.html "class in com.appiancorp.suiteapi.process") ap\_)

        Convenience method to set all properties at once.

        Parameters:

        `ap_` - the properties of the task, process, and model for this activity

    -   ### getMetadata

        public [ActivityExecutionMetadata](ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework") getMetadata()

        Description copied from interface: `[SmartServiceContext](SmartServiceContext.html#getMetadata\(\))`

        Returns the metadata associated with this execution, including properties related to the Process Model and Tasks.

        Specified by:

        `[getMetadata](SmartServiceContext.html#getMetadata\(\))` in interface `[SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")`

        Returns:

        the metadata needed for the execution of the activity

    -   ### setMetadata

        public void setMetadata([ActivityExecutionMetadata](ActivityExecutionMetadata.html "class in com.appiancorp.suiteapi.process.framework") metadata\_)

        See Also:

        -   [`getMetadata()`](#getMetadata\(\))

    -   ### setExtraParameters

        public void setExtraParameters([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") extraParameters\_)

        See Also:

        -   [`getExtraParameters()`](#getExtraParameters\(\))

    -   ### getExtraParameters

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getExtraParameters()

        Returns:

        the extra parameters for the activity

    -   ### getUser

        public [User](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization") getUser()

        Returns:

        the user executing the activity

    -   ### getUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUsername()

        Description copied from interface: `[SmartServiceContext](SmartServiceContext.html#getUsername\(\))`

        Returns the User for whom this Smart Service is executing.

        Specified by:

        `[getUsername](SmartServiceContext.html#getUsername\(\))` in interface `[SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")`

        See Also:

        -   [`SmartServiceContext.getUserLocale()`](SmartServiceContext.html#getUserLocale\(\))

    -   ### setUser

        public void setUser([User](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization") user\_)

        See Also:

        -   [`getUser()`](#getUser\(\))

    -   ### getActivityMap

        public [HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util") getActivityMap()

        Retrieves the `HashMap` which stores key/value pairs to be used in a non-process environment after the activity executes. When the activity executes all key/value pairs in the `HashMap` will be copied to the request.

        Note: It is recommended that users use a unique prefix for their keys to avoid potential conflicts.

        Returns:

        the activity's HashMap

    -   ### setActivityMap

        public void setActivityMap([HashMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashMap.html "class or interface in java.util") activityMap\_)

        Sets the `HashMap` for this activity.

        Parameters:

        `activityMap_` -

        See Also:

        -   [`getActivityMap()`](#getActivityMap\(\))

    -   ### getPrimaryLocale

        public [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getPrimaryLocale()

        Description copied from interface: `[SmartServiceContext](SmartServiceContext.html#getPrimaryLocale\(\))`

        Returns the primary Locale of the Appian System.

        Specified by:

        `[getPrimaryLocale](SmartServiceContext.html#getPrimaryLocale\(\))` in interface `[SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")`

        Returns:

        Returns the site's primaryLocale.

        See Also:

        -   [`SmartServiceContext.getUserLocale()`](SmartServiceContext.html#getUserLocale\(\))

    -   ### setPrimaryLocale

        public void setPrimaryLocale([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") primaryLocale\_)

        Parameters:

        `primaryLocale_` - The primaryLocale to set.

    -   ### getUserLocale

        public [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getUserLocale()

        Description copied from interface: `[SmartServiceContext](SmartServiceContext.html#getUserLocale\(\))`

        Returns the Locale of the User executing this Smart Service.

        Specified by:

        `[getUserLocale](SmartServiceContext.html#getUserLocale\(\))` in interface `[SmartServiceContext](SmartServiceContext.html "interface in com.appiancorp.suiteapi.process.framework")`

        Returns:

        Returns the userLocale.

        See Also:

        -   [`SmartServiceContext.getUsername()`](SmartServiceContext.html#getUsername\(\))
        -   [`SmartServiceContext.getPrimaryLocale()`](SmartServiceContext.html#getPrimaryLocale\(\))

    -   ### setUserLocale

        public void setUserLocale([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") userLocale\_)

        Parameters:

        `userLocale_` - The userLocale to set.

    -   ### lookupInWebAppJndi

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") lookupInWebAppJndi([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")

        Deprecated.

        The JNDI context "comp" should not be used. Use any context that does not begin with "comp", and retrieve the object using the standard JNDI syntax: `Context ctx = new InitialContext(); Object o = ctx.lookup(name);`

        Returns the object stored in the Appian web app JNDI, under the given name. This is only needed for objects stored in the special "comp" context (such as "comp/env/jdbc").

        Parameters:

        `name` - The JNDI name to lookup.

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")`