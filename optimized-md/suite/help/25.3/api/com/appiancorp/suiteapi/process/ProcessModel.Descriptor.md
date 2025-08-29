---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessModel.Descriptor.html
original_path: api/com/appiancorp/suiteapi/process/ProcessModel.Descriptor.html
version: "25.3"
title: "Class ProcessModel.Descriptor"
page_id: "api/com/appiancorp/suiteapi/process/ProcessModel.Descriptor"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessModel.Descriptor

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.ProcessModel.Descriptor

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[ProcessModel](ProcessModel.html "class in com.appiancorp.suiteapi.process")

* * *

public static class ProcessModel.Descriptor extends [LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

Inner class that holds the name, id, and description of a process model.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessModel.Descriptor)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    Sort constant indicating that a grid of `ProcessModel`s is sorted based on the description field.

    `static final int`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Sort constant indicating that a grid of `ProcessModel`s is sorted based on the name field.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_CREATORUSERNAME](#SORT_PM_CREATORUSERNAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_DESCRIPTION](#SORT_PM_DESCRIPTION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_FOLDERID](#SORT_PM_FOLDERID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_ID](#SORT_PM_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_LOCKEDBY](#SORT_PM_LOCKEDBY)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_NAME](#SORT_PM_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_TIMESTAMPCREATED](#SORT_PM_TIMESTAMPCREATED)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_TIMESTAMPUPDATED](#SORT_PM_TIMESTAMPUPDATED)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_UUID](#SORT_PM_UUID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_VALIDATED](#SORT_PM_VALIDATED)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_VERSION](#SORT_PM_VERSION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_PM_VERSIONSTATUS](#SORT_PM_VERSIONSTATUS)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Descriptor](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreatorUsername](#getCreatorUsername\(\))()`

    Gets the use that created this model.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDashboardId](#getDashboardId\(\))()`

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getDescription](#getDescription\(\))()`

    Gets the localized description of this model.

    `int`

    `[getExecutionEnvironment](#getExecutionEnvironment\(\))()`

    Returns int representation of the Process Execution Environment.

    `boolean`

    `[getFavorite](#getFavorite\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getFolderId](#getFolderId\(\))()`

    Gets the folder in which this model is saved.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLastModifiedUsername](#getLastModifiedUsername\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLockedBy](#getLockedBy\(\))()`

    Gets the user by whom this model is currently locked.

    `boolean`

    `[getMutablePriority](#getMutablePriority\(\))()`

    Determines whether the priority of this model can be chagned.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getNameEscapeJavascript](#getNameEscapeJavascript\(\))()`

    Retrieve the model name, escaped into its Javascript String form (eg a tab becomes the characters '\\\\' and 't').

    `int`

    `[getObjectType](#getObjectType\(\))()`

    Gets the object type, for use by UI components.

    `[ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissions](#getPermissions\(\))()`

    Gets the set of permissions that the logged-in user has on this model.

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getPriority](#getPriority\(\))()`

    Gets the priority of this model.

    `static int`

    `[getSortProperty](#getSortProperty\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute_)`

    Gets the sort property id that corresponds to the given attribute.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimeStampCreated](#getTimeStampCreated\(\))()`

    Gets the time at which this model was created.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTimeStampCreatedPretty](#getTimeStampCreatedPretty\(\))()`

    Gets a pretty version of the time at which this model was created, useful for displaying.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimeStampUpdated](#getTimeStampUpdated\(\))()`

    Gets the time at which this model was last updated.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTimeStampUpdatedPretty](#getTimeStampUpdatedPretty\(\))()`

    Gets a pretty version of the time at which this model was last updated, useful for displaying.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Gets the universally unique identifier (uuid) for this model.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getVersion](#getVersion\(\))()`

    Gets the version of this model.

    `int`

    `[getVersionStatus](#getVersionStatus\(\))()`

    Gets the version status of this model.

    `boolean`

    `[isEnabled](#isEnabled\(\))()`

    Determines whether or not this model is enabled.

    `boolean`

    `[isValidated](#isValidated\(\))()`

    Determines whether this model is validated.

    `void`

    `[setCreatorUsername](#setCreatorUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creatorUsername_)`

    Sets the use that created this model.

    `void`

    `[setDashboardId](#setDashboardId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dashboardId_)`

    `void`

    `[setDescription](#setDescription\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") description_)`

    Sets the localized description of the process model.

    `void`

    `[setEnabled](#setEnabled\(boolean\))(boolean enabled_)`

    Sets whether or not this model is enabled.

    `void`

    `[setExecutionEnvironment](#setExecutionEnvironment\(int\))(int executionEnvironment_)`

    Set the execution environment in which the process will be run.

    `void`

    `[setFavorite](#setFavorite\(boolean\))(boolean favorite_)`

    `void`

    `[setFolderId](#setFolderId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Sets the folder in which this model is saved.

    `void`

    `[setLastModifiedUsername](#setLastModifiedUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastModifiedUsername)`

    `void`

    `[setLockedBy](#setLockedBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy_)`

    Sets the user by whom this model is currently locked.

    `void`

    `[setMutablePriority](#setMutablePriority\(boolean\))(boolean mutablePriority_)`

    Sets whether or not the priority of processes of this process model can be changed

    `void`

    `[setObjectType](#setObjectType\(int\))(int objectType_)`

    Sets the object type for this model, which should always be [`AppianType.PROCESS_MODEL`](../type/AppianType.html#PROCESS_MODEL).

    `void`

    `[setPermissions](#setPermissions\(com.appiancorp.suiteapi.process.security.ProcessModelPermissions\))([ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") permissions_)`

    Sets the set of permissions that the logged-in user has on this model.

    `void`

    `[setPriority](#setPriority\(com.appiancorp.suiteapi.process.Priority\))([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority_)`

    Sets the priority of this model.

    `void`

    `[setTimeStampCreated](#setTimeStampCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStampCreated_)`

    Sets the time at which this model was created.

    `void`

    `[setTimeStampUpdated](#setTimeStampUpdated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStampUpdated_)`

    Sets the time at which this model was last updated.

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid_)`

    Sets the universally unique identifier (uuid) for this model.

    `void`

    `[setValidated](#setValidated\(boolean\))(boolean validated_)`

    Sets whether this model is validated.

    `void`

    `[setVersion](#setVersion\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Gets the version of this model.

    `void`

    `[setVersionStatus](#setVersionStatus\(int\))(int versionStatus_)`

    Sets the version status of this model.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `LocalizedIdentity`.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/LocalizedIdentity.html#equals\(java.lang.Object\)), [getId](../common/LocalizedIdentity.html#getId\(\)), [getIds](../common/LocalizedIdentity.html#getIds\(com.appiancorp.suiteapi.common.LocalizedIdentity%5B%5D\)), [getName](../common/LocalizedIdentity.html#getName\(\)), [hashCode](../common/LocalizedIdentity.html#hashCode\(\)), [setId](../common/LocalizedIdentity.html#setId\(java.lang.Long\)), [setName](../common/LocalizedIdentity.html#setName\(com.appiancorp.suiteapi.common.LocaleString\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_NAME

        public static final int SORT\_BY\_NAME

        Sort constant indicating that a grid of `ProcessModel`s is sorted based on the name field.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessModel.Descriptor.SORT_BY_NAME)

    -   ### SORT\_BY\_DESCRIPTION

        public static final int SORT\_BY\_DESCRIPTION

        Sort constant indicating that a grid of `ProcessModel`s is sorted based on the description field.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessModel.Descriptor.SORT_BY_DESCRIPTION)

    -   ### SORT\_PM\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_ID

    -   ### SORT\_PM\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_NAME

    -   ### SORT\_PM\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_DESCRIPTION

    -   ### SORT\_PM\_VALIDATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_VALIDATED

    -   ### SORT\_PM\_LOCKEDBY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_LOCKEDBY

    -   ### SORT\_PM\_VERSIONSTATUS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_VERSIONSTATUS

    -   ### SORT\_PM\_VERSION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_VERSION

    -   ### SORT\_PM\_CREATORUSERNAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_CREATORUSERNAME

    -   ### SORT\_PM\_TIMESTAMPCREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_TIMESTAMPCREATED

    -   ### SORT\_PM\_TIMESTAMPUPDATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_TIMESTAMPUPDATED

    -   ### SORT\_PM\_FOLDERID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_FOLDERID

    -   ### SORT\_PM\_UUID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_PM\_UUID

-   ## Constructor Details

    -   ### Descriptor

        public Descriptor()

-   ## Method Details

    -   ### getNameEscapeJavascript

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getNameEscapeJavascript()

        Retrieve the model name, escaped into its Javascript String form (eg a tab becomes the characters '\\\\' and 't').

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Gets the universally unique identifier (uuid) for this model. This identifier is important for comparing versions when importing and exporting models.

        Returns:

        the uuid for this model.

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid\_)

        Sets the universally unique identifier (uuid) for this model. This identifier is important for comparing versions when importing and exporting models.

        Parameters:

        `uuid_` - the uuid for this model, as a `String`.

    -   ### getTimeStampCreatedPretty

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTimeStampCreatedPretty()

        Gets a pretty version of the time at which this model was created, useful for displaying.

        Returns:

        the time at which this model was created, in mm/dd/yyyy hh:mm xM format.

    -   ### getTimeStampUpdatedPretty

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTimeStampUpdatedPretty()

        Gets a pretty version of the time at which this model was last updated, useful for displaying.

        Returns:

        the time at which this model was last updated, in mm/dd/yyyy hh:mm xM format.

    -   ### getExecutionEnvironment

        public int getExecutionEnvironment()

        Returns int representation of the Process Execution Environment. K Execution Environment: 0 EPEx Execution environment: 1

        Returns:

        int corresponding to the process execution environment

    -   ### setExecutionEnvironment

        public void setExecutionEnvironment(int executionEnvironment\_)

        Set the execution environment in which the process will be run. Return Illegal Argument Exception if int does not correspond with a defined execution environment

        Parameters:

        `executionEnvironment_` - - int 0 for K; 1 for EPEx

    -   ### isEnabled

        public boolean isEnabled()

        Determines whether or not this model is enabled.

        Returns:

        `true` if this model is enabled, `false` otherwise.

    -   ### setEnabled

        public void setEnabled(boolean enabled\_)

        Sets whether or not this model is enabled.

        Parameters:

        `enabled_` - `true` if this model is enabled, `false` otherwise.

    -   ### getPermissions

        public [ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissions()

        Gets the set of permissions that the logged-in user has on this model.

        Returns:

        the permissions that the logged-in user has on this model.

    -   ### setPermissions

        public void setPermissions([ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") permissions\_)

        Sets the set of permissions that the logged-in user has on this model.

        Parameters:

        `permissions_` - the permissions that the logged-in user has on this model.

    -   ### getFolderId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getFolderId()

        Gets the folder in which this model is saved.

        Returns:

        the id of folder in which this model is saved.

    -   ### setFolderId

        public void setFolderId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_)

        Sets the folder in which this model is saved.

        Parameters:

        `folderId_` - the id of the folder in which this model is saved.

    -   ### isValidated

        public boolean isValidated()

        Determines whether this model is validated.

        Returns:

        `true` if this model is validated, `false` otherwise.

    -   ### setValidated

        public void setValidated(boolean validated\_)

        Sets whether this model is validated.

        Parameters:

        `validated_` - `true` if this model is validated, `false` otherwise.

    -   ### getLockedBy

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLockedBy()

        Gets the user by whom this model is currently locked.

        Returns:

        the username of the user by whom this model is locked, or `null` if this model is unlocked.

    -   ### setLockedBy

        public void setLockedBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy\_)

        Sets the user by whom this model is currently locked.

        Parameters:

        `lockedBy_` - the username of the user by whom this model is locked, or `null` if this model is unlocked.

    -   ### getVersion

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getVersion()

        Gets the version of this model.

        Returns:

        the version of the process model, as a String holding a dot-separated number (such as 1.3.0).

    -   ### setVersion

        public void setVersion([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_)

        Gets the version of this model.

        Parameters:

        `version_` - the version of the process model, as a String holding a dot-separated number (such as 1.3.0).

    -   ### getTimeStampCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimeStampCreated()

        Gets the time at which this model was created.

        Returns:

        the time the process model was created.

    -   ### setTimeStampCreated

        public void setTimeStampCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStampCreated\_)

        Sets the time at which this model was created.

        Parameters:

        `timeStampCreated_` - the time the process model was created.

    -   ### getTimeStampUpdated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimeStampUpdated()

        Gets the time at which this model was last updated.

        Returns:

        the time the process model was last updated.

    -   ### setTimeStampUpdated

        public void setTimeStampUpdated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStampUpdated\_)

        Sets the time at which this model was last updated.

        Parameters:

        `timeStampUpdated_` - the time the process model was last updated.

    -   ### getCreatorUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreatorUsername()

        Gets the use that created this model.

        Returns:

        the username of the user that created this model.

    -   ### setCreatorUsername

        public void setCreatorUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creatorUsername\_)

        Sets the use that created this model.

        Parameters:

        `creatorUsername_` - the username of the user that created this model.

    -   ### getVersionStatus

        public int getVersionStatus()

        Gets the version status of this model.

        Returns:

        the status of this version, as one of the `STATUS_XXX` constants.

    -   ### setVersionStatus

        public void setVersionStatus(int versionStatus\_)

        Sets the version status of this model.

        Parameters:

        `versionStatus_` - the status of this version, as one of the `STATUS_XXX` constants.

    -   ### getDescription

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getDescription()

        Gets the localized description of this model.

        Returns:

        a description of this model.

    -   ### setDescription

        public void setDescription([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") description\_)

        Sets the localized description of the process model.

        Parameters:

        `description_` - a description of this model.

    -   ### getSortProperty

        public static int getSortProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute\_)

        Gets the sort property id that corresponds to the given attribute.

        Parameters:

        `attribute_` - the name of a property of the model descriptor

        Returns:

        the id of the sort column for the attribute, as one of the `SORT_XXX` constants.

    -   ### getObjectType

        public int getObjectType()

        Gets the object type, for use by UI components. The object type is always [`AppianType.PROCESS_MODEL`](../type/AppianType.html#PROCESS_MODEL).

        Returns:

        `TypedVariable.PROCESS_MODEL`.

    -   ### setObjectType

        public void setObjectType(int objectType\_)

        Sets the object type for this model, which should always be [`AppianType.PROCESS_MODEL`](../type/AppianType.html#PROCESS_MODEL).

        Parameters:

        `objectType_` - the object type for this model, which should always be `TypedVariable.PROCESS_MODEL`.

    -   ### getDashboardId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDashboardId()

    -   ### setDashboardId

        public void setDashboardId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dashboardId\_)

    -   ### getFavorite

        public boolean getFavorite()

    -   ### setFavorite

        public void setFavorite(boolean favorite\_)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Description copied from class: `[LocalizedIdentity](../common/LocalizedIdentity.html#toString\(\))`

        Returns a string representation of the `LocalizedIdentity`. In general, the toString method returns a string that "textually represents" this object. Note that the name value will be the encode representation.

        Overrides:

        `[toString](../common/LocalizedIdentity.html#toString\(\))` in class `[LocalizedIdentity](../common/LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        String representation of the object

    -   ### getLastModifiedUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLastModifiedUsername()

    -   ### setLastModifiedUsername

        public void setLastModifiedUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastModifiedUsername)

    -   ### getPriority

        public [Priority](Priority.html "class in com.appiancorp.suiteapi.process") getPriority()

        Gets the priority of this model.

        Returns:

        the priority of this model.

    -   ### setPriority

        public void setPriority([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority\_)

        Sets the priority of this model.

        Parameters:

        `priority_` - the priority of this model.

    -   ### getMutablePriority

        public boolean getMutablePriority()

        Determines whether the priority of this model can be chagned.

        Returns:

        `true` if the priority can be change, `false` if it cannot be changed.

    -   ### setMutablePriority

        public void setMutablePriority(boolean mutablePriority\_)

        Sets whether or not the priority of processes of this process model can be changed

        Parameters:

        `mutablePriority_` - `true` if the priority of processes of this model can be changed, `false` if the priority cannot be changed.