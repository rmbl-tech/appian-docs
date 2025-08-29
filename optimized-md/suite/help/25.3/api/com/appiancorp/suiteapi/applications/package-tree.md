---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/package-tree.html
original_path: api/com/appiancorp/suiteapi/applications/package-tree.html
version: "25.3"
---

# Hierarchy For Package com.appiancorp.suiteapi.applications

Package Hierarchies:

-   [All Packages](../../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.suiteapi.applications.[Application.ApplicationActions](Application.ApplicationActions.html "class in com.appiancorp.suiteapi.applications") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.applications.[Application.ApplicationNavigation](Application.ApplicationNavigation.html "class in com.appiancorp.suiteapi.applications")
    -   com.appiancorp.suiteapi.applications.[Application.AssociatedApplications](Application.AssociatedApplications.html "class in com.appiancorp.suiteapi.applications")
    -   com.appiancorp.suiteapi.applications.[Application.AssociatedObjects](Application.AssociatedObjects.html "class in com.appiancorp.suiteapi.applications")
    -   com.appiancorp.suiteapi.applications.[ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") (implements java.lang.[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.applications.[ApplicationActionBean](ApplicationActionBean.html "class in com.appiancorp.suiteapi.applications") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.suiteapi.applications.[ApplicationNavigationItem](ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications") (implements java.lang.[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang"))
    -   com.appiancorp.suiteapi.applications.[ApplicationRoleMap](ApplicationRoleMap.html "class in com.appiancorp.suiteapi.applications")
    -   com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") (implements com.appiancorp.suiteapi.common.[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.content.[Content](../content/Content.html "class in com.appiancorp.suiteapi.content") (implements com.appiancorp.suiteapi.process.[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process"), com.appiancorp.suiteapi.content.[ContentConstants](../content/ContentConstants.html "interface in com.appiancorp.suiteapi.content"))
            -   com.appiancorp.suiteapi.applications.[Application](Application.html "class in com.appiancorp.suiteapi.applications")
            -   com.appiancorp.suiteapi.content.[Container](../content/Container.html "class in com.appiancorp.suiteapi.content")
                -   com.appiancorp.suiteapi.content.[Folder](../content/Folder.html "class in com.appiancorp.suiteapi.content")
                    -   com.appiancorp.suiteapi.applications.[ApplicationsFolder](ApplicationsFolder.html "class in com.appiancorp.suiteapi.applications")
    -   java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   java.lang.[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")
            -   com.appiancorp.suiteapi.common.exceptions.[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")
                -   com.appiancorp.suiteapi.applications.[ActionNotFoundException](ActionNotFoundException.html "class in com.appiancorp.suiteapi.applications")
                -   com.appiancorp.suiteapi.applications.[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")
                -   com.appiancorp.suiteapi.applications.[InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")
                -   com.appiancorp.suiteapi.applications.[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")
                -   com.appiancorp.suiteapi.applications.[InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")
                -   com.appiancorp.suiteapi.applications.[UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")

## Interface Hierarchy

-   com.appiancorp.services.[Service](../../services/Service.html "interface in com.appiancorp.services")
    -   com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")
        -   com.appiancorp.suiteapi.applications.[ApplicationService](ApplicationService.html "interface in com.appiancorp.suiteapi.applications")

## Enum Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<E> (implements java.lang.[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<T>, java.lang.constant.[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.applications.[Application.Metadata](Application.Metadata.html "enum class in com.appiancorp.suiteapi.applications")
        -   com.appiancorp.suiteapi.applications.[Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")