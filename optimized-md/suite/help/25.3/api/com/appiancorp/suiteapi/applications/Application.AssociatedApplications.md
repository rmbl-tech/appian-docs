---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/Application.AssociatedApplications.html
original_path: api/com/appiancorp/suiteapi/applications/Application.AssociatedApplications.html
version: "25.3"
title: "Class Application.AssociatedApplications"
page_id: "api/com/appiancorp/suiteapi/applications/Application.AssociatedApplications"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Class Application.AssociatedApplications

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.applications.Application.AssociatedApplications

Enclosing class:

[Application](Application.html "class in com.appiancorp.suiteapi.applications")

* * *

public static class Application.AssociatedApplications extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Stores the references to the applications associated with the application. Dependencies that are known and not actually "missing", such as contents of a Common Objects application, can now be filtered out of the Missing Dependencies results to make the remaining list more useful. Currently, the user-filtered list of "related applications" is only used in missing dependencies, though its use may expand in the future. This feature is only for the new App Designer; legacy will not change.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AssociatedApplications](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `<H extends com.appiancorp.ix.Haul<I, U>, I, U>   [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getApplications](#getApplications\(\))()`

    Returns the UUIDs of the associated applications.

    `com.appiancorp.ix.GlobalIdMap`

    `[getGlobalIdMap](#getGlobalIdMap\(\))()`

    `<H extends com.appiancorp.ix.Haul<I, U>, I, U>   void`

    `[setApplications](#setApplications\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... uuids)`

    Adds applications as associated applications of this application.

    `void`

    `[setGlobalIdMap](#setGlobalIdMap\(com.appiancorp.ix.GlobalIdMap\))(com.appiancorp.ix.GlobalIdMap gidMap)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AssociatedApplications

        public AssociatedApplications()

-   ## Method Details

    -   ### getGlobalIdMap

        public com.appiancorp.ix.GlobalIdMap getGlobalIdMap()

    -   ### setGlobalIdMap

        public void setGlobalIdMap(com.appiancorp.ix.GlobalIdMap gidMap)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### setApplications

        public <H extends com.appiancorp.ix.Haul<I, U>, I, U> void setApplications([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... uuids)

        Adds applications as associated applications of this application.

        Parameters:

        `uuids` - Array of uuids corresponding to the applications to be added.

    -   ### getApplications

        public <H extends com.appiancorp.ix.Haul<I, U>, I, U> [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getApplications()

        Returns the UUIDs of the associated applications.