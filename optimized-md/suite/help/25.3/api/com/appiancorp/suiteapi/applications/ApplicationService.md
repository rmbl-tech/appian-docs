---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/applications/ApplicationService.html
original_path: api/com/appiancorp/suiteapi/applications/ApplicationService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.applications](package-summary.html)

# Interface ApplicationService

All Superinterfaces:

`[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface ApplicationService extends [ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

Application service.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[create$UPDATES](#create$UPDATES)`

    `static final boolean`

    `[delete$UPDATES](#delete$UPDATES)`

    `static final boolean`

    `[getApplication$UPDATES](#getApplication$UPDATES)`

    `static final boolean`

    `[getApplicationsPaging$UPDATES](#getApplicationsPaging$UPDATES)`

    `static final boolean`

    `[getApplicationsWithRoleSetsPaging$UPDATES](#getApplicationsWithRoleSetsPaging$UPDATES)`

    `static final boolean`

    `[getApplicationWithRoleSet$UPDATES](#getApplicationWithRoleSet$UPDATES)`

    `static final boolean`

    `[getDefaultApplication$UPDATES](#getDefaultApplication$UPDATES)`

    `static final boolean`

    `[getRoleMap$UPDATES](#getRoleMap$UPDATES)`

    `static final boolean`

    `[save$UPDATES](#save$UPDATES)`

    `static final boolean`

    `[setDefaultApplication$UPDATES](#setDefaultApplication$UPDATES)`

    `static final boolean`

    `[setRoleMap$UPDATES](#setRoleMap$UPDATES)`

    `static final boolean`

    `[updateAssociatedObjects$UPDATES](#updateAssociatedObjects$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[CONFIGURE_METHOD_NAME](../../services/ContextSensitiveSingletonService.html#CONFIGURE_METHOD_NAME)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAction](#addAction\(java.lang.Long,com.appiancorp.suiteapi.applications.ApplicationAction\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appId, [ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") action)`

    Adds an Application Action with the given user friendly label, process model UUID, and description of the action.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[create](#create\(com.appiancorp.suiteapi.applications.Application\))([Application](Application.html "class in com.appiancorp.suiteapi.applications") application)`

    Creates an application.

    `void`

    `[delete](#delete\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Deletes the specified application.

    `void`

    `[delete](#delete\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id)`

    Deletes the specified applications.

    `[Application](Application.html "class in com.appiancorp.suiteapi.applications")`

    `[getApplication](#getApplication\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Retrieves an application given its id.

    `[Application](Application.html "class in com.appiancorp.suiteapi.applications")`

    `[getApplication](#getApplication\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier)`

    Retrieves an application given its URL identifier.

    `[Application](Application.html "class in com.appiancorp.suiteapi.applications")`

    `[getApplicationByUuid](#getApplicationByUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Retrieves an application given its UUID.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getApplicationsPaging](#getApplicationsPaging\(int,int,java.lang.Integer,java.lang.Integer,boolean\))(int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder, boolean includeDrafts)`

    Retrieves the applications defined on the system.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getApplicationsWithRoleSetsPaging](#getApplicationsWithRoleSetsPaging\(int,int,java.lang.Integer,java.lang.Integer,boolean\))(int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder, boolean includeDrafts)`

    Retrieves the applications defined on the system with its [`ContentRoleSet`](../content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content") set to a non-null value.

    `[Application](Application.html "class in com.appiancorp.suiteapi.applications")`

    `[getApplicationWithRoleSet](#getApplicationWithRoleSet\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Retrieves an application given its id with its [`ContentRoleSet`](../content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content") set to a non-null value.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDefaultApplication](#getDefaultApplication\(\))()`

    Gets the default system application.

    `[ApplicationRoleMap](ApplicationRoleMap.html "class in com.appiancorp.suiteapi.applications")`

    `[getRoleMap](#getRoleMap\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Retrieves the security role map for the specified application.

    `void`

    `[save](#save\(com.appiancorp.suiteapi.applications.Application\))([Application](Application.html "class in com.appiancorp.suiteapi.applications") application)`

    Saves an application.

    `[Application](Application.html "class in com.appiancorp.suiteapi.applications")`

    `[save](#save\(com.appiancorp.suiteapi.applications.Application,java.util.Set\))([Application](Application.html "class in com.appiancorp.suiteapi.applications") application, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")> section)`

    Saves only the specified section of the application.

    `void`

    `[setDefaultApplication](#setDefaultApplication\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Sets a default system application.

    `void`

    `[setRoleMap](#setRoleMap\(java.lang.Long,com.appiancorp.suiteapi.applications.ApplicationRoleMap\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [ApplicationRoleMap](ApplicationRoleMap.html "class in com.appiancorp.suiteapi.applications") rolemap)`

    Sets the security role map definition for the specified application.

    `void`

    `[updateAction](#updateAction\(java.lang.Long,com.appiancorp.suiteapi.applications.ApplicationAction\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appId, [ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") updatedAction)`

    Updates an existing Application Action with the given action that contains the new user friendly label, description of the action, and process model UUID.

    `[Application](Application.html "class in com.appiancorp.suiteapi.applications")`

    `[updateAssociatedObjects](#updateAssociatedObjects\(java.lang.Long,com.appiancorp.ix.Type,java.lang.String%5B%5D,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appId, com.appiancorp.ix.Type<?,?,[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> type, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] add, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] remove)`

    Deprecated.

    use [`updateAssociatedObjectsByType(Long, Type, Object[], Object[])`](#updateAssociatedObjectsByType\(java.lang.Long,com.appiancorp.ix.Type,U%5B%5D,U%5B%5D\)) instead

    `<H extends com.appiancorp.ix.Haul<I, U>, I, U>   [Application](Application.html "class in com.appiancorp.suiteapi.applications")`

    `[updateAssociatedObjectsByType](#updateAssociatedObjectsByType\(java.lang.Long,com.appiancorp.ix.Type,U%5B%5D,U%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appId, com.appiancorp.ix.Type<H,I,U> type, U[] add, U[] remove)`

    Associates or disassociates objects related to this application.

    ### Methods inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[configureContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\))`

-   ## Field Details

    -   ### create$UPDATES

        static final boolean create$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.create$UPDATES)

    -   ### save$UPDATES

        static final boolean save$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.save$UPDATES)

    -   ### updateAssociatedObjects$UPDATES

        static final boolean updateAssociatedObjects$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.updateAssociatedObjects$UPDATES)

    -   ### delete$UPDATES

        static final boolean delete$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.delete$UPDATES)

    -   ### getApplication$UPDATES

        static final boolean getApplication$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.getApplication$UPDATES)

    -   ### getApplicationWithRoleSet$UPDATES

        static final boolean getApplicationWithRoleSet$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.getApplicationWithRoleSet$UPDATES)

    -   ### getApplicationsPaging$UPDATES

        static final boolean getApplicationsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.getApplicationsPaging$UPDATES)

    -   ### getApplicationsWithRoleSetsPaging$UPDATES

        static final boolean getApplicationsWithRoleSetsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.getApplicationsWithRoleSetsPaging$UPDATES)

    -   ### getRoleMap$UPDATES

        static final boolean getRoleMap$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.getRoleMap$UPDATES)

    -   ### setRoleMap$UPDATES

        static final boolean setRoleMap$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.setRoleMap$UPDATES)

    -   ### setDefaultApplication$UPDATES

        static final boolean setDefaultApplication$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.setDefaultApplication$UPDATES)

    -   ### getDefaultApplication$UPDATES

        static final boolean getDefaultApplication$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.applications.ApplicationService.getDefaultApplication$UPDATES)

