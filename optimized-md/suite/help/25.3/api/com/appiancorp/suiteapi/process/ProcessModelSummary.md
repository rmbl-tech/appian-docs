---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessModelSummary.html
original_path: api/com/appiancorp/suiteapi/process/ProcessModelSummary.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessModelSummary

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.ProcessModelSummary

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ProcessModelDetails](ProcessModelDetails.html "class in com.appiancorp.suiteapi.process")`

* * *

public class ProcessModelSummary extends [ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

Holds summary information about a process model, such as who created it, when, how many process instances are running, and how many have completed.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessModelSummary)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessModelSummary](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getCreatedTime](#getCreatedTime\(\))()`

    Gets the time at which this model was created.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreator](#getCreator\(\))()`

    Gets the user who created this model.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDefaultProcessPriorityName](#getDefaultProcessPriorityName\(\))()`

    Gets the name of the default process priority for processes of this model.

    `boolean`

    `[getFavorite](#getFavorite\(\))()`

    Returns whether or not the process model is one of the users favorites.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getLastModifiedTime](#getLastModifiedTime\(\))()`

    Gets the time at whcih this model was last modified.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLatestPublishedVersion](#getLatestPublishedVersion\(\))()`

    Gets the latest published version of this model.

    `boolean`

    `[getMutablePriority](#getMutablePriority\(\))()`

    Determines whether the priority of this model can be chagned.

    `[ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissions](#getPermissions\(\))()`

    Gets the permissions that the logged-in user has for this model.

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[getPriority](#getPriority\(\))()`

    Gets the priority of this model.

    `static int`

    `[getSortProperty](#getSortProperty\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute_)`

    Gets the zero-based index of the column whose name is the given parameter.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStatusName](#getStatusName\(\))()`

    Gets the name of the status of this model.

    `[Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang")`

    `[getTargetCompletion](#getTargetCompletion\(\))()`

    Gets the target duration in which the process should complete

    `void`

    `[setCreatedTime](#setCreatedTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    Sets the time at which this model was created.

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator_)`

    Sets the user who created this model.

    `void`

    `[setDefaultProcessPriorityName](#setDefaultProcessPriorityName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processPriorityName_)`

    Sets the name of the default process priority for processes of this model.

    `void`

    `[setFavorite](#setFavorite\(boolean\))(boolean favorite_)`

    `void`

    `[setLastModifiedTime](#setLastModifiedTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") modifiedTime_)`

    Sets the time at whcih this model was last modified.

    `void`

    `[setLatestPublishedVersion](#setLatestPublishedVersion\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version_)`

    Sets the latest published version of this model.

    `void`

    `[setMutablePriority](#setMutablePriority\(boolean\))(boolean mutablePriority_)`

    Sets whether or not the priority of processes of this process model can be changed

    `void`

    `[setPermissions](#setPermissions\(com.appiancorp.suiteapi.process.security.ProcessModelPermissions\))([ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") permissions_)`

    Sets the permissions that the logged-in user has for this model.

    `void`

    `[setPriority](#setPriority\(com.appiancorp.suiteapi.process.Priority\))([Priority](Priority.html "class in com.appiancorp.suiteapi.process") priority_)`

    Sets the priority of this model.

    `void`

    `[setStatusName](#setStatusName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Sets the name of the status of this model.

    `void`

    `[setTargetCompletion](#setTargetCompletion\(java.lang.Float\))([Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") targetCompletion_)`

    Sets the target duration in which the process should complete

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Generates an XML representaion of this summary.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object to the given buffer.

    ### Methods inherited from class com.appiancorp.suiteapi.process.[ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")

    `[getDescription](ProcessModelProperties.html#getDescription\(\)), [getDesigner](ProcessModelProperties.html#getDesigner\(\)), [getProcessModelVersionId](ProcessModelProperties.html#getProcessModelVersionId\(\)), [setDescription](ProcessModelProperties.html#setDescription\(java.lang.String\)), [setDesigner](ProcessModelProperties.html#setDesigner\(java.lang.String\)), [setProcessModelVersionId](ProcessModelProperties.html#setProcessModelVersionId\(java.lang.String\)), [toString](ProcessModelProperties.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### ProcessModelSummary

        public ProcessModelSummary()

-   ## Method Details

    -   ### getLatestPublishedVersion

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLatestPublishedVersion()

        Gets the latest published version of this model.

        Returns:

        the latest published version of the process model, as a `String` of dot-separated numbers (such as 1.3.0).

    -   ### setLatestPublishedVersion

        public void setLatestPublishedVersion([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") version\_)

        Sets the latest published version of this model.

        Parameters:

        `version_` - the latest published version of the process model, as a `String` of dot-separated numbers (such as 1.3.0).

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

    -   ### getCreatedTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getCreatedTime()

        Gets the time at which this model was created.

        Returns:

        the time at which this model was created.

    -   ### setCreatedTime

        public void setCreatedTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        Sets the time at which this model was created.

        Parameters:

        `time_` - the time at which this model was created.

    -   ### getDefaultProcessPriorityName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDefaultProcessPriorityName()

        Gets the name of the default process priority for processes of this model.

        Returns:

        the name of the default priority.

    -   ### setDefaultProcessPriorityName

        public void setDefaultProcessPriorityName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processPriorityName\_)

        Sets the name of the default process priority for processes of this model.

        Parameters:

        `processPriorityName_` - the name of the default priority.

    -   ### getLastModifiedTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getLastModifiedTime()

        Gets the time at whcih this model was last modified.

        Returns:

        the time at whcih this model was last modified.

    -   ### setLastModifiedTime

        public void setLastModifiedTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") modifiedTime\_)

        Sets the time at whcih this model was last modified.

        Parameters:

        `modifiedTime_` - the time at whcih this model was last modified.

    -   ### getStatusName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStatusName()

        Gets the name of the status of this model.

        Returns:

        the name of the status of this model.

    -   ### setStatusName

        public void setStatusName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Sets the name of the status of this model.

        Parameters:

        `name_` - the name of the status of this model.

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Gets the user who created this model.

        Returns:

        the username of the user who created this model.

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator\_)

        Sets the user who created this model.

        Parameters:

        `creator_` - the username of the user who created this model.

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Generates an XML representaion of this summary.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        an XML representaion of this summary.

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Appends an XML representation of this object to the given buffer.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - a buffer to which XML can be appended.

    -   ### getSortProperty

        public static int getSortProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute\_)

        Gets the zero-based index of the column whose name is the given parameter. If no such column exists, returns 0.

        Parameters:

        `attribute_` - the name of an attribute of the summary.

        Returns:

        the index of the column that matches the given sort attribute.

    -   ### getPermissions

        public [ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissions()

        Gets the permissions that the logged-in user has for this model.

        Returns:

        the permissions that the logged-in user has for this model.

    -   ### setPermissions

        public void setPermissions([ProcessModelPermissions](security/ProcessModelPermissions.html "class in com.appiancorp.suiteapi.process.security") permissions\_)

        Sets the permissions that the logged-in user has for this model.

        Parameters:

        `permissions_` - the permissions that the logged-in user has for this model.

    -   ### getTargetCompletion

        public [Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") getTargetCompletion()

        Gets the target duration in which the process should complete

        Returns:

        a value representing the number of days

    -   ### setTargetCompletion

        public void setTargetCompletion([Float](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Float.html "class or interface in java.lang") targetCompletion\_)

        Sets the target duration in which the process should complete

        Parameters:

        `targetCompletion_` - the target duration in days in which the process should complete

    -   ### getFavorite

        public boolean getFavorite()

        Returns whether or not the process model is one of the users favorites.

        Returns:

    -   ### setFavorite

        public void setFavorite(boolean favorite\_)