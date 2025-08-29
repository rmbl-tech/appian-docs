---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/ApplicationActionBean.html
original_path: api/com/appiancorp/suiteapi/applications/ApplicationActionBean.html
version: "25.3"
title: "Class ApplicationActionBean"
page_id: "api/com/appiancorp/suiteapi/applications/ApplicationActionBean"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Class ApplicationActionBean

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.applications.ApplicationActionBean

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ApplicationActionBean extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Supporting bean for [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications"). This bean can be serialized and used by other components such as those in GWT.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.applications.ApplicationActionBean)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ApplicationActionBean](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getActionUuid](#getActionUuid\(\))()`

    Retrieves the UUID of the ApplicationAction.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Retrieves a description of this action.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayLabel](#getDisplayLabel\(\))()`

    Retrieves the user friendly name for this action.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessModelUuid](#getProcessModelUuid\(\))()`

    Retrieves the UUID of the [`AbstractProcessModel`](../process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") that executes the action.

    `void`

    `[setActionUuid](#setActionUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") actionUuid)`

    Sets the UUID of the ApplicationAction.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    Sets a description of this action.

    `void`

    `[setDisplayLabel](#setDisplayLabel\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel)`

    Sets the user friendly name for this action.

    `void`

    `[setProcessModelUuid](#setProcessModelUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid)`

    Sets the UUID of the [`AbstractProcessModel`](../process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") that executes the action.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ApplicationActionBean

        public ApplicationActionBean()

-   ## Method Details

    -   ### getActionUuid

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getActionUuid()

        Retrieves the UUID of the ApplicationAction.

        Returns:

        The action UUID.

    -   ### setActionUuid

        public void setActionUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") actionUuid)

        Sets the UUID of the ApplicationAction.

        Parameters:

        `actionUuid` - The action UUID.

    -   ### getDisplayLabel

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayLabel()

        Retrieves the user friendly name for this action.

        Returns:

        The display name.

    -   ### setDisplayLabel

        public void setDisplayLabel([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel)

        Sets the user friendly name for this action.

        Parameters:

        `displayLabel` - A user friendly name to use when displaying this action.

    -   ### getProcessModelUuid

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessModelUuid()

        Retrieves the UUID of the [`AbstractProcessModel`](../process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") that executes the action.

        Returns:

        The process model UUID.

    -   ### setProcessModelUuid

        public void setProcessModelUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid)

        Sets the UUID of the [`AbstractProcessModel`](../process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") that executes the action.

        Parameters:

        `processModelUuid` - The process model UUID that executes the action.

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Retrieves a description of this action.

        Returns:

        The description of this action.

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)

        Sets a description of this action.

        Parameters:

        `description` - A description of this action.