-   ## Method Details

    -   ### create

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") create([Application](Application.html "class in com.appiancorp.suiteapi.applications") application) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates an application.

        Parameters:

        `application` - The application object to be created.

        Returns:

        The id of the created application.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - if the application is in an inconsistent state or if its identifier matches that of any of the existing applications

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform this action.

    -   ### save

        void save([Application](Application.html "class in com.appiancorp.suiteapi.applications") application) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications"), [UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications"), [InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications"), [InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")

        Saves an application.

        Parameters:

        `application` - The application to be updated.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If an invalid Application is provided.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If the ID field of the Application object does not match an object in the Database

        `[UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If the application couldn't be saved because it couldn't get the lock to it.

        `[InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")` - If the navigation item points to a page that is not already associated with the application.

        `[InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")` - If there is an action pointing to a process model that is not already associated with the application.

    -   ### save

        [Application](Application.html "class in com.appiancorp.suiteapi.applications") save([Application](Application.html "class in com.appiancorp.suiteapi.applications") application, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Application.Section](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")\> section) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications"), [UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications"), [InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications"), [InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")

        Saves only the specified section of the application. For example, if saving "metadata", this method won't modify the state of the bean related for associated objects nor navigation items.

        Parameters:

        `application` - The application to be updated.

        `section` - The [`Application.Section`](Application.Section.html "enum class in com.appiancorp.suiteapi.applications")(s) of the application to be updated.

        Returns:

        application The updated object bean. Notice that this object might be different from the one provided as parameter because this method only updates a given section of the bean. Example, if updating navigation objects, after saving the object, the application metadata might be different if other user updated that section.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If an invalid Application is provided.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If the ID field of the Application object does not match an object in the Database

        `[UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If the application couldn't be saved because it couldn't get the lock to it.

        `[InvalidNavigationItemException](InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")` - If there is a navigation item pointing to a page that is not already associated with the application.

        `[InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")` - If there is an action pointing to a process model that is not already associated with the application.

    -   ### updateAssociatedObjects

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Application](Application.html "class in com.appiancorp.suiteapi.applications") updateAssociatedObjects([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appId, com.appiancorp.ix.Type<?,?,[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> type, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] add, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] remove) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")

        Deprecated.

        use [`updateAssociatedObjectsByType(Long, Type, Object[], Object[])`](#updateAssociatedObjectsByType\(java.lang.Long,com.appiancorp.ix.Type,U%5B%5D,U%5B%5D\)) instead

        Associates or disassociates objects related to this application.

        Parameters:

        `appId` - The application id to update.

        `type` - The type of the objects to associate/disassociate

        `add` - The objects to associate with this application (can be null).

        `remove` - The objects to dissasociate from this application (can be null).

        Returns:

        application The updated object bean. Notice that this object might be different from the one provided as parameter because this method only updates a given section of the bean. Example, if updating navigation objects, after saving the object, the application metadata might be different if other user updated that section.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If an invalid Application id is provided.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")`

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If the application couldn't be saved because it couldn't get the lock to it.

    -   ### updateAssociatedObjectsByType

        <H extends com.appiancorp.ix.Haul<I, U>, I, U> [Application](Application.html "class in com.appiancorp.suiteapi.applications") updateAssociatedObjectsByType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appId, com.appiancorp.ix.Type<H,I,U> type, U\[\] add, U\[\] remove) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")

        Associates or disassociates objects related to this application.

        Parameters:

        `appId` - The application id to update.

        `type` - The type of the objects to associate/disassociate

        `add` - The objects to associate with this application (can be null).

        `remove` - The objects to dissasociate from this application (can be null).

        Returns:

        application The updated object bean. Notice that this object might be different from the one provided as parameter because this method only updates a given section of the bean. Example, if updating navigation objects, after saving the object, the application metadata might be different if other user updated that section.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If an invalid Application id is provided.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")`

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If the application couldn't be saved because it couldn't get the lock to it.

    -   ### addAction

        void addAction([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appId, [ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") action) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications"), [UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications"), [InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")

        Adds an Application Action with the given user friendly label, process model UUID, and description of the action.

        Parameters:

        `appId` - The application id to update.

        `action` - The action to add.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If an invalid Application id is provided.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If there is no application associated with the specified ID.

        `[UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If the lock to the application cannot be obtained.

        `[InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")` - If the action points to a process model that is not already associated with the application.

    -   ### updateAction

        void updateAction([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appId, [ApplicationAction](ApplicationAction.html "class in com.appiancorp.suiteapi.applications") updatedAction) throws [InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications"), [UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications"), [InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications"), [ActionNotFoundException](ActionNotFoundException.html "class in com.appiancorp.suiteapi.applications")

        Updates an existing Application Action with the given action that contains the new user friendly label, description of the action, and process model UUID.

        Parameters:

        `appId` - The application id to update.

        `updatedAction` - The action with an updated user friendly label, description, and process model UUID.

        Throws:

        `[InvalidApplicationException](InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If an invalid Application id is provided.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If there is no application associated with the specified ID.

        `[UnavailableApplicationException](UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")` - If the lock to the application cannot be obtained.

        `[InvalidActionException](InvalidActionException.html "class in com.appiancorp.suiteapi.applications")` - If the action points to a process model that is not already associated with the application.

        `[ActionNotFoundException](ActionNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If the action to update does not exist.

    -   ### delete

        void delete([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")

        Deletes the specified application.

        Parameters:

        `id` - The ID of the application to be deleted.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If there is no application associated with the specified IDs.

    -   ### delete

        void delete([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")

        Deletes the specified applications.

        Parameters:

        `id` - An array IDs corresponding to the applications to be deleted.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If there is no application associated with any of the specified IDs.

    -   ### getApplication

        [Application](Application.html "class in com.appiancorp.suiteapi.applications") getApplication([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")

        Retrieves an application given its id.

        Parameters:

        `id` - The id of the application to be retrieved.

        Returns:

        The application bean whose id matches the given id.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If there is no application associated with the specified id.

    -   ### getApplicationByUuid

        [Application](Application.html "class in com.appiancorp.suiteapi.applications") getApplicationByUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")

        Retrieves an application given its UUID.

        Parameters:

        `uuid` - The UUID of the application to be retrieved.

        Returns:

        The application bean whose uuid matches the given uuid.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If there is no application associated with the specified uuid.

    -   ### getApplication

        [Application](Application.html "class in com.appiancorp.suiteapi.applications") getApplication([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") urlIdentifier) throws [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves an application given its URL identifier.

        Parameters:

        `urlIdentifier` - The URL identifier of the application to be retrieved.

        Returns:

        The application bean whose id matches the given URL identifier.

        Throws:

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If there is no application associated with the specified URL identifier.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have permission to perform this action.

    -   ### getApplicationWithRoleSet

        [Application](Application.html "class in com.appiancorp.suiteapi.applications") getApplicationWithRoleSet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")

        Retrieves an application given its id with its [`ContentRoleSet`](../content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content") set to a non-null value. The [`ContentRoleSet`](../content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content") represents the access permissions the current user has to this object. Use this method when you know in advance that you are going to use the user's access levels to the Application object. Usage example: `app.getRoleSet().getCanAdministrate()`

        Parameters:

        `id` - The id of the application to be retrieved.

        Returns:

        The application bean whose id matches the given id.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform this action.

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If there is no application associated with the specified id.

    -   ### getApplicationsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getApplicationsPaging(int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder, boolean includeDrafts)

        Retrieves the applications defined on the system.

        Parameters:

        `startIndex` - the index of the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty` - The property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](../content/ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `includeDrafts` - whether or not to include "DRAFT" applications with the results, otherwise, only "PUBLISHED" applications will be in the list. An application is in "published" mode when setting Application.setPublished(true)

        Returns:

        a ResultPage containing the list of `Application` objects.

    -   ### getApplicationsWithRoleSetsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getApplicationsWithRoleSetsPaging(int startIndex, int batchSize, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder, boolean includeDrafts)

        Retrieves the applications defined on the system with its [`ContentRoleSet`](../content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content") set to a non-null value. The [`ContentRoleSet`](../content/ContentRoleSet.html "class in com.appiancorp.suiteapi.content") represents the access permissions the current user has to this object. Use this method when you know in advance that you are going to\* use the user's access levels to the Application object. Usage example: `app.getRoleSet().getCanAdministrate()`

        Parameters:

        `startIndex` - the index of the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize` - batchSize the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty` - The property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](../content/ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder` - sortOrder the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `includeDrafts` - whether or not to include "DRAFT" applications with the results, otherwise, only "PUBLISHED" applications will be in the list. An application is in "published" mode when setting Application.setPublished(true)

        Returns:

        a ResultPage containing the list of `Application` objects.

    -   ### getRoleMap

        [ApplicationRoleMap](ApplicationRoleMap.html "class in com.appiancorp.suiteapi.applications") getRoleMap([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the security role map for the specified application.

        Parameters:

        `id` - The application id.

        Returns:

        ApplicationRoleMap

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform this action

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If there is no application associated with the specified id.

    -   ### setRoleMap

        void setRoleMap([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [ApplicationRoleMap](ApplicationRoleMap.html "class in com.appiancorp.suiteapi.applications") rolemap) throws [ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the security role map definition for the specified application.

        Parameters:

        `id` - The application id.

        `rolemap` - The application role map.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user or group is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to perform this action

        `[ApplicationNotFoundException](ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")` - If there is no application associated with the specified id.

    -   ### setDefaultApplication

        void setDefaultApplication([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets a default system application. This would be the first application that users see by default in the applications environment. Requires system administrator privileges and also assumes that the application exists.

        Parameters:

        `id` - The application id.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user is not an admin.

    -   ### getDefaultApplication

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDefaultApplication()

        Gets the default system application. If no default system application has been set, this will return null.

        Returns:

        The id of the default application.