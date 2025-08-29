---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessAdministrationService.html
original_path: api/com/appiancorp/suiteapi/process/ProcessAdministrationService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Interface ProcessAdministrationService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface ProcessAdministrationService extends com.appiancorp.services.ContextSensitiveService

ProcessAdministrationService is used to create and modify properties of the overall process application.

A [`Palette`](Palette.html "class in com.appiancorp.suiteapi.process") holds a collection of nodes that can be dropped onto a canvas in the designer to create a process. Each node is represented as a [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process"). A [`PaletteCategory`](PaletteCategory.html "class in com.appiancorp.suiteapi.process") is an entity that holds palettes and/or other palette categories in a hierarchy.

When a system administrator adds a new activity to the system (also known as registering), an instance of this class is used to represent that activity. When a process designer puts a node in a process model, he or she is using an ActivityClass, which has a reference to this schema. The schema specifies what the parameters of an activity are and some of the restrictions on those parameters that constrain the designer's behavior.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    `static final boolean`

    `[getJmsPassword$UPDATES](#getJmsPassword$UPDATES)`

    `static final boolean`

    `[getJmsUsername$UPDATES](#getJmsUsername$UPDATES)`

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    `static final boolean`

    `[registerActivityClassSchema$UPDATES](#registerActivityClassSchema$UPDATES)`

    `static final boolean`

    `[registerActivityClassSchemas$UPDATES](#registerActivityClassSchemas$UPDATES)`

    `static final boolean`

    `[registerPriorities$UPDATES](#registerPriorities$UPDATES)`

    `static final boolean`

    `[setJmsPassword$UPDATES](#setJmsPassword$UPDATES)`

    `static final boolean`

    `[setJmsUsername$UPDATES](#setJmsUsername$UPDATES)`

    `static final boolean`

    `[unregisterActivityClassSchema$UPDATES](#unregisterActivityClassSchema$UPDATES)`

    `static final boolean`

    `[unregisterActivityClassSchemas$UPDATES](#unregisterActivityClassSchemas$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Gets the name of the application on which this service is running.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getJmsPassword](#getJmsPassword\(\))()`

    Deprecated.

    See jms.properties createConnectionPassword.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getJmsUsername](#getJmsUsername\(\))()`

    Deprecated.

    See jms.properties createConnectionUsername.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Gets the current memory profile for the workspace.

    `void`

    `[registerActivityClassSchema](#registerActivityClassSchema\(com.appiancorp.suiteapi.process.ActivityClassSchema\))([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") schema_)`

    Registers the given activity class schema.

    `void`

    `[registerActivityClassSchemas](#registerActivityClassSchemas\(com.appiancorp.suiteapi.process.ActivityClassSchema%5B%5D\))([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")[] schemas_)`

    Registers the given activity class schemas.

    `[PriorityRegistration](PriorityRegistration.html "class in com.appiancorp.suiteapi.process")[]`

    `[registerPriorities](#registerPriorities\(com.appiancorp.suiteapi.process.PriorityRegistration%5B%5D\))([PriorityRegistration](PriorityRegistration.html "class in com.appiancorp.suiteapi.process")[] priorities_)`

    Registers the application's priorities.

    `void`

    `[setJmsPassword](#setJmsPassword\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") jmsPassword_)`

    Deprecated.

    See jms.properties createConnectionPassword.

    `void`

    `[setJmsUsername](#setJmsUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") jmsUsername_)`

    Deprecated.

    See jms.properties createConnectionUsername.

    `void`

    `[unregisterActivityClassSchema](#unregisterActivityClassSchema\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") activityClassSchemaLocalId_)`

    Unregisters the given schema.

    `void`

    `[unregisterActivityClassSchemas](#unregisterActivityClassSchemas\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] activityClassSchemaLocalIds_)`

    Unregisters the given schemas.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### registerActivityClassSchema$UPDATES

        static final boolean registerActivityClassSchema$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.registerActivityClassSchema$UPDATES)

    -   ### registerActivityClassSchemas$UPDATES

        static final boolean registerActivityClassSchemas$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.registerActivityClassSchemas$UPDATES)

    -   ### unregisterActivityClassSchema$UPDATES

        static final boolean unregisterActivityClassSchema$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.unregisterActivityClassSchema$UPDATES)

    -   ### unregisterActivityClassSchemas$UPDATES

        static final boolean unregisterActivityClassSchemas$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.unregisterActivityClassSchemas$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.getWorkspace$UPDATES)

    -   ### registerPriorities$UPDATES

        static final boolean registerPriorities$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.registerPriorities$UPDATES)

    -   ### getJmsUsername$UPDATES

        static final boolean getJmsUsername$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.getJmsUsername$UPDATES)

    -   ### setJmsUsername$UPDATES

        static final boolean setJmsUsername$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.setJmsUsername$UPDATES)

    -   ### getJmsPassword$UPDATES

        static final boolean getJmsPassword$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.getJmsPassword$UPDATES)

    -   ### setJmsPassword$UPDATES

        static final boolean setJmsPassword$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessAdministrationService.setJmsPassword$UPDATES)

