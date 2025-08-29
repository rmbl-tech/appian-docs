---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/GroupTypeService.html
original_path: api/com/appiancorp/suiteapi/personalization/GroupTypeService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Interface GroupTypeService

All Superinterfaces:

`[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface GroupTypeService extends [ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

Provides the main functionality needed to create, update, delete, and get groups types. GroupType [`GroupType`](GroupType.html "class in com.appiancorp.suiteapi.personalization") can be customized to have different Attributes [`Attribute`](Attribute.html "class in com.appiancorp.suiteapi.personalization"). The attribute types that are supported are listed below. There are five primitive types and two Appian types - User [`User`](User.html "class in com.appiancorp.suiteapi.personalization") and Group [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

See Also:

-   [`GroupService`](GroupService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`UserService`](UserService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`UserProfileService`](UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUPTYPE_ADD_GROUPTYPE_DYNAMIC_ATTRIBUTES](#ACTION_GROUPTYPE_ADD_GROUPTYPE_DYNAMIC_ATTRIBUTES)`

    The action of add to a group type's dynamic attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUPTYPE_DELETE_GROUPTYPE](#ACTION_GROUPTYPE_DELETE_GROUPTYPE)`

    The action of deleting a group type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUPTYPE_DELETE_GROUPTYPE_DYNAMIC_ATTRIBUTES](#ACTION_GROUPTYPE_DELETE_GROUPTYPE_DYNAMIC_ATTRIBUTES)`

    The action of delete a group type's dynamic attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUPTYPE_EDIT_GROUPTYPE_ATTRIBUTES](#ACTION_GROUPTYPE_EDIT_GROUPTYPE_ATTRIBUTES)`

    The action of editing a group type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUPTYPE_EDIT_GROUPTYPE_DYNAMIC_ATTRIBUTES](#ACTION_GROUPTYPE_EDIT_GROUPTYPE_DYNAMIC_ATTRIBUTES)`

    The action of edit a group type's dynamic attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUPTYPE_MODIFY_GROUPTYPE_SECURITY_SETTINGS](#ACTION_GROUPTYPE_MODIFY_GROUPTYPE_SECURITY_SETTINGS)`

    The action of modifying a group type's security settings

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUPTYPE_USE_GROUPTYPE](#ACTION_GROUPTYPE_USE_GROUPTYPE)`

    The action of using a group type (creating groups of that type)

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUPTYPE_VIEW_GROUPTYPE_ATTRIBUTES](#ACTION_GROUPTYPE_VIEW_GROUPTYPE_ATTRIBUTES)`

    The action of viewing a group type's attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUPTYPE_VIEW_GROUPTYPE_EXISTENCE](#ACTION_GROUPTYPE_VIEW_GROUPTYPE_EXISTENCE)`

    The action of viewing a group type

    `static final boolean`

    `[addAttribute$UPDATES](#addAttribute$UPDATES)`

    `static final boolean`

    `[createGroupType$UPDATES](#createGroupType$UPDATES)`

    `static final boolean`

    `[deleteAttribute$UPDATES](#deleteAttribute$UPDATES)`

    `static final boolean`

    `[deleteGroupType$UPDATES](#deleteGroupType$UPDATES)`

    `static final boolean`

    `[deleteGroupTypes$UPDATES](#deleteGroupTypes$UPDATES)`

    `static final boolean`

    `[doesGroupTypeExist$UPDATES](#doesGroupTypeExist$UPDATES)`

    `static final boolean`

    `[getAllGroupTypeAttributes$UPDATES](#getAllGroupTypeAttributes$UPDATES)`

    `static final boolean`

    `[getAllGroupTypeAttributesForGroupRules$UPDATES](#getAllGroupTypeAttributesForGroupRules$UPDATES)`

    `static final boolean`

    `[getAllGroupTypes$UPDATES](#getAllGroupTypes$UPDATES)`

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    `static final boolean`

    `[getGroupType$UPDATES](#getGroupType$UPDATES)`

    `static final boolean`

    `[getGroupTypeActions$UPDATES](#getGroupTypeActions$UPDATES)`

    `static final boolean`

    `[getGroupTypeAttributes$UPDATES](#getGroupTypeAttributes$UPDATES)`

    `static final boolean`

    `[getGroupTypeId$UPDATES](#getGroupTypeId$UPDATES)`

    `static final boolean`

    `[getGroupTypeIds$UPDATES](#getGroupTypeIds$UPDATES)`

    `static final boolean`

    `[getGroupTypeName$UPDATES](#getGroupTypeName$UPDATES)`

    `static final boolean`

    `[getGroupTypeNames$UPDATES](#getGroupTypeNames$UPDATES)`

    `static final boolean`

    `[getGroupTypes$UPDATES](#getGroupTypes$UPDATES)`

    `static final boolean`

    `[getOperatorsForDataType$UPDATES](#getOperatorsForDataType$UPDATES)`

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    `static final boolean`

    `[isAttributeUnique$UPDATES](#isAttributeUnique$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_BOOLEAN](#TYPE_BOOLEAN)`

    Type for attributes that are booleans

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_DATE](#TYPE_DATE)`

    Type for attributes that are dates

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_FLOAT](#TYPE_FLOAT)`

    Type for attributes that are decimals

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_GROUP](#TYPE_GROUP)`

    Type for attributes that are Appian Groups [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_INTEGER](#TYPE_INTEGER)`

    Type for attributes that are integers

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_STRING](#TYPE_STRING)`

    Type for attributes that are strings

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_USER](#TYPE_USER)`

    Type for attributes that are Appian Users [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

    `static final boolean`

    `[updateGroupType$UPDATES](#updateGroupType$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[CONFIGURE_METHOD_NAME](../../services/ContextSensitiveSingletonService.html#CONFIGURE_METHOD_NAME)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAttribute](#addAttribute\(java.lang.Long,com.appiancorp.suiteapi.personalization.Attribute\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_, [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization") attribute_)`

    Adds a new attribute to a group type.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createGroupType](#createGroupType\(com.appiancorp.suiteapi.personalization.GroupType\))([GroupType](GroupType.html "class in com.appiancorp.suiteapi.personalization") groupType_)`

    Creates a new group type.

    `void`

    `[deleteAttribute](#deleteAttribute\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName_)`

    Deletes a single attribute from a given group type The attribute will also be deleted from groups that reference this group type.

    `void`

    `[deleteGroupType](#deleteGroupType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_)`

    Deletes a single group type.

    `void`

    `[deleteGroupTypes](#deleteGroupTypes\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupTypeIds_)`

    Deletes a list of group types.

    `boolean`

    `[doesGroupTypeExist](#doesGroupTypeExist\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_)`

    Determines whether a given group type exists

    `boolean`

    `[doesGroupTypeExist](#doesGroupTypeExist\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeName_)`

    Checks to see if a given group type exists

    `[Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getAllGroupTypeAttributes](#getAllGroupTypeAttributes\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_)`

    Gets the list of group type attributes for a particular group type, both fixed and dynamic attributes.

    `[Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getAllGroupTypeAttributesForGroupRules](#getAllGroupTypeAttributesForGroupRules\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_)`

    Deprecated.

    `[GroupType](GroupType.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getAllGroupTypes](#getAllGroupTypes\(\))()`

    Gets a list of all group types

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Gets the name of the application on which this service is running.

    `[GroupType](GroupType.html "class in com.appiancorp.suiteapi.personalization")`

    `[getGroupType](#getGroupType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_)`

    Gets a group type by ID.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[getGroupTypeActions](#getGroupTypeActions\(java.lang.Long,java.lang.Integer%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] actionIds_)`

    Gets Boolean array for the actions passed in, that indicates whether the actions can be performed on the given group type by the current user.

    `[Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroupTypeAttributes](#getGroupTypeAttributes\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_)`

    Gets the list of fixed attributes for a given group type.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getGroupTypeId](#getGroupTypeId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeName_)`

    Gets the ID for a given group type, by group type name.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getGroupTypeIds](#getGroupTypeIds\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] groupTypeNames_)`

    Gets a list of group type ids for a given set of group type names.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGroupTypeName](#getGroupTypeName\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_)`

    Gets the name of the group type that corresponds to a given group type ID.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getGroupTypeNames](#getGroupTypeNames\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupTypeIds_)`

    Gets the names of the group types that correspond to a given list of group type IDs.

    `[GroupType](GroupType.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroupTypes](#getGroupTypes\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupTypeIds_)`

    Gets a list of group types by ID

    `[Operator](Operator.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getOperatorsForDataType](#getOperatorsForDataType\(int\))(int dataType_)`

    Gets a list of possible operators for a given data type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Gets the current memory profile for the workspace.

    `boolean`

    `[isAttributeUnique](#isAttributeUnique\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_)`

    Determines whether a given attribute name is unique for a particular group type

    `void`

    `[updateGroupType](#updateGroupType\(com.appiancorp.suiteapi.personalization.GroupType\))([GroupType](GroupType.html "class in com.appiancorp.suiteapi.personalization") groupType_)`

    Updates a group type's name and description.

    ### Methods inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[configureContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\))`

-   ## Field Details

    -   ### TYPE\_BOOLEAN

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_BOOLEAN

        Type for attributes that are booleans

    -   ### TYPE\_STRING

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_STRING

        Type for attributes that are strings

    -   ### TYPE\_INTEGER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_INTEGER

        Type for attributes that are integers

    -   ### TYPE\_FLOAT

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_FLOAT

        Type for attributes that are decimals

    -   ### TYPE\_DATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_DATE

        Type for attributes that are dates

    -   ### TYPE\_USER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_USER

        Type for attributes that are Appian Users [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

    -   ### TYPE\_GROUP

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_GROUP

        Type for attributes that are Appian Groups [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

    -   ### ACTION\_GROUPTYPE\_DELETE\_GROUPTYPE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUPTYPE\_DELETE\_GROUPTYPE

        The action of deleting a group type

    -   ### ACTION\_GROUPTYPE\_MODIFY\_GROUPTYPE\_SECURITY\_SETTINGS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUPTYPE\_MODIFY\_GROUPTYPE\_SECURITY\_SETTINGS

        The action of modifying a group type's security settings

    -   ### ACTION\_GROUPTYPE\_EDIT\_GROUPTYPE\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUPTYPE\_EDIT\_GROUPTYPE\_ATTRIBUTES

        The action of editing a group type

    -   ### ACTION\_GROUPTYPE\_VIEW\_GROUPTYPE\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUPTYPE\_VIEW\_GROUPTYPE\_ATTRIBUTES

        The action of viewing a group type's attributes

    -   ### ACTION\_GROUPTYPE\_DELETE\_GROUPTYPE\_DYNAMIC\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUPTYPE\_DELETE\_GROUPTYPE\_DYNAMIC\_ATTRIBUTES

        The action of delete a group type's dynamic attributes

    -   ### ACTION\_GROUPTYPE\_EDIT\_GROUPTYPE\_DYNAMIC\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUPTYPE\_EDIT\_GROUPTYPE\_DYNAMIC\_ATTRIBUTES

        The action of edit a group type's dynamic attributes

    -   ### ACTION\_GROUPTYPE\_ADD\_GROUPTYPE\_DYNAMIC\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUPTYPE\_ADD\_GROUPTYPE\_DYNAMIC\_ATTRIBUTES

        The action of add to a group type's dynamic attributes

    -   ### ACTION\_GROUPTYPE\_USE\_GROUPTYPE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUPTYPE\_USE\_GROUPTYPE

        The action of using a group type (creating groups of that type)

    -   ### ACTION\_GROUPTYPE\_VIEW\_GROUPTYPE\_EXISTENCE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUPTYPE\_VIEW\_GROUPTYPE\_EXISTENCE

        The action of viewing a group type

    -   ### addAttribute$UPDATES

        static final boolean addAttribute$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.addAttribute$UPDATES)

    -   ### createGroupType$UPDATES

        static final boolean createGroupType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.createGroupType$UPDATES)

    -   ### deleteAttribute$UPDATES

        static final boolean deleteAttribute$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.deleteAttribute$UPDATES)

    -   ### deleteGroupType$UPDATES

        static final boolean deleteGroupType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.deleteGroupType$UPDATES)

    -   ### deleteGroupTypes$UPDATES

        static final boolean deleteGroupTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.deleteGroupTypes$UPDATES)

    -   ### getGroupTypeAttributes$UPDATES

        static final boolean getGroupTypeAttributes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getGroupTypeAttributes$UPDATES)

    -   ### getGroupType$UPDATES

        static final boolean getGroupType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getGroupType$UPDATES)

    -   ### getGroupTypeId$UPDATES

        static final boolean getGroupTypeId$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getGroupTypeId$UPDATES)

    -   ### getGroupTypeIds$UPDATES

        static final boolean getGroupTypeIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getGroupTypeIds$UPDATES)

    -   ### getAllGroupTypes$UPDATES

        static final boolean getAllGroupTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getAllGroupTypes$UPDATES)

    -   ### getGroupTypes$UPDATES

        static final boolean getGroupTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getGroupTypes$UPDATES)

    -   ### getGroupTypeName$UPDATES

        static final boolean getGroupTypeName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getGroupTypeName$UPDATES)

    -   ### getGroupTypeNames$UPDATES

        static final boolean getGroupTypeNames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getGroupTypeNames$UPDATES)

    -   ### updateGroupType$UPDATES

        static final boolean updateGroupType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.updateGroupType$UPDATES)

    -   ### getOperatorsForDataType$UPDATES

        static final boolean getOperatorsForDataType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getOperatorsForDataType$UPDATES)

    -   ### doesGroupTypeExist$UPDATES

        static final boolean doesGroupTypeExist$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.doesGroupTypeExist$UPDATES)

    -   ### getGroupTypeActions$UPDATES

        static final boolean getGroupTypeActions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getGroupTypeActions$UPDATES)

    -   ### isAttributeUnique$UPDATES

        static final boolean isAttributeUnique$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.isAttributeUnique$UPDATES)

    -   ### getAllGroupTypeAttributes$UPDATES

        static final boolean getAllGroupTypeAttributes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getAllGroupTypeAttributes$UPDATES)

    -   ### getAllGroupTypeAttributesForGroupRules$UPDATES

        static final boolean getAllGroupTypeAttributesForGroupRules$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getAllGroupTypeAttributesForGroupRules$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupTypeService.getWorkspace$UPDATES)

