---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/ApplicationRoleMap.html
original_path: api/com/appiancorp/suiteapi/applications/ApplicationRoleMap.html
version: "25.3"
title: "Class ApplicationRoleMap"
page_id: "api/com/appiancorp/suiteapi/applications/ApplicationRoleMap"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Class ApplicationRoleMap

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.applications.ApplicationRoleMap

* * *

public class ApplicationRoleMap extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ApplicationRoleMap](#%3Cinit%3E\(\))()`

    `[ApplicationRoleMap](#%3Cinit%3E\(com.appiancorp.suiteapi.content.ContentRoleMap\))([ContentRoleMap](../content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content") securityRoleMap)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAdministratorGroups](#getAdministratorGroups\(\))()`

    Retrieves the groups who have administrative permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAdministrators](#getAdministrators\(\))()`

    Retrieves the users who have administrative permissions.

    `[ContentRoleMap](../content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content")`

    `[getContentRoleMap](#getContentRoleMap\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDeny](#getDeny\(\))()`

    The users in the deny role.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDenyGroups](#getDenyGroups\(\))()`

    The list of groups in the deny role.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getEditorGroups](#getEditorGroups\(\))()`

    Retrieves the groups who have authoring (read/write) permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getEditors](#getEditors\(\))()`

    Retrieves the users who have editor (read/write) permissions.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getViewerGroups](#getViewerGroups\(\))()`

    Retrieves the groups who have read-only permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getViewers](#getViewers\(\))()`

    Retrieves the users who have read-only permissions.

    `void`

    `[setAdministratorGroups](#setAdministratorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds)`

    Sets the groups who have administrative permissions.

    `void`

    `[setAdministrators](#setAdministrators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames)`

    Sets the users who have administrative permissions.

    `void`

    `[setContentRoleMap](#setContentRoleMap\(com.appiancorp.suiteapi.content.ContentRoleMap\))([ContentRoleMap](../content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content") crm)`

    `void`

    `[setDeny](#setDeny\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames)`

    A user assigned to the "Deny" level, either directly or via group membership, will NOT have ANY privileges on the application, regardless of membership in any other security level.

    `void`

    `[setDenyGroups](#setDenyGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds)`

    A group assigned to the "Deny" level, will NOT have ANY privileges on the application, regardless of membership in any other security level.

    `void`

    `[setEditorGroups](#setEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds)`

    Sets the groups who have editor (read/write) permissions.

    `void`

    `[setEditors](#setEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames)`

    Sets the users who have authoring (read/write) permissions.

    `void`

    `[setViewerGroups](#setViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds)`

    Sets the groups who have read-only permissions.

    `void`

    `[setViewers](#setViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames)`

    Sets the users who have read-only permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ApplicationRoleMap

        public ApplicationRoleMap()

    -   ### ApplicationRoleMap

        public ApplicationRoleMap([ContentRoleMap](../content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content") securityRoleMap)

-   ## Method Details

    -   ### getAdministrators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAdministrators()

        Retrieves the users who have administrative permissions.

        Returns:

        a list containing the unique IDs of the users

        See Also:

        -   [`setAdministrators(String[])`](#setAdministrators\(java.lang.String%5B%5D\))

    -   ### getAdministratorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAdministratorGroups()

        Retrieves the groups who have administrative permissions.

        Returns:

        a list containing the unique IDs of the groups

        See Also:

        -   [`setAdministratorGroups(Long[])`](#setAdministratorGroups\(java.lang.Long%5B%5D\))

    -   ### setAdministrators

        public void setAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames)

        Sets the users who have administrative permissions.

        Parameters:

        `usernames` - a list containing the usernames

        See Also:

        -   [`getAdministrators()`](#getAdministrators\(\))

    -   ### setAdministratorGroups

        public void setAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds)

        Sets the groups who have administrative permissions.

        Parameters:

        `groupIds` - a list containing the ids of the groups

        See Also:

        -   [`getAdministratorGroups()`](#getAdministratorGroups\(\))

    -   ### getEditors

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getEditors()

        Retrieves the users who have editor (read/write) permissions.

        Returns:

        a list containing the unique IDs of the users who have editor (read/write) permissions

    -   ### setEditors

        public void setEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames)

        Sets the users who have authoring (read/write) permissions.

        Parameters:

        `usernames` - a list containing the unique IDs of the users

        See Also:

        -   `#getAuthors()`

    -   ### getEditorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getEditorGroups()

        Retrieves the groups who have authoring (read/write) permissions.

        Returns:

        a list containing the unique IDs of the groups

        See Also:

        -   `#setAuthorGroups(Long[])`

    -   ### setEditorGroups

        public void setEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds)

        Sets the groups who have editor (read/write) permissions.

        Parameters:

        `groupIds` - a list containing the group ids.

    -   ### getViewers

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getViewers()

        Retrieves the users who have read-only permissions.

        Returns:

        a list containing the unique IDs of the users who have read-only permissions

    -   ### getViewerGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getViewerGroups()

        Retrieves the groups who have read-only permissions.

        Returns:

        a list containing the unique IDs the groups who have read-only permissions

        See Also:

        -   `#setReaderGroups(Long[])`

    -   ### setViewers

        public void setViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames)

        Sets the users who have read-only permissions.

        Parameters:

        `usernames` - a list containing the unique IDs of the users

    -   ### setViewerGroups

        public void setViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds)

        Sets the groups who have read-only permissions.

        Parameters:

        `groupIds` - a list containing the unique IDs of the groups

    -   ### setDeny

        public void setDeny([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames)

        A user assigned to the "Deny" level, either directly or via group membership, will NOT have ANY privileges on the application, regardless of membership in any other security level. "Deny" also overrides implicit viewer privileges granted by the "public" configuration. The exception is a System Administrator, whose privileges may not be overridden.

        Parameters:

        `usernames` - The list of usernames to be added to the Deny role.

    -   ### getDeny

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDeny()

        The users in the deny role.

        Returns:

        The users in the deny role.

        See Also:

        -   [`setDeny(java.lang.String[])`](#setDeny\(java.lang.String%5B%5D\))

    -   ### setDenyGroups

        public void setDenyGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds)

        A group assigned to the "Deny" level, will NOT have ANY privileges on the application, regardless of membership in any other security level. "Deny" also overrides implicit viewer privileges granted by the "public" configuration. The exception is a System Administrator, whose privileges may not be overridden.

        Parameters:

        `groupIds` - The list of groups to be added to the Deny role.

    -   ### getDenyGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDenyGroups()

        The list of groups in the deny role.

        Returns:

        the list of groups in the deny role.

    -   ### getContentRoleMap

        public [ContentRoleMap](../content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content") getContentRoleMap()

    -   ### setContentRoleMap

        public void setContentRoleMap([ContentRoleMap](../content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content") crm)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`