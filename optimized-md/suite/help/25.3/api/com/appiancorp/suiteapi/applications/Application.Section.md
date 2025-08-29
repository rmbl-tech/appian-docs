---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/Application.Section.html
original_path: api/com/appiancorp/suiteapi/applications/Application.Section.html
version: "25.3"
title: "Enum Class Application.Section"
page_id: "api/com/appiancorp/suiteapi/applications/Application.Section"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Enum Class Application.Section

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")\>

com.appiancorp.suiteapi.applications.Application.Section

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")>`, `[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant")`

Enclosing class:

[Application](Application.html "class in com.appiancorp.suiteapi.applications")

* * *

public static enum Application.Section extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")\>

An application is logically divided in four different sections: 1. Metadata: Those elements in [`Application.Metadata`](Application.Metadata.html "enum class in com.appiancorp.suiteapi.applications") plus name, description and publishing status. 2. Associated objects: All the objects that are logically associated with this application. 3. Navigation: The navigation items associated with this application. 4. Security: Specifies if an application is "public". See [`Application.setPublic(boolean)`](Application.html#setPublic\(boolean\)). Notice that the [`ApplicationRoleMap`](ApplicationRoleMap.html "class in com.appiancorp.suiteapi.applications") must be updated through [`ApplicationService.setRoleMap(Long, ApplicationRoleMap)`](ApplicationService.html#setRoleMap\(java.lang.Long,com.appiancorp.suiteapi.applications.ApplicationRoleMap\)). These sections are used to give the ability to save individual parts of the application bean. See `ApplicationService.save`

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[Enum.EnumDesc](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang") extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")>>`

-   ## Enum Constant Summary

    Enum Constants

    Enum Constant

    Description

    `[ACTIONS](#ACTIONS)`

    `[ASSOCIATED_APPLICATIONS](#ASSOCIATED_APPLICATIONS)`

    `[ASSOCIATED_OBJECTS](#ASSOCIATED_OBJECTS)`

    `[METADATA](#METADATA)`

    `[NAVIGATION](#NAVIGATION)`

    `[SECURITY](#SECURITY)`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")`

    `[valueOf](#valueOf\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Returns the enum constant of this class with the specified name.

    `static [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")[]`

    `[values](#values\(\))()`

    Returns an array containing the constants of this enum class, in the order they are declared.

    ### Methods inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#clone\(\) "class or interface in java.lang"), [compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#compareTo\(E\) "class or interface in java.lang"), [describeConstable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#describeConstable\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#finalize\(\) "class or interface in java.lang"), [getDeclaringClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#getDeclaringClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#hashCode\(\) "class or interface in java.lang"), [name](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#name\(\) "class or interface in java.lang"), [ordinal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#ordinal\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#toString\(\) "class or interface in java.lang"), [valueOf](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#valueOf\(java.lang.Class,java.lang.String\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Enum Constant Details

    -   ### METADATA

        public static final [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications") METADATA

    -   ### ASSOCIATED\_OBJECTS

        public static final [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications") ASSOCIATED\_OBJECTS

    -   ### NAVIGATION

        public static final [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications") NAVIGATION

    -   ### ACTIONS

        public static final [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications") ACTIONS

    -   ### SECURITY

        public static final [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications") SECURITY

    -   ### ASSOCIATED\_APPLICATIONS

        public static final [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications") ASSOCIATED\_APPLICATIONS

-   ## Method Details

    -   ### values

        public static [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")\[\] values()

        Returns an array containing the constants of this enum class, in the order they are declared.

        Returns:

        an array containing the constants of this enum class, in the order they are declared

    -   ### valueOf

        public static [Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications") valueOf([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Returns the enum constant of this class with the specified name. The string must match _exactly_ an identifier used to declare an enum constant in this class. (Extraneous whitespace characters are not permitted.)

        Parameters:

        `name` - the name of the enum constant to be returned.

        Returns:

        the enum constant with the specified name

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if this enum class has no constant with the specified name

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is null