-   ## Method Details

    -   ### addAttribute

        void addAttribute([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_, [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization") attribute\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds a new attribute to a group type.

        `Attribute` names must be unique for a particular group type. In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `Attribute` name be validated for illegal characters (only allow alphanumeric symbols and underscores).

        Parameters:

        `attribute_` - the `Attribute` to be added. The following fields must be populated in the `Attribute` object: `name` and `type`

        `groupTypeId_` - the ID of the group type to which to add the attribute

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the no group type with the given ID exists

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there already exists an attribute for the given group type with the given name

        `UunsupportedAttributeTypeException` - if the type of the attribute is invalid

        `[InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the value of the attribute is incompatible with its type. This may occur if the type of the `value` field does not match the value of the `type` field, or if an invalid number or too large a number is given for attribute type [`Attribute.TYPE_FLOAT`](Attribute.html#TYPE_FLOAT) or [`Attribute.TYPE_INTEGER`](Attribute.html#TYPE_INTEGER)

        `ServiceException` - if any system-level error occurs

        `[UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### createGroupType

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createGroupType([GroupType](GroupType.html "class in com.appiancorp.suiteapi.personalization") groupType\_) throws [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates a new group type.

        The name of group type must be unique among all group types. In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `GroupType` name be validated for illegal characters (only allow alphanumeric symbols and underscores).

        Parameters:

        `groupType_` - the group type to be created. `GroupType` fields required for creation are: `groupTypeName` and `creator`.

        Returns:

        the ID of the created group type

        Throws:

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a group type already exists with the given name

        `[InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type name is null.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is passed as creator of the group type.

        `[InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the value of a group type attribute is incompatible with its type. This may occur if the type of the `value` field does not match the value of the `type` field, or if an invalid number or too large a number is given for attribute type [`Attribute.TYPE_FLOAT`](Attribute.html#TYPE_FLOAT) or [`Attribute.TYPE_INTEGER`](Attribute.html#TYPE_INTEGER)

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the UUID passed in already exists in the system.

        `ServiceException` - if any system-level error occurs

    -   ### deleteAttribute

        void deleteAttribute([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeException](../common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [SystemAttributeException](../common/exceptions/SystemAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes a single attribute from a given group type The attribute will also be deleted from groups that reference this group type.

        Parameters:

        `groupTypeId_` - the group type ID

        `attributeName_` - the attribute name

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type ID does not refer to a valid group type

        `[InvalidAttributeException](../common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type does not have an attribute with the given name

        `[SystemAttributeException](../common/exceptions/SystemAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the attribute is a system level attribute

        `ServiceException` - if any system-level error occurs

    -   ### deleteGroupType

        void deleteGroupType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [GroupsExtantException](../common/exceptions/GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions"), [SystemGroupTypeException](../common/exceptions/SystemGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes a single group type. Deleting a group type is possible only if there are no existing groups of the given type. To check for any groups of a given group type, use [`GroupService.getGroupsOfType(Long)`](GroupService.html#getGroupsOfType\(java.lang.Long\)).

        Parameters:

        `groupTypeId_` - the ID of group type to delete

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type ID does not refer to a valid group type

        `[GroupsExtantException](../common/exceptions/GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there exist groups of the given group type or if there exist group rules that reference the given group type

        `[SystemGroupTypeException](../common/exceptions/SystemGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type being deleted is a system group type

        `ServiceException` - if any system-level error occurs

    -   ### deleteGroupTypes

        void deleteGroupTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupTypeIds\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [GroupsExtantException](../common/exceptions/GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions"), [SystemGroupTypeException](../common/exceptions/SystemGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes a list of group types. Deleting a group type is possible only if there are no existing groups of the given type. To check for any groups of a given group type, use [`GroupService.getGroupsOfType(Long)`](GroupService.html#getGroupsOfType\(java.lang.Long\)).

        Parameters:

        `groupTypeIds_` - the list of IDs of group types to delete

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any group type ID does not refer to a valid group type

        `[GroupsExtantException](../common/exceptions/GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there exist groups of any of the given group types or if there exist group rules that reference any of the given group types

        `[SystemGroupTypeException](../common/exceptions/SystemGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type being deleted is a system group type

        `ServiceException` - if any system-level error occurs

    -   ### getGroupTypeAttributes

        [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroupTypeAttributes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the list of fixed attributes for a given group type. Fixed attributes are `name`, `description`, `creator`, `timestampModified`, `timestampCreated`.

        Parameters:

        `groupTypeId_` - the ID of the group type for which to retrieve attributes

        Returns:

        the `Attribute` list; `null` if the group type has no attributes

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type ID does not refer to a valid group type

        `ServiceException` - if any system-level error occurs

    -   ### getGroupType

        [GroupType](GroupType.html "class in com.appiancorp.suiteapi.personalization") getGroupType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a group type by ID.

        Parameters:

        `groupTypeId_` - the Id of the group type

        Returns:

        the group type

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type ID does not refer to a valid group type

        `ServiceException` - if any system-level error occurs

    -   ### getGroupTypeId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getGroupTypeId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeName\_)

        Gets the ID for a given group type, by group type name.

        Parameters:

        `groupTypeName_` - the name of group type

        Returns:

        the ID of the requested group type; -1 if no group type with the given name exists

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getGroupTypeIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getGroupTypeIds([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] groupTypeNames\_)

        Gets a list of group type ids for a given set of group type names.

        Parameters:

        `groupTypeNames_` - the list of group type names

        Returns:

        the list of group type IDs; -1 will be returned for a group type name if no group type with that name exists

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getAllGroupTypes

        [GroupType](GroupType.html "class in com.appiancorp.suiteapi.personalization")\[\] getAllGroupTypes()

        Gets a list of all group types

        Returns:

        the list of all group types

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getGroupTypes

        [GroupType](GroupType.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroupTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupTypeIds\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of group types by ID

        Parameters:

        `groupTypeIds_` - a list of group type IDs

        Returns:

        the list of group types corresponding to the given IDs

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any group type ID does not refer to a valid group type

        `ServiceException` - if any system-level error occurs

    -   ### getGroupTypeName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGroupTypeName([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the name of the group type that corresponds to a given group type ID.

        Parameters:

        `groupTypeId_` - the group type id

        Returns:

        the name of the group type

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type ID does not refer to a valid group type

        `ServiceException` - if any system-level error occurs

    -   ### getGroupTypeNames

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getGroupTypeNames([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupTypeIds\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the names of the group types that correspond to a given list of group type IDs.

        Parameters:

        `groupTypeIds_` - the group type ids

        Returns:

        the names of the group types

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any group type ID does not refer to a valid group type

        `ServiceException` - if any system-level error occurs

    -   ### updateGroupType

        void updateGroupType([GroupType](GroupType.html "class in com.appiancorp.suiteapi.personalization") groupType\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates a group type's name and description. Name of group type must be unique. NOTE: To modify a group type's attributes, use [`addAttribute(java.lang.Long, com.appiancorp.suiteapi.personalization.Attribute)`](#addAttribute\(java.lang.Long,com.appiancorp.suiteapi.personalization.Attribute\)) and [`deleteAttribute(java.lang.Long, java.lang.String)`](#deleteAttribute\(java.lang.Long,java.lang.String\))

        In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the group type name be validated for illegal characters (only allow alphanumeric symbols and underscores).

        Parameters:

        `groupType_` - The group type to be updated

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type ID does not refer to a valid group type

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a group type with the given name already exists

        `ServiceException` - if any system-level error occurs

    -   ### getOperatorsForDataType

        [Operator](Operator.html "class in com.appiancorp.suiteapi.personalization")\[\] getOperatorsForDataType(int dataType\_) throws [UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of possible operators for a given data type. Use this function when updating an attribute or when you need to obtain a list of operators to conduct a user or group search.

        Parameters:

        `dataType_` - one of the `TYPE_XXX` constants

        Returns:

        an array of valid operators for the data type

        Throws:

        `[UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the data type is invalid

        `ServiceException` - if any system-level error occurs

    -   ### doesGroupTypeExist

        boolean doesGroupTypeExist([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_)

        Determines whether a given group type exists

        Parameters:

        `groupTypeId_` - the ID of group type

        Returns:

        `true` if the group type exists, `false` otherwise.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### doesGroupTypeExist

        boolean doesGroupTypeExist([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeName\_)

        Checks to see if a given group type exists

        Parameters:

        `groupTypeName_` - the name of group type

        Returns:

        `true` if group type exists, `false` otherwise

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getGroupTypeActions

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] getGroupTypeActions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] actionIds\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets Boolean array for the actions passed in, that indicates whether the actions can be performed on the given group type by the current user. For each item in the returned array, `Boolean.TRUE` indicates that the current user can perform the action.

        Parameters:

        `groupTypeId_` - the group type ID.

        `actionIds_` - IDs of actions to check. Each ID must be one of the `ACTION_GROUPTYPE_XXX` constants

        Returns:

        Boolean array indicating which of the actions the current user can perform

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type ID does not refer to a valid group type

        `ServiceException` - if any system-level error occurs

    -   ### isAttributeUnique

        boolean isAttributeUnique([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines whether a given attribute name is unique for a particular group type

        Parameters:

        `attributeName_` - the name of attribute

        `groupTypeId_` - the ID of the group type

        Returns:

        `true` if the group type does not already have an attribute with the given name; `false` otherwise

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type ID does not refer to a valid group type

        `ServiceException` - if any system-level error occurs

    -   ### getAllGroupTypeAttributes

        [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] getAllGroupTypeAttributes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the list of group type attributes for a particular group type, both fixed and dynamic attributes. Fixed attributes are `name`, `description`, `creator`, `timestampModified`, `timestampCreated`. Dynamic attributes are those that specific to the group type. For example, a user can add an attribute of `TYPE_USER` after the group type is created, and that will be returned in this call, but not in

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getAllGroupTypeAttributesForGroupRules

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] getAllGroupTypeAttributesForGroupRules([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the list of group type attributes for a particular group type, both fixed and dynamic attributes. Excludes dynamic attributes that are invalid for use in rules. Fixed attributes are `name`, `description`, `creator`, `timestampModified`, `timestampCreated`. Dynamic attributes are those that specific to the group type. For example, a user can add an attribute of `TYPE_USER` after the group type is created, and that will be returned in this call, but not in

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Gets the name of the application on which this service is running.

        Returns:

        the name of the application

        Throws:

        `ServiceException` - if any system-level error occurs

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

        `ServiceException` - if any system-level error occurs