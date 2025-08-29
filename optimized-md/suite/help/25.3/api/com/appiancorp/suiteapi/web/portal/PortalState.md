---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/web/portal/PortalState.html
original_path: api/com/appiancorp/suiteapi/web/portal/PortalState.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.web.portal](package-summary.html)

# Class PortalState

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.web.portal.PortalState

* * *

public class PortalState extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PortalState](#%3Cinit%3E\(javax.servlet.http.HttpServletRequest\))(javax.servlet.http.HttpServletRequest q_)`

    Construct from a `HttpServletRequest`.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCurrentPageId](#getCurrentPageId\(\))()`

    Get the id of the current page.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCurrentPortletId](#getCurrentPortletId\(\))()`

    Get the id of the current portlet.

    `[PortletSession](PortletSession.html "class in com.appiancorp.suiteapi.web.portal")`

    `[getCurrentPortletSession](#getCurrentPortletSession\(\))()`

    Get the `PortletSession` for the current portlet.

    `[PortletSession](PortletSession.html "class in com.appiancorp.suiteapi.web.portal")`

    `[getPortletSession](#getPortletSession\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Get the `PortletSession` for a given portlet.

    `[User](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUser](#getUser\(\))()`

    Get the object of class `User` representing the current user.

    `boolean`

    `[isCurrentPortletControlled](#isCurrentPortletControlled\(\))()`

    Determine if the current portlet is controlled.

    `boolean`

    `[isUserPortalAdmin](#isUserPortalAdmin\(\))()`

    Determine whether the current user is a Portal administrator.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PortalState

        public PortalState(javax.servlet.http.HttpServletRequest q\_)

        Construct from a `HttpServletRequest`. Is is assumed that the `HttpServletRequest` contains the parameters and attributes necessary for populating a new `PortalState` object.

        Parameters:

        `q_` - the Request Object

-   ## Method Details

    -   ### getUser

        public [User](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization") getUser()

        Get the object of class `User` representing the current user.

        Returns:

        The user name.

    -   ### isUserPortalAdmin

        public boolean isUserPortalAdmin()

        Determine whether the current user is a Portal administrator.

        Returns:

        `true` if the current user is a Portal administrator; `false` if not.

    -   ### getCurrentPortletId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCurrentPortletId()

        Get the id of the current portlet. The current portlet is the one that is currently being rendered.

        Returns:

        The id of the current portlet.

    -   ### getPortletSession

        public [PortletSession](PortletSession.html "class in com.appiancorp.suiteapi.web.portal") getPortletSession([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_)

        Get the `PortletSession` for a given portlet.

        Parameters:

        `portletId_` - The id of the portlet whose `PortletSession` is desired.

        Returns:

        the `PortletSession`

    -   ### getCurrentPortletSession

        public [PortletSession](PortletSession.html "class in com.appiancorp.suiteapi.web.portal") getCurrentPortletSession()

        Get the `PortletSession` for the current portlet.

        Returns:

        the `PortletSession` for the current portlet

    -   ### isCurrentPortletControlled

        public boolean isCurrentPortletControlled()

        Determine if the current portlet is controlled. The controlled portlet is the portlet, if any, from which the current request originated.

        Returns:

        `true` if the current portlet is controlled; `false` if not.

    -   ### getCurrentPageId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCurrentPageId()

        Get the id of the current page. The current page is the one being rendered. Only pages that contain portlets have ids. If this method is called on a non-portlet-containing page, it will return null.

        Returns:

        The page id.