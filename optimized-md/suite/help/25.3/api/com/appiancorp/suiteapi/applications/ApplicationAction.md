---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/ApplicationAction.html
original_path: api/com/appiancorp/suiteapi/applications/ApplicationAction.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Class ApplicationAction

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.applications.ApplicationAction

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class ApplicationAction extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Represents an action that can be executed in the context of an [`Application`](Application.html "class in com.appiancorp.suiteapi.applications"). The action is backed by a Process Model, which executes when the action is triggered.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.applications.ApplicationAction)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ApplicationAction](#%3Cinit%3E\(\))()`

    No-args constructor necessary for Import/Export, since when importing the bean is reconstructed piece by piece.

    `[ApplicationAction](#%3Cinit%3E\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid)`

    Creates a new Application Action with the given user friendly label, and process model UUID.

    `[ApplicationAction](#%3Cinit%3E\(java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    Creates a new Application Action with the given user friendly label, process model UUID, and description of the action.

    `[ApplicationAction](#%3Cinit%3E\(java.lang.String,java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") actionUuid)`

    Creates a new Application Action with the given user friendly label, process model UUID, description, and action UUID of the action.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")`

    `[clone](#clone\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getActionUuid](#getActionUuid\(\))()`

    Retrieves the UUID of the [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications").

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

    Sets the UUID of the [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications").

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    Sets a description of this action.

    `void`

    `[setDisplayLabel](#setDisplayLabel\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel)`

    Sets the user friendly name for this action.

    `void`

    `[setProcessModelUuid](#setProcessModelUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid)`

    Sets the UUID of the [`AbstractProcessModel`](../process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") that executes the action.

    `[ApplicationActionBean](ApplicationActionBean.html "class in com.appiancorp.suiteapi.applications")`

    `[toApplicationActionBean](#toApplicationActionBean\(\))()`

    Constructs an ApplicationActionBean and returns it

    `void`

    `[validate](#validate\(\))()`

    Validates that this `ApplicationAction` is correct.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ApplicationAction

        public ApplicationAction()

        No-args constructor necessary for Import/Export, since when importing the bean is reconstructed piece by piece. A valid Application Action should have at least a display name and an associated process model UUID. See [`validate()`](#validate\(\)).

    -   ### ApplicationAction

        public ApplicationAction([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid)

        Creates a new Application Action with the given user friendly label, and process model UUID.

        Parameters:

        `displayLabel` - The user friendly label to use when displaying this action.

        `processModelUuid` - The UUID of the process model that executes as part of this action.

    -   ### ApplicationAction

        public ApplicationAction([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)

        Creates a new Application Action with the given user friendly label, process model UUID, and description of the action.

        Parameters:

        `displayLabel` - The user friendly label to use when displaying this action.

        `processModelUuid` - The UUID of the process model that executes as part of this action.

        `description` - The description of the action.

    -   ### ApplicationAction

        public ApplicationAction([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayLabel, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") actionUuid)

        Creates a new Application Action with the given user friendly label, process model UUID, description, and action UUID of the action.

        Parameters:

        `displayLabel` - The user friendly label to use when displaying this action.

        `processModelUuid` - The UUID of the process model that executes as part of this action.

        `description` - The description of the action.

        `actionUuid` - The UUID of the application action.

-   ## Method Details

    -   ### toApplicationActionBean

        public [ApplicationActionBean](ApplicationActionBean.html "class in com.appiancorp.suiteapi.applications") toApplicationActionBean()

        Constructs an ApplicationActionBean and returns it

        Returns:

        the ApplicationActionBean

    -   ### clone

        public [ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") clone()

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### validate

        public void validate() throws [InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")

        Validates that this `ApplicationAction` is correct. A valid Action consists of a Non-empty associated process model UUID and action's display label.

        Throws:

        `[InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")` - If the action is invalid, per the description above.

    -   ### getProcessModelUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessModelUuid()

        Retrieves the UUID of the [`AbstractProcessModel`](../process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") that executes the action.

        Returns:

        The process model UUID.

    -   ### setProcessModelUuid

        public void setProcessModelUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid)

        Sets the UUID of the [`AbstractProcessModel`](../process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process") that executes the action.

        Parameters:

        `processModelUuid` - The process model UUID that executes the action.

    -   ### getActionUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getActionUuid()

        Retrieves the UUID of the [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications").

        Returns:

        The action UUID.

    -   ### setActionUuid

        public void setActionUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") actionUuid)

        Sets the UUID of the [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications").

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