-   ## Method Details

    -   ### registerActivityClassSchema

        void registerActivityClassSchema([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") schema\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Registers the given activity class schema. If a schema with the given `localId` already exists, that schema will be updated. If no schema with the given `localId` exists, a schema will be created. Required fields: Either `function` or `javaClassName`, and also: `executionEnvironmentId`, `type`, `unattended` and `localId`

        Parameters:

        `schema_` - the schema to register

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if any of the properties of the schema is invalid, or if any required fields are missing. See [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") for valid property values.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the username specifed in the Schema does not exists, i.e, the default value for an ACP or ARV of type user or people.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs.

    -   ### registerActivityClassSchemas

        void registerActivityClassSchemas([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\[\] schemas\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [DuplicateIdException](../common/exceptions/DuplicateIdException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Registers the given activity class schemas. If any schema with a given `localId` already exists, that schema will be updated. If no schema with a given `localId` exists, a schema will be created. Required fields: Either `function` or `javaClassName`, and also: `executionEnvironmentId`, `type`, `unattended` and `localId`

        Parameters:

        `schemas_` - the schemas to register

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - the any of the properties of the schema is invalid, or if any required fields are missing. See [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") for valid property values.

        `[DuplicateIdException](../common/exceptions/DuplicateIdException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any schema, or activity class parameter schema, or activity return variable has the same `localId` as another in the list. Note that localIds for ACPs and ARVs may be reused in other activity class schemas, but not within the same activity class schema

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the username specifed in the Schema does not exists, i.e, the default value for an ACP or ARV of type user or people.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unregisterActivityClassSchema

        void unregisterActivityClassSchema([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") activityClassSchemaLocalId\_) throws [InvalidActivityClassSchemaException](exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Unregisters the given schema.

        Parameters:

        `activityClassSchemaLocalId_` - the local Id of the schema to unregister

        Throws:

        `[InvalidActivityClassSchemaException](exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if the activity class schema does not exist

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the schema is currently in use (that is, if there exist palette items or nodes in process models that use the activity class schema)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unregisterActivityClassSchemas

        void unregisterActivityClassSchemas([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] activityClassSchemaLocalIds\_) throws [InvalidActivityClassSchemaException](exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Unregisters the given schemas.

        Parameters:

        `activityClassSchemaLocalIds_` - the local Ids of the schemas to unregister

        Throws:

        `[InvalidActivityClassSchemaException](exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if any activity class schema does not exist

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any schema is currently in use (that is, if there exist palette items or nodes in process models that use the activity class schema)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Gets the name of the application on which this service is running.

        Returns:

        the name of the application

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getWorkspace

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getWorkspace()

        Gets the current memory profile for the workspace.

        Returns:

        array of Strings of length 4 describing memory usage:

        -   \[0\]Used - Memory Used by the Server so far for storage
        -   \[1\]Allocated - Memory allocated for use. Often if a large data item was allocated by a server and subsequently freed, this value will be large compared to "Used". If nearly all memory allocated is in use, this value will be close to (but always higher than) "Used"
        -   \[2\]Mapped - is the space used by memory-mapped files
        -   \[3\]Available - is the total available memory for the Server process

        Note: All usage statistics are in Bytes.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### registerPriorities

        [PriorityRegistration](PriorityRegistration.html "class in com.appiancorp.suiteapi.process")\[\] registerPriorities([PriorityRegistration](PriorityRegistration.html "class in com.appiancorp.suiteapi.process")\[\] priorities\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Registers the application's priorities. If more than one of the priorities have default set to `true`, the last one registered will be set as the default priority. The `id`, `name`, `description`, `isDefault` and `iconId` fields in the `PriorityRegistration` bean are required.

        Parameters:

        `priorities_` - The priorities to register.

        Returns:

        The registered priorities.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - If:

        -   Entries of `priorities_` have any incorrect required fields.
        -   Trying to register two or more duplicated priorities.
        -   None of the priorities have the default property set to true.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any required field of the entries in `priorities_` is `null`, or any of the entry in `priorities_` itself is `null`.

    -   ### getJmsUsername

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getJmsUsername()

        Deprecated.

        See jms.properties createConnectionUsername. This method is no longer used.

        Gets the username that the product will use to connect to JMS Provider.

        Returns:

        the username to connect to JMS Provider.

    -   ### setJmsUsername

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setJmsUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") jmsUsername\_)

        Deprecated.

        See jms.properties createConnectionUsername. This method is no longer used.

        Sets the username that the product will use to connect to JMS Provider.

        Parameters:

        `jmsUsername_` - the username to connect to JMS Provider.

    -   ### getJmsPassword

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getJmsPassword()

        Deprecated.

        See jms.properties createConnectionPassword. This method is no longer used.

        Gets the password that the product will use to connect to JMS Provider.

        Returns:

        the password to connect to JMS Provider.

    -   ### setJmsPassword

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setJmsPassword([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") jmsPassword\_)

        Deprecated.

        See jms.properties createConnectionPassword. This method is no longer used.

        Sets the password that the product will use to connect to JMS Provider.

        Parameters:

        `jmsPassword_` - the password to connect to JMS Provider.