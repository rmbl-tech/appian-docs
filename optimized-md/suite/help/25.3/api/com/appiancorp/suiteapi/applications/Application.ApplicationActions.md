---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/Application.ApplicationActions.html
original_path: api/com/appiancorp/suiteapi/applications/Application.ApplicationActions.html
version: "25.3"
title: "Class Application.ApplicationActions"
page_id: "api/com/appiancorp/suiteapi/applications/Application.ApplicationActions"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Class Application.ApplicationActions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.applications.Application.ApplicationActions

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[Application](Application.html "class in com.appiancorp.suiteapi.applications")

* * *

public static class Application.ApplicationActions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Definition of the Application Actions: a collection of [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") associated to the application.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.applications.Application.ApplicationActions)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ApplicationActions](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")[]`

    `[getActions](#getActions\(\))()`

    `void`

    `[setActions](#setActions\(com.appiancorp.suiteapi.applications.ApplicationAction%5B%5D\))([ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")[] actions)`

    `static [Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications")`

    `[toApplicationActions](#toApplicationActions\(com.appiancorp.suiteapi.applications.ApplicationAction%5B%5D\))([ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")[] actions)`

    Converts a given array of [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") objects to an [`Application.ApplicationActions`](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications") object.

    `void`

    `[updateAction](#updateAction\(com.appiancorp.suiteapi.applications.ApplicationAction\))([ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") updatedAction)`

    Updates an existing Application Action with the given action that contains the new user friendly label, description of the action, and process model UUID.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ApplicationActions

        public ApplicationActions()

-   ## Method Details

    -   ### getActions

        public [ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")\[\] getActions()

    -   ### updateAction

        public void updateAction([ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") updatedAction) throws [ActionNotFoundException](ActionNotFoundException.html "class in com.appiancorp.suiteapi.applications")

        Updates an existing Application Action with the given action that contains the new user friendly label, description of the action, and process model UUID.

        Parameters:

        `updatedAction` - The action with an updated user friendly label, description, and process model UUID.

        Throws:

        `[ActionNotFoundException](ActionNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If the action to update does not exist.

    -   ### setActions

        public void setActions([ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")\[\] actions)

    -   ### toApplicationActions

        public static [Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications") toApplicationActions([ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")\[\] actions)

        Converts a given array of [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") objects to an [`Application.ApplicationActions`](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications") object.

        Parameters:

        `actions` -

        Returns:

        An [`Application.ApplicationActions`](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications") object containing the specified actions.