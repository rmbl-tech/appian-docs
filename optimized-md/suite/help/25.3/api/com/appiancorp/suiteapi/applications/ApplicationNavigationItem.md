---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/ApplicationNavigationItem.html
original_path: api/com/appiancorp/suiteapi/applications/ApplicationNavigationItem.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Class ApplicationNavigationItem

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.applications.ApplicationNavigationItem

All Implemented Interfaces:

`[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public final class ApplicationNavigationItem extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

Represents each item in the navigation definition of the application.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ApplicationNavigationItem](#%3Cinit%3E\(\))()`

    `[ApplicationNavigationItem](#%3Cinit%3E\(java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pageUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ApplicationNavigationItem](ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications")`

    `[clone](#clone\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayName](#getDisplayName\(\))()`

    Retrieves the display name of the navigation item.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPageUuid](#getPageUuid\(\))()`

    Retrieves the UUID of the page targeted by the navigation item.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUrlIdentifier](#getUrlIdentifier\(\))()`

    Retrieves the URL identifier which will allow direct access to the navigation item.

    `void`

    `[setDisplayName](#setDisplayName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName)`

    Sets the display name of the navigation item.

    `void`

    `[setPageUuid](#setPageUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pageUuid)`

    Sets the UUID of the page targeted by the navigation item.

    `void`

    `[setUrlIdentifier](#setUrlIdentifier\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier)`

    Sets the URL identifier which will allow direct access to the navigation item.

    `void`

    `[validate](#validate\(\))()`

    Validates that this `ApplicationNavigationItem` is correct.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ApplicationNavigationItem

        public ApplicationNavigationItem()

    -   ### ApplicationNavigationItem

        public ApplicationNavigationItem([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pageUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier)

-   ## Method Details

    -   ### clone

        public [ApplicationNavigationItem](ApplicationNavigationItem.html "class in com.appiancorp.suiteapi.applications") clone()

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### validate

        public void validate() throws [InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")

        Validates that this `ApplicationNavigationItem` is correct. A valid Item consists of a Non-empty displayName and pageUuid, and a valid urlIdentifier (only letters, numbers, dashes, underscores, less than 256 characters).

        Throws:

        `[InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")` - If any of the checks is not met.

    -   ### setDisplayName

        public void setDisplayName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName)

        Sets the display name of the navigation item.

        Parameters:

        `displayName` -

    -   ### getDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayName()

        Retrieves the display name of the navigation item.

        Returns:

        the display name for this navigation element

    -   ### setPageUuid

        public void setPageUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pageUuid)

        Sets the UUID of the page targeted by the navigation item.

        Parameters:

        `pageUuid` -

    -   ### getPageUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPageUuid()

        Retrieves the UUID of the page targeted by the navigation item.

        Returns:

        the UUID

    -   ### setUrlIdentifier

        public void setUrlIdentifier([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier)

        Sets the URL identifier which will allow direct access to the navigation item.

        Parameters:

        `urlIdentifier` - The URL identifier

    -   ### getUrlIdentifier

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUrlIdentifier()

        Retrieves the URL identifier which will allow direct access to the navigation item.

        Returns:

        the URL identifier of this navigation item