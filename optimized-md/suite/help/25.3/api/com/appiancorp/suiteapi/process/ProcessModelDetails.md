---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessModelDetails.html
original_path: api/com/appiancorp/suiteapi/process/ProcessModelDetails.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessModelDetails

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")

[com.appiancorp.suiteapi.process.ProcessModelSummary](ProcessModelSummary.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.ProcessModelDetails

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessModelDetails extends [ProcessModelSummary](ProcessModelSummary.html "class in com.appiancorp.suiteapi.process")

Holds detailed metadata about a [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process").

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessModelDetails)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessModelDetails](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getFormConfig](#getFormConfig\(\))()`

    Gets the configuration of the form used to start processes of this model.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getGroupOwners](#getGroupOwners\(\))()`

    Deprecated.

    property is no longer used

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTimezoneId](#getTimezoneId\(\))()`

    Gets the timezone ID of this model.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getUserOwners](#getUserOwners\(\))()`

    Deprecated.

    property is no longer used

    `void`

    `[setFormConfig](#setFormConfig\(com.appiancorp.suiteapi.process.forms.FormConfig\))([FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") formConfig_)`

    Sets the configuration of the form used to start processes of this model.

    `void`

    `[setGroupOwners](#setGroupOwners\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] owners_)`

    Deprecated.

    property is no longer used

    `void`

    `[setTimezoneId](#setTimezoneId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timezoneId_)`

    Sets the timezone ID for this model.

    `void`

    `[setUserOwners](#setUserOwners\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] owners_)`

    Deprecated.

    property is no longer used

    ### Methods inherited from class com.appiancorp.suiteapi.process.[ProcessModelSummary](ProcessModelSummary.html "class in com.appiancorp.suiteapi.process")

    `[getCreatedTime](ProcessModelSummary.html#getCreatedTime\(\)), [getCreator](ProcessModelSummary.html#getCreator\(\)), [getDefaultProcessPriorityName](ProcessModelSummary.html#getDefaultProcessPriorityName\(\)), [getFavorite](ProcessModelSummary.html#getFavorite\(\)), [getLastModifiedTime](ProcessModelSummary.html#getLastModifiedTime\(\)), [getLatestPublishedVersion](ProcessModelSummary.html#getLatestPublishedVersion\(\)), [getMutablePriority](ProcessModelSummary.html#getMutablePriority\(\)), [getPermissions](ProcessModelSummary.html#getPermissions\(\)), [getPriority](ProcessModelSummary.html#getPriority\(\)), [getSortProperty](ProcessModelSummary.html#getSortProperty\(java.lang.String\)), [getStatusName](ProcessModelSummary.html#getStatusName\(\)), [getTargetCompletion](ProcessModelSummary.html#getTargetCompletion\(\)), [setCreatedTime](ProcessModelSummary.html#setCreatedTime\(java.sql.Timestamp\)), [setCreator](ProcessModelSummary.html#setCreator\(java.lang.String\)), [setDefaultProcessPriorityName](ProcessModelSummary.html#setDefaultProcessPriorityName\(java.lang.String\)), [setFavorite](ProcessModelSummary.html#setFavorite\(boolean\)), [setLastModifiedTime](ProcessModelSummary.html#setLastModifiedTime\(java.sql.Timestamp\)), [setLatestPublishedVersion](ProcessModelSummary.html#setLatestPublishedVersion\(java.lang.String\)), [setMutablePriority](ProcessModelSummary.html#setMutablePriority\(boolean\)), [setPermissions](ProcessModelSummary.html#setPermissions\(com.appiancorp.suiteapi.process.security.ProcessModelPermissions\)), [setPriority](ProcessModelSummary.html#setPriority\(com.appiancorp.suiteapi.process.Priority\)), [setStatusName](ProcessModelSummary.html#setStatusName\(java.lang.String\)), [setTargetCompletion](ProcessModelSummary.html#setTargetCompletion\(java.lang.Float\)), [toXML](ProcessModelSummary.html#toXML\(\)), [toXML](ProcessModelSummary.html#toXML\(java.lang.StringBuilder\))`

    ### Methods inherited from class com.appiancorp.suiteapi.process.[ProcessModelProperties](ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")

    `[getDescription](ProcessModelProperties.html#getDescription\(\)), [getDesigner](ProcessModelProperties.html#getDesigner\(\)), [getProcessModelVersionId](ProcessModelProperties.html#getProcessModelVersionId\(\)), [setDescription](ProcessModelProperties.html#setDescription\(java.lang.String\)), [setDesigner](ProcessModelProperties.html#setDesigner\(java.lang.String\)), [setProcessModelVersionId](ProcessModelProperties.html#setProcessModelVersionId\(java.lang.String\)), [toString](ProcessModelProperties.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### ProcessModelDetails

        public ProcessModelDetails()

-   ## Method Details

    -   ### getGroupOwners

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getGroupOwners()

        Deprecated.

        property is no longer used

        Gets the groups that own this model.

        Returns:

        the ids of the groups that own this model.

    -   ### setGroupOwners

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setGroupOwners([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] owners\_)

        Deprecated.

        property is no longer used

        Sets the groups that own this model.

    -   ### getUserOwners

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getUserOwners()

        Deprecated.

        property is no longer used

        Gets the users that own this model.

        Returns:

        the usernames of the users that own this model.

    -   ### setUserOwners

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setUserOwners([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] owners\_)

        Deprecated.

        property is no longer used

        Sets the users that own this model.

        Parameters:

        `owners_` - the usernames of the users that own this model.

    -   ### getTimezoneId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTimezoneId()

        Gets the timezone ID of this model.

        Returns:

        the timezone ID of this model.

    -   ### setTimezoneId

        public void setTimezoneId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timezoneId\_)

        Sets the timezone ID for this model.

        Parameters:

        `timezoneId_` - the timezone ID of this model.

    -   ### getFormConfig

        public [FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") getFormConfig()

        Gets the configuration of the form used to start processes of this model.

        Returns:

        the configuration of the form used to start processes of this model.

    -   ### setFormConfig

        public void setFormConfig([FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") formConfig\_)

        Sets the configuration of the form used to start processes of this model.

        Parameters:

        `formConfig_` - the configuration of the form used to start processes of this model.