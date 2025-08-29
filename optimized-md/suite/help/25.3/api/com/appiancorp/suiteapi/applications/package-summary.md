---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/package-summary.html
original_path: api/com/appiancorp/suiteapi/applications/package-summary.html
version: "25.3"
---

# Package com.appiancorp.suiteapi.applications

* * *

package com.appiancorp.suiteapi.applications

-   All Classes and InterfacesInterfacesClassesEnum ClassesExceptions

    Class

    Description

    [ActionNotFoundException](ActionNotFoundException.html "class in com.appiancorp.suiteapi.applications")

    This exception is thrown when attempting to access an Action that is not found within an Application.

    [Application](Application.html "class in com.appiancorp.suiteapi.applications")

    Represents an Application object, which consists of metadata, a navigation definition, and references to associated objects.

    [Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications")

    Definition of the Application Actions: a collection of [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") associated to the application.

    [Application.ApplicationNavigation](Application.ApplicationNavigation.html "class in com.appiancorp.suiteapi.applications")

    The end-user navigation definition of the application.

    [Application.AssociatedApplications](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications")

    Stores the references to the applications associated with the application.

    [Application.AssociatedObjects](Application.AssociatedObjects.html "class in com.appiancorp.suiteapi.applications")

    Stores the references to the objects associated with the application.

    [Application.Metadata](Application.Metadata.html "enum class in com.appiancorp.suiteapi.applications")

    [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")

    An application is logically divided in four different sections: 1.

    [ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications")

    Represents an action that can be executed in the context of an [`Application`](Application.html "class in com.appiancorp.suiteapi.applications").

    [ApplicationActionBean](ApplicationActionBean.html "class in com.appiancorp.suiteapi.applications")

    Supporting bean for [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications").

    [ApplicationNavigationItem](ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications")

    Represents each item in the navigation definition of the application.

    [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")

    Exception thrown by the Service whenever an Application ID does not match any object stored in the database

    [ApplicationRoleMap](ApplicationRoleMap.html "class in com.appiancorp.suiteapi.applications")

    [ApplicationService](ApplicationService.html "interface in com.appiancorp.suiteapi.applications")

    Application service.

    [ApplicationsFolder](ApplicationsFolder.html "class in com.appiancorp.suiteapi.applications")

    [InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")

    Exception thrown to indicate an invalid [`ApplicationAction`](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") element.

    [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")

    This exception may be thrown by service methods when they detect an invalid state in the Application Object

    [InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")

    This exception is thrown whenever an invalid ApplicationNavigationItem element is found.

    [UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")

    When updating an application, we will try to lock the object before making any updates in order to avoid race conditions.