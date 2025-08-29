---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/GroupService.html
original_path: api/com/appiancorp/suiteapi/personalization/GroupService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Interface GroupService

All Superinterfaces:

`[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface GroupService extends [ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

Provides the main functionality needed to create, update, delete, and get groups. Groups is an collaborative set of users and/or groups that allows mass updates for its members. For example, if a set of users will be working on a project together, and if one wants to give permissions to all these users or notify them, then it is easier to update en masse by granting privilges to the group and emailing the group. There are three group security types: public, personal and team. Public groups are visible to all users, and all users can apply to join. Personal groups are only visible to the group administrators, and all users must be added by the administrator. Team groups are visible to group members and users must be added by the group administrator. Group membership can be set explicitly or by using rules. A sample rule could be: all user's whose `username` starts with "m" are members. Every group can have at most one parent, as long as it is not recursive. That is A cannot be a parent of B, B a parent of C and C a parent of A. When a child group is created, it is automatically added as a member of the parent group. However, the parent group can have many member groups that do not have it as the parent group. There are three different membership policies: open, exclusive and closed. Open means that anyone can join. Exclusive means users can request to be added by the administrator. Closed means administrators can add. There are two viewing policies: high and low. High means that only administrators can see members, while low means members can see each other. "My Groups" is bookmark for a user's frequently used groups, so that these groups can be accessed quickly. Delegated creation means that a user is granted permission by the group Administrator to create groups with the delegated group as parent.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_ADD_GROUP_MEMBERS](#ACTION_GROUP_ADD_GROUP_MEMBERS)`

    Constant for whether the user can add members to the group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_ADD_GROUP_RULES](#ACTION_GROUP_ADD_GROUP_RULES)`

    Constant for whether the user can add group membership rules

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_ADD_SELF_TO_GROUP](#ACTION_GROUP_ADD_SELF_TO_GROUP)`

    Constant for whether the user can add self to group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_DELETE_GROUP](#ACTION_GROUP_DELETE_GROUP)`

    Constant for whether the user can delete the group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_DELETE_GROUP_MEMBERS](#ACTION_GROUP_DELETE_GROUP_MEMBERS)`

    Constant for whether the user can remove group members

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_DELETE_GROUP_RULES](#ACTION_GROUP_DELETE_GROUP_RULES)`

    Constant for whether the user can delete group membership rules

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_EDIT_GROUP_ATTRIBUTES](#ACTION_GROUP_EDIT_GROUP_ATTRIBUTES)`

    Constant for whether the user can edit group attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_REMOVE_SELF_FROM_GROUP](#ACTION_GROUP_REMOVE_SELF_FROM_GROUP)`

    Constant for whether the user can remove his/her membership from group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_UPDATE_DELEGATED_ADMINISTRATION](#ACTION_GROUP_UPDATE_DELEGATED_ADMINISTRATION)`

    Constant for whether the user can delegate group administration

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_USE_GROUP_AS_DELEGATED_PARENT](#ACTION_GROUP_USE_GROUP_AS_DELEGATED_PARENT)`

    Constant for whether the group can be delegated to be a parent group for creation of new groups

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_VIEW_GROUP_ATTRIBUTES](#ACTION_GROUP_VIEW_GROUP_ATTRIBUTES)`

    Constant for whether the user can view the group attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_VIEW_GROUP_EXISTENCE](#ACTION_GROUP_VIEW_GROUP_EXISTENCE)`

    Constant for whether the user can check the existence of the group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_VIEW_GROUP_MEMBERS](#ACTION_GROUP_VIEW_GROUP_MEMBERS)`

    Constant for whether the user can view group members

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_GROUP_VIEW_GROUP_RULES](#ACTION_GROUP_VIEW_GROUP_RULES)`

    Constant for whether the user can view the membership rules of the group

    `static final boolean`

    `[addAdminGroups$UPDATES](#addAdminGroups$UPDATES)`

    `static final boolean`

    `[addAdminUsers$UPDATES](#addAdminUsers$UPDATES)`

    `static final boolean`

    `[addGroupsToMyGroups$UPDATES](#addGroupsToMyGroups$UPDATES)`

    `static final boolean`

    `[addGroupToFavorites$UPDATES](#addGroupToFavorites$UPDATES)`

    `static final boolean`

    `[addMemberGroup$UPDATES](#addMemberGroup$UPDATES)`

    `static final boolean`

    `[addMemberGroups$UPDATES](#addMemberGroups$UPDATES)`

    `static final boolean`

    `[addMemberUser$UPDATES](#addMemberUser$UPDATES)`

    `static final boolean`

    `[addMemberUsers$UPDATES](#addMemberUsers$UPDATES)`

    `static final boolean`

    `[addMyselfToGroup$UPDATES](#addMyselfToGroup$UPDATES)`

    `static final boolean`

    `[areGroupsAddedByRule$UPDATES](#areGroupsAddedByRule$UPDATES)`

    `static final boolean`

    `[areUsersAddedByRule$UPDATES](#areUsersAddedByRule$UPDATES)`

    `static final boolean`

    `[areUsersMembersOfGroups$UPDATES](#areUsersMembersOfGroups$UPDATES)`

    `static final boolean`

    `[canUseGroupName$UPDATES](#canUseGroupName$UPDATES)`

    `static final boolean`

    `[changeGroupTypeOfGroup$UPDATES](#changeGroupTypeOfGroup$UPDATES)`

    `static final boolean`

    `[changeGroupTypesOfGroups$UPDATES](#changeGroupTypesOfGroups$UPDATES)`

    `static final boolean`

    `[createGroup$UPDATES](#createGroup$UPDATES)`

    `static final boolean`

    `[createGroups$UPDATES](#createGroups$UPDATES)`

    `static final boolean`

    `[deleteGroup$UPDATES](#deleteGroup$UPDATES)`

    `static final boolean`

    `[doesGroupExist$UPDATES](#doesGroupExist$UPDATES)`

    `static final boolean`

    `[findAdminGroups$UPDATES](#findAdminGroups$UPDATES)`

    `static final boolean`

    `[findAdminGroupsPaging$UPDATES](#findAdminGroupsPaging$UPDATES)`

    `static final boolean`

    `[findAvailableParentGroups$UPDATES](#findAvailableParentGroups$UPDATES)`

    `static final boolean`

    `[findAvailableParentGroupsPaging$UPDATES](#findAvailableParentGroupsPaging$UPDATES)`

    `static final boolean`

    `[findGroups$UPDATES](#findGroups$UPDATES)`

    `static final boolean`

    `[findGroupsPaging$UPDATES](#findGroupsPaging$UPDATES)`

    `static final boolean`

    `[findNonMemberAncestorGroups$UPDATES](#findNonMemberAncestorGroups$UPDATES)`

    `static final boolean`

    `[findNonMemberAncestorGroupsPaging$UPDATES](#findNonMemberAncestorGroupsPaging$UPDATES)`

    `static final boolean`

    `[getAdminGroupCount$UPDATES](#getAdminGroupCount$UPDATES)`

    `static final boolean`

    `[getAdminGroupsPaging$UPDATES](#getAdminGroupsPaging$UPDATES)`

    `static final boolean`

    `[getAdminUserCount$UPDATES](#getAdminUserCount$UPDATES)`

    `static final boolean`

    `[getAdminUsersDirectPaging$UPDATES](#getAdminUsersDirectPaging$UPDATES)`

    `static final boolean`

    `[getAdminUsersPaging$UPDATES](#getAdminUsersPaging$UPDATES)`

    `static final boolean`

    `[getAllAttributeTypes$UPDATES](#getAllAttributeTypes$UPDATES)`

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    `static final boolean`

    `[getCachedCredentials$UPDATES](#getCachedCredentials$UPDATES)`

    `static final boolean`

    `[getCredentials$UPDATES](#getCredentials$UPDATES)`

    `static final boolean`

    `[getDirectAdminGroupIds$UPDATES](#getDirectAdminGroupIds$UPDATES)`

    `static final boolean`

    `[getDirectAdminUsernames$UPDATES](#getDirectAdminUsernames$UPDATES)`

    `static final boolean`

    `[getDirectMemberGroupIds$UPDATES](#getDirectMemberGroupIds$UPDATES)`

    `static final boolean`

    `[getDirectMemberUsernames$UPDATES](#getDirectMemberUsernames$UPDATES)`

    `static final boolean`

    `[getFavoriteGroups$UPDATES](#getFavoriteGroups$UPDATES)`

    `static final boolean`

    `[getGlobalHomePage$UPDATES](#getGlobalHomePage$UPDATES)`

    `static final boolean`

    `[getGroup$UPDATES](#getGroup$UPDATES)`

    `static final boolean`

    `[getGroupActions$UPDATES](#getGroupActions$UPDATES)`

    `static final boolean`

    `[getGroupAttribute$UPDATES](#getGroupAttribute$UPDATES)`

    `static final boolean`

    `[getGroupIdsForUserByRole$UPDATES](#getGroupIdsForUserByRole$UPDATES)`

    `static final boolean`

    `[getGroupIdsForUserByRoles$UPDATES](#getGroupIdsForUserByRoles$UPDATES)`

    `static final boolean`

    `[getGroupMembershipPolicyTypes$UPDATES](#getGroupMembershipPolicyTypes$UPDATES)`

    `static final boolean`

    `[getGroupMemberViewingPolicyTypes$UPDATES](#getGroupMemberViewingPolicyTypes$UPDATES)`

    `static final boolean`

    `[getGroupName$UPDATES](#getGroupName$UPDATES)`

    `static final boolean`

    `[getGroupNames$UPDATES](#getGroupNames$UPDATES)`

    `static final boolean`

    `[getGroupNamesList$UPDATES](#getGroupNamesList$UPDATES)`

    `static final boolean`

    `[getGroups$UPDATES](#getGroups$UPDATES)`

    `static final boolean`

    `[getGroupSecurityTypes$UPDATES](#getGroupSecurityTypes$UPDATES)`

    `static final boolean`

    `[getGroupsForUserByRole$UPDATES](#getGroupsForUserByRole$UPDATES)`

    `static final boolean`

    `[getGroupsForUserByRolePaging$UPDATES](#getGroupsForUserByRolePaging$UPDATES)`

    `static final boolean`

    `[getGroupsForUserByRoles$UPDATES](#getGroupsForUserByRoles$UPDATES)`

    `static final boolean`

    `[getGroupsForUserByRolesPaging$UPDATES](#getGroupsForUserByRolesPaging$UPDATES)`

    `static final boolean`

    `[getGroupsList$UPDATES](#getGroupsList$UPDATES)`

    `static final boolean`

    `[getGroupsOfType$UPDATES](#getGroupsOfType$UPDATES)`

    `static final boolean`

    `[getGroupsOfTypeForMemberUser$UPDATES](#getGroupsOfTypeForMemberUser$UPDATES)`

    `static final boolean`

    `[getGroupsOfTypePaging$UPDATES](#getGroupsOfTypePaging$UPDATES)`

    `static final boolean`

    `[getGroupSummaryForUser$UPDATES](#getGroupSummaryForUser$UPDATES)`

    `static final boolean`

    `[getGroupSummaryForUserPaging$UPDATES](#getGroupSummaryForUserPaging$UPDATES)`

    `static final boolean`

    `[getGroupTypeForGroup$UPDATES](#getGroupTypeForGroup$UPDATES)`

    `static final boolean`

    `[getMemberGroupCount$UPDATES](#getMemberGroupCount$UPDATES)`

    `static final boolean`

    `[getMemberGroups$UPDATES](#getMemberGroups$UPDATES)`

    `static final boolean`

    `[getMemberGroupsDirect$UPDATES](#getMemberGroupsDirect$UPDATES)`

    `static final boolean`

    `[getMemberGroupsDirectPaging$UPDATES](#getMemberGroupsDirectPaging$UPDATES)`

    `static final boolean`

    `[getMemberGroupsPaging$UPDATES](#getMemberGroupsPaging$UPDATES)`

    `static final boolean`

    `[getMemberUserCount$UPDATES](#getMemberUserCount$UPDATES)`

    `static final boolean`

    `[getMemberUsernames$UPDATES](#getMemberUsernames$UPDATES)`

    `static final boolean`

    `[getMemberUsernamesDirect$UPDATES](#getMemberUsernamesDirect$UPDATES)`

    `static final boolean`

    `[getMemberUsers$UPDATES](#getMemberUsers$UPDATES)`

    `static final boolean`

    `[getMemberUsersDirect$UPDATES](#getMemberUsersDirect$UPDATES)`

    `static final boolean`

    `[getMemberUsersDirectPaging$UPDATES](#getMemberUsersDirectPaging$UPDATES)`

    `static final boolean`

    `[getMemberUsersPaging$UPDATES](#getMemberUsersPaging$UPDATES)`

    `static final boolean`

    `[getMyGroupIds$UPDATES](#getMyGroupIds$UPDATES)`

    `static final boolean`

    `[getMyGroups$UPDATES](#getMyGroups$UPDATES)`

    `static final boolean`

    `[getMyHomePage$UPDATES](#getMyHomePage$UPDATES)`

    `static final boolean`

    `[getParentGroupsForDelegatedCreation$UPDATES](#getParentGroupsForDelegatedCreation$UPDATES)`

    `static final boolean`

    `[getParentGroupsForDelegatedCreationPaging$UPDATES](#getParentGroupsForDelegatedCreationPaging$UPDATES)`

    `static final boolean`

    `[getParentGroupsForDelegatedUpdate$UPDATES](#getParentGroupsForDelegatedUpdate$UPDATES)`

    `static final boolean`

    `[getRootTrees$UPDATES](#getRootTrees$UPDATES)`

    `static final boolean`

    `[getRootTreesSameTypeWithRoles$UPDATES](#getRootTreesSameTypeWithRoles$UPDATES)`

    `static final boolean`

    `[getRuleSetForGroup$UPDATES](#getRuleSetForGroup$UPDATES)`

    `static final boolean`

    `[getSystemDefaultApplication$UPDATES](#getSystemDefaultApplication$UPDATES)`

    `static final boolean`

    `[getTopLevelGroupsForHierarchy$UPDATES](#getTopLevelGroupsForHierarchy$UPDATES)`

    `static final boolean`

    `[getTopLevelGroupsForHierarchyPaging$UPDATES](#getTopLevelGroupsForHierarchyPaging$UPDATES)`

    `static final boolean`

    `[getTopLevelGroupsPaging$UPDATES](#getTopLevelGroupsPaging$UPDATES)`

    `static final boolean`

    `[getTreeViewForGroup$UPDATES](#getTreeViewForGroup$UPDATES)`

    `static final boolean`

    `[getTreeViewForGroupSameTypeWithRoles$UPDATES](#getTreeViewForGroupSameTypeWithRoles$UPDATES)`

    `static final boolean`

    `[getUserDefaultApplication$UPDATES](#getUserDefaultApplication$UPDATES)`

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[GROUP_TYPE_CHANGE_INVALID_GROUP](#GROUP_TYPE_CHANGE_INVALID_GROUP)`

    Constant for InvalidGroupException where group Id is invalid.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[GROUP_TYPE_CHANGE_INVALID_GROUPTYPE](#GROUP_TYPE_CHANGE_INVALID_GROUPTYPE)`

    Constant for InvalidGroupTypeException when grouptype of group is invalid

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[GROUP_TYPE_CHANGE_NO_PRIVILEGE](#GROUP_TYPE_CHANGE_NO_PRIVILEGE)`

    Constant for PrivilegeException where user cannot change group type of group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[GROUP_TYPE_CHANGE_SUCCESS](#GROUP_TYPE_CHANGE_SUCCESS)`

    Constant for whether changing the group type of group was successful

    `static final boolean`

    `[isGroupDescendant$UPDATES](#isGroupDescendant$UPDATES)`

    `static final boolean`

    `[isGroupSystemGroup$UPDATES](#isGroupSystemGroup$UPDATES)`

    `static final boolean`

    `[isMemberOfGroups$UPDATES](#isMemberOfGroups$UPDATES)`

    `static final boolean`

    `[isUserMember$UPDATES](#isUserMember$UPDATES)`

    `static final boolean`

    `[isUserMemberOfGroups$UPDATES](#isUserMemberOfGroups$UPDATES)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[RELATIONSHIP_TYPE_HEIRARCHY](#RELATIONSHIP_TYPE_HEIRARCHY)`

    `static final boolean`

    `[removeAdminGroups$UPDATES](#removeAdminGroups$UPDATES)`

    `static final boolean`

    `[removeAdminUsers$UPDATES](#removeAdminUsers$UPDATES)`

    `static final boolean`

    `[removeGroupFromFavorites$UPDATES](#removeGroupFromFavorites$UPDATES)`

    `static final boolean`

    `[removeGroupsFromMyGroups$UPDATES](#removeGroupsFromMyGroups$UPDATES)`

    `static final boolean`

    `[removeMemberGroup$UPDATES](#removeMemberGroup$UPDATES)`

    `static final boolean`

    `[removeMemberGroups$UPDATES](#removeMemberGroups$UPDATES)`

    `static final boolean`

    `[removeMemberUser$UPDATES](#removeMemberUser$UPDATES)`

    `static final boolean`

    `[removeMemberUsers$UPDATES](#removeMemberUsers$UPDATES)`

    `static final boolean`

    `[removeMyselfFromGroup$UPDATES](#removeMyselfFromGroup$UPDATES)`

    `static final boolean`

    `[resolveEmailAddress$UPDATES](#resolveEmailAddress$UPDATES)`

    `static final boolean`

    `[resolveEmailAddresses$UPDATES](#resolveEmailAddresses$UPDATES)`

    `static final boolean`

    `[resolveEmailDestinations$UPDATES](#resolveEmailDestinations$UPDATES)`

    `static final boolean`

    `[setGlobalHomePage$UPDATES](#setGlobalHomePage$UPDATES)`

    `static final boolean`

    `[setHomePageForUser$UPDATES](#setHomePageForUser$UPDATES)`

    `static final boolean`

    `[setMyHomePage$UPDATES](#setMyHomePage$UPDATES)`

    `static final boolean`

    `[suggest$UPDATES](#suggest$UPDATES)`

    `static final boolean`

    `[suggestGroups$UPDATES](#suggestGroups$UPDATES)`

    `static final boolean`

    `[suggestGroupsBulk$UPDATES](#suggestGroupsBulk$UPDATES)`

    `static final boolean`

    `[suggestUsersAndGroups$UPDATES](#suggestUsersAndGroups$UPDATES)`

    `static final boolean`

    `[suggestUsersAndGroupsBulk$UPDATES](#suggestUsersAndGroupsBulk$UPDATES)`

    `static final boolean`

    `[updateGroup$UPDATES](#updateGroup$UPDATES)`

    `static final boolean`

    `[updateGroups$UPDATES](#updateGroups$UPDATES)`

    `static final boolean`

    `[updateRuleSetForGroup$UPDATES](#updateRuleSetForGroup$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[USER_ROLE_ADMINISTRATOR](#USER_ROLE_ADMINISTRATOR)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[USER_ROLE_CREATOR](#USER_ROLE_CREATOR)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[USER_ROLE_MEMBER](#USER_ROLE_MEMBER)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[USER_ROLE_NONMEMBER](#USER_ROLE_NONMEMBER)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[USER_ROLE_SUPERADMIN](#USER_ROLE_SUPERADMIN)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[USER_ROLE_VIEWER](#USER_ROLE_VIEWER)`

    `static final boolean`

    `[validateTypedValues$UPDATES](#validateTypedValues$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[CONFIGURE_METHOD_NAME](../../services/ContextSensitiveSingletonService.html#CONFIGURE_METHOD_NAME)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAdminGroups](#addAdminGroups\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] adminGroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Adds the given groups as administrator groups for group given by `groupId_`

    `void`

    `[addAdminUsers](#addAdminUsers\(java.lang.String%5B%5D,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Adds the users by given username's as administrators of group given by `groupId_`

    `void`

    `[addGroupsToMyGroups](#addGroupsToMyGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Adds a list of groups to My Groups for logged in user.

    `void`

    `[addGroupToFavorites](#addGroupToFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Associates `Group` as one of the current `User`'s favorites

    `void`

    `[addMemberGroup](#addMemberGroup\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") memgroupId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Adds a member group to a group.

    `void`

    `[addMemberGroups](#addMemberGroups\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] memgroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Adds member groups to a group

    `void`

    `[addMemberUser](#addMemberUser\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Adds a member user to a group .

    `void`

    `[addMemberUsers](#addMemberUsers\(java.lang.String%5B%5D,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Adds member users to a group

    `void`

    `[addMyselfToGroup](#addMyselfToGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Adds oneself to the given group

    `boolean[]`

    `[areGroupsAddedByRule](#areGroupsAddedByRule\(java.lang.Long,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Checks to see if the given groups were added to the group by a rule.

    `boolean[]`

    `[areUsersAddedByRule](#areUsersAddedByRule\(java.lang.Long,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] userIds_)`

    Checks to see if the given users where added to the group by a rule.

    `boolean[][]`

    `[areUsersMembersOfGroups](#areUsersMembersOfGroups\(java.lang.String%5B%5D,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds)`

    Determines if the specified user is a member of each of the specified groups.

    `boolean[][]`

    `[areUsersMembersOfGroups](#areUsersMembersOfGroups\(java.lang.String%5B%5D,java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] groupUuid_)`

    Determines if the specified user is a member of each of the specified groups.

    `boolean`

    `[canUseGroupName](#canUseGroupName\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupName_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupSecurityType_)`

    Indicates whether a user can create a new group with the given name of the given group security type.

    `void`

    `[changeGroupTypeOfGroup](#changeGroupTypeOfGroup\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newGroupTypeId)`

    Changes the GroupType of a Group.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[changeGroupTypesOfGroups](#changeGroupTypesOfGroups\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] newGroupTypeIds)`

    Changes the GroupTypes of Groups.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createGroup](#createGroup\(com.appiancorp.suiteapi.personalization.Group\))([Group](Group.html "class in com.appiancorp.suiteapi.personalization") group_)`

    Create a new group.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[createGroups](#createGroups\(com.appiancorp.suiteapi.personalization.Group%5B%5D\))([Group](Group.html "class in com.appiancorp.suiteapi.personalization")[] groups_)`

    Create new groups.

    `void`

    `[deleteGroup](#deleteGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deletes a single group.

    `boolean`

    `[doesGroupExist](#doesGroupExist\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Checks to see if a given group exists.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[findAdminGroups](#findAdminGroups\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean\))([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch_, boolean caseSensitive_)`

    Deprecated.

    use [`findAdminGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, int, int, java.lang.Integer, java.lang.Integer)`](#findAdminGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findAdminGroupsPaging](#findAdminGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\))([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch_, boolean caseSensitive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Finds all groups of which you are administrator and which also match the given search criteria.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[findAvailableParentGroups](#findAvailableParentGroups\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long\))([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch_, boolean caseSensitive_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    use [`findAvailableParentGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#findAvailableParentGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findAvailableParentGroupsPaging](#findAvailableParentGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch_, boolean caseSensitive_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets a ResultPage containing a list of all groups available for setting as parent.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[findGroups](#findGroups\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean\))([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch_, boolean caseSensitive_)`

    Deprecated.

    use [`findGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, int, int, java.lang.Integer, java.lang.Integer)`](#findGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findGroupsPaging](#findGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\))([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch_, boolean caseSensitive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Finds groups based on criteria submitted in the GroupSearch The supported search operators are specified in GroupSearch for a `group` See `getOperatorsForAttributeType()` in `GroupTypeService` to obtain a list of possible operators [`Operator`](Operator.html "class in com.appiancorp.suiteapi.personalization") for a given data type.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[findNonMemberAncestorGroups](#findNonMemberAncestorGroups\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long\))([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch_, boolean caseSensitive_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    use [`findNonMemberAncestorGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#findNonMemberAncestorGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findNonMemberAncestorGroupsPaging](#findNonMemberAncestorGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch_, boolean caseSensitive_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves a `ResultPage` of list of groups for a group search that are not ancestors (by parent-member relationship) of the given group.

    `int`

    `[getAdminGroupCount](#getAdminGroupCount\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets the number of distinct groups {that are administrators of the specified group.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAdminGroupsPaging](#getAdminGroupsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves the groups that are administrator groups for the given `groupId_`

    `int`

    `[getAdminUserCount](#getAdminUserCount\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets a count of distinct users that are administrators of the specified group.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAdminUsersDirectPaging](#getAdminUsersDirectPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets a ResultPage containing a list of distinct users that are direct admins of the specified group ie user admins of subgroups are not included.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAdminUsersPaging](#getAdminUsersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves the users that are administrator users for the given `groupId_`

    `[AttributeType](AttributeType.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getAllAttributeTypes](#getAllAttributeTypes\(\))()`

    Gets the list of group attribute types in the system

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Gets the name of the application on which this service is running.

    `[Credentials](../common/Credentials.html "class in com.appiancorp.suiteapi.common")`

    `[getCachedCredentials](#getCachedCredentials\(\))()`

    Returns the cached Credentials bean containing the group membership relations for the user in this Service Context.

    `[Credentials](../common/Credentials.html "class in com.appiancorp.suiteapi.common")`

    `[getCredentials](#getCredentials\(\))()`

    Returns a Credentials bean directly from the back-end, containing the group membership relations for the user in this Service Context.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDirectAdminGroupIds](#getDirectAdminGroupIds\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Gets the group IDs of all the administrator groups added directly to a given group (excludes those who are administrators via membership in an administrator group)

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDirectAdminUsernames](#getDirectAdminUsernames\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Gets the usernames of all the administrator users added directly to a given group (excludes those who are administrators via membership in an administrator group)

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDirectMemberGroupIds](#getDirectMemberGroupIds\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Gets the group IDs of all the member groups added directly to a given group (excludes those who are members via rule or via membership in a member group)

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDirectMemberUsernames](#getDirectMemberUsernames\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Gets the usernames of all the member users added directly to a given group (excludes those who are members via rule or via membership in a member group)

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFavoriteGroups](#getFavoriteGroups\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets a ResultPage containing a list of groups for the current user's Favorite Groups.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGlobalHomePage](#getGlobalHomePage\(\))()`

    Gets the global home page for the application.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")`

    `[getGroup](#getGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Get a group by id.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[getGroupActions](#getGroupActions\(java.lang.Long,java.lang.Integer%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] actionIds_)`

    Gets s Boolean array, representing whether actions with the given ids can be performed on a given group by the current user

    `[Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")`

    `[getGroupAttribute](#getGroupAttribute\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName_)`

    Gets a group attribute for a given group id.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getGroupIdsForUserByRole](#getGroupIdsForUserByRole\(java.lang.String,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") role_)`

    Gets a list of group ids for which a given user has a given role.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[][]`

    `[getGroupIdsForUserByRoles](#getGroupIdsForUserByRoles\(java.lang.String,java.lang.Integer%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] roles_)`

    Gets the group Ids for which the specified user has any of the specified roles

    `[GroupMemberPolicy](GroupMemberPolicy.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroupMembershipPolicyTypes](#getGroupMembershipPolicyTypes\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupSecurityTypeId_)`

    Gets the list of group membership policy types for a particular group security type.

    `[GroupMemberViewingPolicy](GroupMemberViewingPolicy.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroupMemberViewingPolicyTypes](#getGroupMemberViewingPolicyTypes\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupSecurityTypeId_)`

    Gets the list of group member viewing policies for a particular group security type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGroupName](#getGroupName\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets a group name for a given group id.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getGroupNames](#getGroupNames\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Gets a list of group names for a given list of group ids.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getGroupNamesList](#getGroupNamesList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Gets a list of group names for a given list of group ids.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroups](#getGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Gets a list of groups for a given list of group ids.

    `[GroupSecurityType](GroupSecurityType.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroupSecurityTypes](#getGroupSecurityTypes\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") actionId_)`

    Gets the list of group security types that are available for a particular action.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroupsForUserByRole](#getGroupsForUserByRole\(java.lang.String,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") role_)`

    Gets a list of groups for which a given user has a given role.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getGroupsForUserByRolePaging](#getGroupsForUserByRolePaging\(java.lang.String,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") role_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets a ResultPage containing list of groups for which a given user has a given role.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroupsForUserByRoles](#getGroupsForUserByRoles\(java.lang.String,java.lang.Integer%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] roles_)`

    Deprecated.

    Use [`getGroupsForUserByRolesPaging(String, Integer[], int, int, Integer, Integer)`](#getGroupsForUserByRolesPaging\(java.lang.String,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getGroupsForUserByRolesPaging](#getGroupsForUserByRolesPaging\(java.lang.String,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] roles_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves a ResultPage containing the list of groups for which the given user has any of the given roles.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getGroupsList](#getGroupsList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Returns a ResultList [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") containing error codes for all Ids and `Group`s for valid Ids

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroupsOfType](#getGroupsOfType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_)`

    Deprecated.

    use [`getGroupsOfTypePaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getGroupsOfTypePaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroupsOfTypeForMemberUser](#getGroupsOfTypeForMemberUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupTypeIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Deprecated.

    Use [`getGroupsForUserByRolePaging(String, Integer, int, int, Integer, Integer)`](#getGroupsForUserByRolePaging\(java.lang.String,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) and extract groups of the desired types from the results.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getGroupsOfTypePaging](#getGroupsOfTypePaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets a ResultPage containing a list of groups for a given group type

    `[GroupSummary](GroupSummary.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getGroupSummaryForUser](#getGroupSummaryForUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Deprecated.

    Use [`getGroupSummaryForUserPaging(String, int, int, Integer, Integer)`](#getGroupSummaryForUserPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getGroupSummaryForUserPaging](#getGroupSummaryForUserPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Retrieves [`GroupSummary`](GroupSummary.html "class in com.appiancorp.suiteapi.personalization") beans for every group for which the given [`User`](User.html "class in com.appiancorp.suiteapi.personalization") is a member or administrator.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getGroupTypeForGroup](#getGroupTypeForGroup\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Gets group types for a list of groups.

    `int`

    `[getMemberGroupCount](#getMemberGroupCount\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets the number of distinct groups {that are members of the specified group.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getMemberGroups](#getMemberGroups\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets a list of members groups of a group

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getMemberGroupsDirect](#getMemberGroupsDirect\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets group members of a group that are explicitly defined, no cascading (group members of subgroups are not included)

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMemberGroupsDirectPaging](#getMemberGroupsDirectPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets a ResultPage containing a list of groups that are direct members, i.e. group members of subgroups are not included in the result set.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMemberGroupsPaging](#getMemberGroupsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets a ResultPage containing a list of group members of a group

    `int`

    `[getMemberUserCount](#getMemberUserCount\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets a count of distinct users that are members of the specified group.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getMemberUsernames](#getMemberUsernames\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets the usernames of all the member users for given group

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getMemberUsernamesDirect](#getMemberUsernamesDirect\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    Use [`getMemberUsersDirectPaging(Long, int, int, Integer, Integer)`](#getMemberUsersDirectPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[User](User.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getMemberUsers](#getMemberUsers\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets a list of member users of the specified group

    `[User](User.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getMemberUsers](#getMemberUsers\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Gets a list of distinct users that are members of any of the specified groups.

    `[User](User.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getMemberUsersDirect](#getMemberUsersDirect\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    Use [`getMemberUsersDirectPaging(Long, int, int, Integer, Integer)`](#getMemberUsersDirectPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMemberUsersDirectPaging](#getMemberUsersDirectPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets a ResultPage containing a list of distinct users that are direct members of the specified group i.e user members of subgroups are not included.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMemberUsersPaging](#getMemberUsersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets a ResultPage containing a list of member users of the specified group

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getMyGroupIds](#getMyGroupIds\(\))()`

    Gets Ids for logged-in user's My Groups.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMyGroups](#getMyGroups\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    use getFavoriteGroups

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMyHomePage](#getMyHomePage\(\))()`

    Gets the home page for the current user if he has set one, otherwise returns the global home page.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getParentGroupsForDelegatedCreation](#getParentGroupsForDelegatedCreation\(\))()`

    Gets the groups for which the logged-in user is authorized to set as a parent when creating public child groups.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getParentGroupsForDelegatedCreationPaging](#getParentGroupsForDelegatedCreationPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets a ResultPage of parent groups for which the logged-in user is authorized to create public child groups.

    `[Group](Group.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getParentGroupsForDelegatedUpdate](#getParentGroupsForDelegatedUpdate\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets the groups for which the logged-in user is authorized to set as parent when updating public child groups.

    `[Tree](../common/Tree.html "class in com.appiancorp.suiteapi.common")[]`

    `[getRootTrees](#getRootTrees\(java.lang.Long,java.lang.String,boolean,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relationshipType_, boolean singleGroupType_, int descendentDepth_)`

    Get a set of groups structured into one or more trees.

    `[Tree](../common/Tree.html "class in com.appiancorp.suiteapi.common")[]`

    `[getRootTrees](#getRootTrees\(java.lang.Long,java.lang.String,java.lang.Long%5B%5D,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relationshipType_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupTypeIds_, int descendentDepth_)`

    Get a set of groups structured into one or more trees

    `[Tree](../common/Tree.html "class in com.appiancorp.suiteapi.common")[]`

    `[getRootTreesSameTypeWithRoles](#getRootTreesSameTypeWithRoles\(java.lang.Long,java.lang.Integer%5B%5D,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] roleTypes_, int descendantDepth_)`

    Get a set of groups [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization") structured into one or more trees [`Tree`](../common/Tree.html "class in com.appiancorp.suiteapi.common").

    `[RuleSet](RuleSet.html "class in com.appiancorp.suiteapi.personalization")`

    `[getRuleSetForGroup](#getRuleSetForGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Gets membership rule set for a Group

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSystemDefaultApplication](#getSystemDefaultApplication\(\))()`

    Deprecated.

    Use {@link ApplicationService.getDefaultApplication()}

    `[GroupHierarchyBean](GroupHierarchyBean.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getTopLevelGroupsForHierarchy](#getTopLevelGroupsForHierarchy\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_, boolean sameType_)`

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTopLevelGroupsForHierarchyPaging](#getTopLevelGroupsForHierarchyPaging\(java.lang.Long,boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_, boolean sameType_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets all top level [`GroupHierarchyBean`](GroupHierarchyBean.html "class in com.appiancorp.suiteapi.personalization") objects ( `Group`s without a parent group) given the `Group` type.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getTopLevelGroupsPaging](#getTopLevelGroupsPaging\(java.lang.Long,java.lang.String,boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relationshipType_, boolean singleGroupType_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Get a ResultPage containing a list of groups structured into one or more trees in the `result` field.

    `[TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common")`

    `[getTreeViewForGroup](#getTreeViewForGroup\(java.lang.Long,boolean,java.lang.String,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, boolean singleGroupType_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relationshipType_, int descendentDepth_)`

    Get a view into the tree pivoted at a particular group.

    `[TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common")`

    `[getTreeViewForGroup](#getTreeViewForGroup\(java.lang.Long,java.lang.Long%5B%5D,java.lang.String,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupTypeIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relationshipType_, int descendentDepth_)`

    Get a view into the tree pivoted at a particular group Each node in the tree will represent a group.

    `[TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common")`

    `[getTreeViewForGroupSameTypeWithRoles](#getTreeViewForGroupSameTypeWithRoles\(java.lang.Long,java.lang.Integer%5B%5D,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] roleTypes_, int descendantDepth_)`

    Get a view into the tree pivoted at a particular group Each node in the tree will represent a group.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUserDefaultApplication](#getUserDefaultApplication\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Deprecated.

    Use {@link ApplicationService.getDefaultApplication()} for the site-wide default.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Gets the current memory profile for the workspace.

    `boolean`

    `[isGroupDescendant](#isGroupDescendant\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentGroupId_)`

    Checks if a group is a descendant of another group (by parent-child relationship).

    `boolean`

    `[isGroupSystemGroup](#isGroupSystemGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Checks to see if a given group is a system group.

    `boolean[]`

    `[isMemberOfGroups](#isMemberOfGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupId_)`

    Determines if the current user is a member of each of the specified groups.

    `boolean[]`

    `[isMemberOfGroups](#isMemberOfGroups\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] groupUuid_)`

    Determines if the current user is a member of each of the specified groups.

    `boolean`

    `[isUserMember](#isUserMember\(java.lang.String%5B%5D,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Checks multiple potential usernames to determine if a user is a member of a group

    `boolean`

    `[isUserMember](#isUserMember\(java.lang.String%5B%5D,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] username_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupUuid_)`

    Checks multiple potential usernames to determine if a user is a member of a group

    `boolean`

    `[isUserMember](#isUserMember\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Checks if a user is a member of a group

    `boolean`

    `[isUserMember](#isUserMember\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupUuid_)`

    Checks if a user is a member of a group

    `boolean[]`

    `[isUserMemberOfGroups](#isUserMemberOfGroups\(java.lang.String%5B%5D,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupId_)`

    Determines if the specified user is a member of each of the specified groups.

    `boolean[]`

    `[isUserMemberOfGroups](#isUserMemberOfGroups\(java.lang.String%5B%5D,java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] groupUuid_)`

    Determines if the specified user is a member of each of the specified groups.

    `boolean[]`

    `[isUserMemberOfGroups](#isUserMemberOfGroups\(java.lang.String,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupId_)`

    Determines if the specified user is a member of each of the specified groups.

    `boolean[]`

    `[isUserMemberOfGroups](#isUserMemberOfGroups\(java.lang.String,java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] groupUuid_)`

    Determines if the specified user is a member of each of the specified groups.

    `void`

    `[removeAdminGroups](#removeAdminGroups\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] adminGroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Removes the groups specified by adminGroupIds\_ as administrators of group

    `void`

    `[removeAdminUsers](#removeAdminUsers\(java.lang.String%5B%5D,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Removes the users specified by `usernames_` as administrators of group

    `void`

    `[removeGroupFromFavorites](#removeGroupFromFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    removes this group (groupId\_) as one of the current user's favorites

    `void`

    `[removeGroupsFromMyGroups](#removeGroupsFromMyGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Removes a list of groups from My Groups for logged-in user.

    `void`

    `[removeMemberGroup](#removeMemberGroup\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") memgroupId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Removes a member group from a group

    `void`

    `[removeMemberGroups](#removeMemberGroups\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] memgroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Removes a list of member groups from a group

    `void`

    `[removeMemberUser](#removeMemberUser\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    Use [`removeMemberUsers(String[], Long)`](#removeMemberUsers\(java.lang.String%5B%5D,java.lang.Long\)) and pass a single user in the array.

    `void`

    `[removeMemberUsers](#removeMemberUsers\(java.lang.String%5B%5D,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Removes a list of member users from a group

    `void`

    `[removeMyselfFromGroup](#removeMyselfFromGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Removes oneself from the given group

    `[ResolvedEmailAddresses](ResolvedEmailAddresses.html "class in com.appiancorp.suiteapi.personalization")`

    `[resolveEmailAddress](#resolveEmailAddress\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") emailRecipient_)`

    Deprecated.

    Use [`resolveEmailDestinations(LocalObject[], LocalObject[], LocalObject[])`](#resolveEmailDestinations\(com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D\))

    `[ResolvedEmailAddresses](ResolvedEmailAddresses.html "class in com.appiancorp.suiteapi.personalization")`

    `[resolveEmailAddresses](#resolveEmailAddresses\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] emailRecipients_)`

    Deprecated.

    Use [`resolveEmailDestinations(LocalObject[], LocalObject[], LocalObject[])`](#resolveEmailDestinations\(com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D\))

    `[ResolvedEmailAddresses](ResolvedEmailAddresses.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[resolveEmailDestinations](#resolveEmailDestinations\(com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] to_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] cc_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] bcc_)`

    Resolves three sets of email recipients, which form the email destination, into email addresses.

    `void`

    `[setGlobalHomePage](#setGlobalHomePage\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url)`

    Sets home page for all users (default).

    `void`

    `[setHomePageForUser](#setHomePageForUser\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url_)`

    `void`

    `[setMyHomePage](#setMyHomePage\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url)`

    Sets home page for current user, overriding the system default for this user.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] allowList)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggestGroups](#suggestGroups\(java.lang.String,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxSuggestions_)`

    Deprecated.

    use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    `[Suggestion](../common/Suggestion.html "class in com.appiancorp.suiteapi.common")[][]`

    `[suggestGroupsBulk](#suggestGroupsBulk\(java.lang.String%5B%5D,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] queries_, int maxSuggestionsPerQuery_)`

    Deprecated.

    use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggestUsersAndGroups](#suggestUsersAndGroups\(java.lang.String,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxSuggestions_)`

    Deprecated.

    use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    `[Suggestion](../common/Suggestion.html "class in com.appiancorp.suiteapi.common")[][]`

    `[suggestUsersAndGroupsBulk](#suggestUsersAndGroupsBulk\(java.lang.String%5B%5D,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] queries_, int maxSuggestionsPerQuery_)`

    Deprecated.

    use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    `void`

    `[updateGroup](#updateGroup\(com.appiancorp.suiteapi.personalization.Group\))([Group](Group.html "class in com.appiancorp.suiteapi.personalization") group_)`

    Updates a [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization").

    `void`

    `[updateGroups](#updateGroups\(com.appiancorp.suiteapi.personalization.Group%5B%5D\))([Group](Group.html "class in com.appiancorp.suiteapi.personalization")[] groups_)`

    Updates multiple [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization") objects.

    `void`

    `[updateRuleSetForGroup](#updateRuleSetForGroup\(com.appiancorp.suiteapi.personalization.RuleSet\))([RuleSet](RuleSet.html "class in com.appiancorp.suiteapi.personalization") ruleSet_)`

    Updates the membership rule set for a `Group`.

    `boolean`

    `[validateTypedValues](#validateTypedValues\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\))([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")[] typedValues)`

    Validates given TypedValues.

    ### Methods inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[configureContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\))`

-   ## Field Details

    -   ### USER\_ROLE\_SUPERADMIN

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") USER\_ROLE\_SUPERADMIN

    -   ### USER\_ROLE\_CREATOR

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") USER\_ROLE\_CREATOR

    -   ### USER\_ROLE\_ADMINISTRATOR

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") USER\_ROLE\_ADMINISTRATOR

    -   ### USER\_ROLE\_VIEWER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") USER\_ROLE\_VIEWER

    -   ### USER\_ROLE\_MEMBER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") USER\_ROLE\_MEMBER

    -   ### USER\_ROLE\_NONMEMBER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") USER\_ROLE\_NONMEMBER

    -   ### RELATIONSHIP\_TYPE\_HEIRARCHY

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") RELATIONSHIP\_TYPE\_HEIRARCHY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.RELATIONSHIP_TYPE_HEIRARCHY)

    -   ### ACTION\_GROUP\_DELETE\_GROUP

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_DELETE\_GROUP

        Constant for whether the user can delete the group

    -   ### ACTION\_GROUP\_EDIT\_GROUP\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_EDIT\_GROUP\_ATTRIBUTES

        Constant for whether the user can edit group attributes

    -   ### ACTION\_GROUP\_ADD\_GROUP\_MEMBERS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_ADD\_GROUP\_MEMBERS

        Constant for whether the user can add members to the group

    -   ### ACTION\_GROUP\_DELETE\_GROUP\_MEMBERS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_DELETE\_GROUP\_MEMBERS

        Constant for whether the user can remove group members

    -   ### ACTION\_GROUP\_ADD\_GROUP\_RULES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_ADD\_GROUP\_RULES

        Constant for whether the user can add group membership rules

    -   ### ACTION\_GROUP\_DELETE\_GROUP\_RULES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_DELETE\_GROUP\_RULES

        Constant for whether the user can delete group membership rules

    -   ### ACTION\_GROUP\_VIEW\_GROUP\_EXISTENCE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_VIEW\_GROUP\_EXISTENCE

        Constant for whether the user can check the existence of the group

    -   ### ACTION\_GROUP\_VIEW\_GROUP\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_VIEW\_GROUP\_ATTRIBUTES

        Constant for whether the user can view the group attributes

    -   ### ACTION\_GROUP\_VIEW\_GROUP\_MEMBERS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_VIEW\_GROUP\_MEMBERS

        Constant for whether the user can view group members

    -   ### ACTION\_GROUP\_VIEW\_GROUP\_RULES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_VIEW\_GROUP\_RULES

        Constant for whether the user can view the membership rules of the group

    -   ### ACTION\_GROUP\_ADD\_SELF\_TO\_GROUP

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_ADD\_SELF\_TO\_GROUP

        Constant for whether the user can add self to group

    -   ### ACTION\_GROUP\_REMOVE\_SELF\_FROM\_GROUP

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_REMOVE\_SELF\_FROM\_GROUP

        Constant for whether the user can remove his/her membership from group

    -   ### ACTION\_GROUP\_UPDATE\_DELEGATED\_ADMINISTRATION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_UPDATE\_DELEGATED\_ADMINISTRATION

        Constant for whether the user can delegate group administration

    -   ### ACTION\_GROUP\_USE\_GROUP\_AS\_DELEGATED\_PARENT

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_GROUP\_USE\_GROUP\_AS\_DELEGATED\_PARENT

        Constant for whether the group can be delegated to be a parent group for creation of new groups

    -   ### GROUP\_TYPE\_CHANGE\_SUCCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") GROUP\_TYPE\_CHANGE\_SUCCESS

        Constant for whether changing the group type of group was successful

    -   ### GROUP\_TYPE\_CHANGE\_NO\_PRIVILEGE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") GROUP\_TYPE\_CHANGE\_NO\_PRIVILEGE

        Constant for PrivilegeException where user cannot change group type of group

    -   ### GROUP\_TYPE\_CHANGE\_INVALID\_GROUP

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") GROUP\_TYPE\_CHANGE\_INVALID\_GROUP

        Constant for InvalidGroupException where group Id is invalid.

    -   ### GROUP\_TYPE\_CHANGE\_INVALID\_GROUPTYPE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") GROUP\_TYPE\_CHANGE\_INVALID\_GROUPTYPE

        Constant for InvalidGroupTypeException when grouptype of group is invalid

    -   ### createGroup$UPDATES

        static final boolean createGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.createGroup$UPDATES)

    -   ### createGroups$UPDATES

        static final boolean createGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.createGroups$UPDATES)

    -   ### updateGroup$UPDATES

        static final boolean updateGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.updateGroup$UPDATES)

    -   ### updateGroups$UPDATES

        static final boolean updateGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.updateGroups$UPDATES)

    -   ### deleteGroup$UPDATES

        static final boolean deleteGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.deleteGroup$UPDATES)

    -   ### getGroupName$UPDATES

        static final boolean getGroupName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupName$UPDATES)

    -   ### getGroupNames$UPDATES

        static final boolean getGroupNames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupNames$UPDATES)

    -   ### getGroupNamesList$UPDATES

        static final boolean getGroupNamesList$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupNamesList$UPDATES)

    -   ### getGroupAttribute$UPDATES

        static final boolean getGroupAttribute$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupAttribute$UPDATES)

    -   ### getGroup$UPDATES

        static final boolean getGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroup$UPDATES)

    -   ### getGroups$UPDATES

        static final boolean getGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroups$UPDATES)

    -   ### getCredentials$UPDATES

        static final boolean getCredentials$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getCredentials$UPDATES)

    -   ### getCachedCredentials$UPDATES

        static final boolean getCachedCredentials$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getCachedCredentials$UPDATES)

    -   ### getGroupsOfType$UPDATES

        static final boolean getGroupsOfType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupsOfType$UPDATES)

    -   ### getGroupsOfTypePaging$UPDATES

        static final boolean getGroupsOfTypePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupsOfTypePaging$UPDATES)

    -   ### getGroupTypeForGroup$UPDATES

        static final boolean getGroupTypeForGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupTypeForGroup$UPDATES)

    -   ### getGroupIdsForUserByRole$UPDATES

        static final boolean getGroupIdsForUserByRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupIdsForUserByRole$UPDATES)

    -   ### getGroupsForUserByRole$UPDATES

        static final boolean getGroupsForUserByRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupsForUserByRole$UPDATES)

    -   ### getGroupsForUserByRolePaging$UPDATES

        static final boolean getGroupsForUserByRolePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupsForUserByRolePaging$UPDATES)

    -   ### getGroupsOfTypeForMemberUser$UPDATES

        static final boolean getGroupsOfTypeForMemberUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupsOfTypeForMemberUser$UPDATES)

    -   ### getMemberGroups$UPDATES

        static final boolean getMemberGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberGroups$UPDATES)

    -   ### getMemberGroupsPaging$UPDATES

        static final boolean getMemberGroupsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberGroupsPaging$UPDATES)

    -   ### getMemberUsers$UPDATES

        static final boolean getMemberUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberUsers$UPDATES)

    -   ### getMemberUsersPaging$UPDATES

        static final boolean getMemberUsersPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberUsersPaging$UPDATES)

    -   ### getMemberUserCount$UPDATES

        static final boolean getMemberUserCount$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberUserCount$UPDATES)

    -   ### getMemberGroupCount$UPDATES

        static final boolean getMemberGroupCount$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberGroupCount$UPDATES)

    -   ### addMemberGroup$UPDATES

        static final boolean addMemberGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.addMemberGroup$UPDATES)

    -   ### addMemberGroups$UPDATES

        static final boolean addMemberGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.addMemberGroups$UPDATES)

    -   ### addMemberUser$UPDATES

        static final boolean addMemberUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.addMemberUser$UPDATES)

    -   ### addMemberUsers$UPDATES

        static final boolean addMemberUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.addMemberUsers$UPDATES)

    -   ### addMyselfToGroup$UPDATES

        static final boolean addMyselfToGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.addMyselfToGroup$UPDATES)

    -   ### removeMemberGroup$UPDATES

        static final boolean removeMemberGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.removeMemberGroup$UPDATES)

    -   ### removeMemberGroups$UPDATES

        static final boolean removeMemberGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.removeMemberGroups$UPDATES)

    -   ### removeMemberUser$UPDATES

        static final boolean removeMemberUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.removeMemberUser$UPDATES)

    -   ### removeMemberUsers$UPDATES

        static final boolean removeMemberUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.removeMemberUsers$UPDATES)

    -   ### removeMyselfFromGroup$UPDATES

        static final boolean removeMyselfFromGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.removeMyselfFromGroup$UPDATES)

    -   ### findGroups$UPDATES

        static final boolean findGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.findGroups$UPDATES)

    -   ### isGroupDescendant$UPDATES

        static final boolean isGroupDescendant$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.isGroupDescendant$UPDATES)

    -   ### isUserMember$UPDATES

        static final boolean isUserMember$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.isUserMember$UPDATES)

    -   ### getRootTrees$UPDATES

        static final boolean getRootTrees$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getRootTrees$UPDATES)

    -   ### getRootTreesSameTypeWithRoles$UPDATES

        static final boolean getRootTreesSameTypeWithRoles$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getRootTreesSameTypeWithRoles$UPDATES)

    -   ### getTopLevelGroupsPaging$UPDATES

        static final boolean getTopLevelGroupsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getTopLevelGroupsPaging$UPDATES)

    -   ### getTreeViewForGroup$UPDATES

        static final boolean getTreeViewForGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getTreeViewForGroup$UPDATES)

    -   ### getTreeViewForGroupSameTypeWithRoles$UPDATES

        static final boolean getTreeViewForGroupSameTypeWithRoles$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getTreeViewForGroupSameTypeWithRoles$UPDATES)

    -   ### doesGroupExist$UPDATES

        static final boolean doesGroupExist$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.doesGroupExist$UPDATES)

    -   ### addGroupsToMyGroups$UPDATES

        static final boolean addGroupsToMyGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.addGroupsToMyGroups$UPDATES)

    -   ### removeGroupsFromMyGroups$UPDATES

        static final boolean removeGroupsFromMyGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.removeGroupsFromMyGroups$UPDATES)

    -   ### getMyGroupIds$UPDATES

        static final boolean getMyGroupIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMyGroupIds$UPDATES)

    -   ### getMyGroups$UPDATES

        static final boolean getMyGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMyGroups$UPDATES)

    -   ### getGroupSecurityTypes$UPDATES

        static final boolean getGroupSecurityTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupSecurityTypes$UPDATES)

    -   ### getGroupMembershipPolicyTypes$UPDATES

        static final boolean getGroupMembershipPolicyTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupMembershipPolicyTypes$UPDATES)

    -   ### getGroupMemberViewingPolicyTypes$UPDATES

        static final boolean getGroupMemberViewingPolicyTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupMemberViewingPolicyTypes$UPDATES)

    -   ### getAllAttributeTypes$UPDATES

        static final boolean getAllAttributeTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getAllAttributeTypes$UPDATES)

    -   ### findNonMemberAncestorGroups$UPDATES

        static final boolean findNonMemberAncestorGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.findNonMemberAncestorGroups$UPDATES)

    -   ### findAvailableParentGroups$UPDATES

        static final boolean findAvailableParentGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.findAvailableParentGroups$UPDATES)

    -   ### findAdminGroups$UPDATES

        static final boolean findAdminGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.findAdminGroups$UPDATES)

    -   ### getRuleSetForGroup$UPDATES

        static final boolean getRuleSetForGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getRuleSetForGroup$UPDATES)

    -   ### updateRuleSetForGroup$UPDATES

        static final boolean updateRuleSetForGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.updateRuleSetForGroup$UPDATES)

    -   ### getGroupSummaryForUser$UPDATES

        static final boolean getGroupSummaryForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupSummaryForUser$UPDATES)

    -   ### getGroupSummaryForUserPaging$UPDATES

        static final boolean getGroupSummaryForUserPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupSummaryForUserPaging$UPDATES)

    -   ### isGroupSystemGroup$UPDATES

        static final boolean isGroupSystemGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.isGroupSystemGroup$UPDATES)

    -   ### getGroupsForUserByRoles$UPDATES

        static final boolean getGroupsForUserByRoles$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupsForUserByRoles$UPDATES)

    -   ### getGroupsForUserByRolesPaging$UPDATES

        static final boolean getGroupsForUserByRolesPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupsForUserByRolesPaging$UPDATES)

    -   ### getGroupActions$UPDATES

        static final boolean getGroupActions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupActions$UPDATES)

    -   ### canUseGroupName$UPDATES

        static final boolean canUseGroupName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.canUseGroupName$UPDATES)

    -   ### getParentGroupsForDelegatedCreation$UPDATES

        static final boolean getParentGroupsForDelegatedCreation$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getParentGroupsForDelegatedCreation$UPDATES)

    -   ### getParentGroupsForDelegatedUpdate$UPDATES

        static final boolean getParentGroupsForDelegatedUpdate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getParentGroupsForDelegatedUpdate$UPDATES)

    -   ### getParentGroupsForDelegatedCreationPaging$UPDATES

        static final boolean getParentGroupsForDelegatedCreationPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getParentGroupsForDelegatedCreationPaging$UPDATES)

    -   ### findGroupsPaging$UPDATES

        static final boolean findGroupsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.findGroupsPaging$UPDATES)

    -   ### findNonMemberAncestorGroupsPaging$UPDATES

        static final boolean findNonMemberAncestorGroupsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.findNonMemberAncestorGroupsPaging$UPDATES)

    -   ### findAvailableParentGroupsPaging$UPDATES

        static final boolean findAvailableParentGroupsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.findAvailableParentGroupsPaging$UPDATES)

    -   ### findAdminGroupsPaging$UPDATES

        static final boolean findAdminGroupsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.findAdminGroupsPaging$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getWorkspace$UPDATES)

    -   ### getMemberUsernames$UPDATES

        static final boolean getMemberUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberUsernames$UPDATES)

    -   ### getGroupIdsForUserByRoles$UPDATES

        static final boolean getGroupIdsForUserByRoles$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupIdsForUserByRoles$UPDATES)

    -   ### getGroupsList$UPDATES

        static final boolean getGroupsList$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGroupsList$UPDATES)

    -   ### getMemberGroupsDirect$UPDATES

        static final boolean getMemberGroupsDirect$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberGroupsDirect$UPDATES)

    -   ### getMemberGroupsDirectPaging$UPDATES

        static final boolean getMemberGroupsDirectPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberGroupsDirectPaging$UPDATES)

    -   ### getMemberUsersDirect$UPDATES

        static final boolean getMemberUsersDirect$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberUsersDirect$UPDATES)

    -   ### getMemberUsersDirectPaging$UPDATES

        static final boolean getMemberUsersDirectPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberUsersDirectPaging$UPDATES)

    -   ### getAdminUsersDirectPaging$UPDATES

        static final boolean getAdminUsersDirectPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getAdminUsersDirectPaging$UPDATES)

    -   ### getMemberUsernamesDirect$UPDATES

        static final boolean getMemberUsernamesDirect$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMemberUsernamesDirect$UPDATES)

    -   ### getTopLevelGroupsForHierarchy$UPDATES

        static final boolean getTopLevelGroupsForHierarchy$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getTopLevelGroupsForHierarchy$UPDATES)

    -   ### getTopLevelGroupsForHierarchyPaging$UPDATES

        static final boolean getTopLevelGroupsForHierarchyPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getTopLevelGroupsForHierarchyPaging$UPDATES)

    -   ### areUsersAddedByRule$UPDATES

        static final boolean areUsersAddedByRule$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.areUsersAddedByRule$UPDATES)

    -   ### areGroupsAddedByRule$UPDATES

        static final boolean areGroupsAddedByRule$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.areGroupsAddedByRule$UPDATES)

    -   ### suggestGroups$UPDATES

        static final boolean suggestGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.suggestGroups$UPDATES)

    -   ### suggestUsersAndGroups$UPDATES

        static final boolean suggestUsersAndGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.suggestUsersAndGroups$UPDATES)

    -   ### suggestGroupsBulk$UPDATES

        static final boolean suggestGroupsBulk$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.suggestGroupsBulk$UPDATES)

    -   ### suggestUsersAndGroupsBulk$UPDATES

        static final boolean suggestUsersAndGroupsBulk$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.suggestUsersAndGroupsBulk$UPDATES)

    -   ### getUserDefaultApplication$UPDATES

        static final boolean getUserDefaultApplication$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getUserDefaultApplication$UPDATES)

    -   ### getSystemDefaultApplication$UPDATES

        static final boolean getSystemDefaultApplication$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getSystemDefaultApplication$UPDATES)

    -   ### getMyHomePage$UPDATES

        static final boolean getMyHomePage$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getMyHomePage$UPDATES)

    -   ### setGlobalHomePage$UPDATES

        static final boolean setGlobalHomePage$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.setGlobalHomePage$UPDATES)

    -   ### setHomePageForUser$UPDATES

        static final boolean setHomePageForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.setHomePageForUser$UPDATES)

    -   ### setMyHomePage$UPDATES

        static final boolean setMyHomePage$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.setMyHomePage$UPDATES)

    -   ### getGlobalHomePage$UPDATES

        static final boolean getGlobalHomePage$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getGlobalHomePage$UPDATES)

    -   ### addGroupToFavorites$UPDATES

        static final boolean addGroupToFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.addGroupToFavorites$UPDATES)

    -   ### removeGroupFromFavorites$UPDATES

        static final boolean removeGroupFromFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.removeGroupFromFavorites$UPDATES)

    -   ### getFavoriteGroups$UPDATES

        static final boolean getFavoriteGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getFavoriteGroups$UPDATES)

    -   ### addAdminUsers$UPDATES

        static final boolean addAdminUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.addAdminUsers$UPDATES)

    -   ### removeAdminUsers$UPDATES

        static final boolean removeAdminUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.removeAdminUsers$UPDATES)

    -   ### addAdminGroups$UPDATES

        static final boolean addAdminGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.addAdminGroups$UPDATES)

    -   ### removeAdminGroups$UPDATES

        static final boolean removeAdminGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.removeAdminGroups$UPDATES)

    -   ### getAdminGroupsPaging$UPDATES

        static final boolean getAdminGroupsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getAdminGroupsPaging$UPDATES)

    -   ### getAdminUsersPaging$UPDATES

        static final boolean getAdminUsersPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getAdminUsersPaging$UPDATES)

    -   ### getAdminUserCount$UPDATES

        static final boolean getAdminUserCount$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getAdminUserCount$UPDATES)

    -   ### getAdminGroupCount$UPDATES

        static final boolean getAdminGroupCount$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getAdminGroupCount$UPDATES)

    -   ### isMemberOfGroups$UPDATES

        static final boolean isMemberOfGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.isMemberOfGroups$UPDATES)

    -   ### isUserMemberOfGroups$UPDATES

        static final boolean isUserMemberOfGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.isUserMemberOfGroups$UPDATES)

    -   ### areUsersMembersOfGroups$UPDATES

        static final boolean areUsersMembersOfGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.areUsersMembersOfGroups$UPDATES)

    -   ### getDirectMemberGroupIds$UPDATES

        static final boolean getDirectMemberGroupIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getDirectMemberGroupIds$UPDATES)

    -   ### getDirectMemberUsernames$UPDATES

        static final boolean getDirectMemberUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getDirectMemberUsernames$UPDATES)

    -   ### getDirectAdminGroupIds$UPDATES

        static final boolean getDirectAdminGroupIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getDirectAdminGroupIds$UPDATES)

    -   ### getDirectAdminUsernames$UPDATES

        static final boolean getDirectAdminUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.getDirectAdminUsernames$UPDATES)

    -   ### suggest$UPDATES

        static final boolean suggest$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.suggest$UPDATES)

    -   ### resolveEmailAddress$UPDATES

        static final boolean resolveEmailAddress$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.resolveEmailAddress$UPDATES)

    -   ### resolveEmailAddresses$UPDATES

        static final boolean resolveEmailAddresses$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.resolveEmailAddresses$UPDATES)

    -   ### resolveEmailDestinations$UPDATES

        static final boolean resolveEmailDestinations$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.resolveEmailDestinations$UPDATES)

    -   ### changeGroupTypeOfGroup$UPDATES

        static final boolean changeGroupTypeOfGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.changeGroupTypeOfGroup$UPDATES)

    -   ### changeGroupTypesOfGroups$UPDATES

        static final boolean changeGroupTypesOfGroups$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.changeGroupTypesOfGroups$UPDATES)

    -   ### validateTypedValues$UPDATES

        static final boolean validateTypedValues$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupService.validateTypedValues$UPDATES)

-   ## Method Details

    -   ### createGroup

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createGroup([Group](Group.html "class in com.appiancorp.suiteapi.personalization") group\_) throws [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeException](../common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidParentException](../common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCreatorException](../common/exceptions/InvalidCreatorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSecurityMapException](../common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMemberPolicyException](../common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidViewingPolicyException](../common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Create a new group. `groupName` must be unique for public and team groups. If the `Group` is of a group type with attributes, you must pass the correct `Attribute` list with the correct `name` and `type` for each `Attribute` with the `Group`. Should be used in conjunction with [`GroupTypeService.getGroupTypeAttributes(Long groupTypeId)`](GroupTypeService.html#getGroupTypeAttributes\(java.lang.Long\)) in order to properly fill the `setAttributes(Attribute[])` field of the `Group` passed in. If the `Attribute[]` does not match the group type's attributes, then an `InvalidAttributeException` will be thrown.

        Note that when a `Group` specifies a parent, it automatically becomes a member `Group` of its parent.

        The `Group` fields required for creation are: `groupName`, `groupTypeId`, `creatorName`, `securityMapId`. If `groupTypeId` points to a `GroupType` with attributes, then all the attributes fields are required.

        In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `groupName` in the `Group` object be validated for illegal characters (only allow alphanumeric symbols and underscores).

        Note: Personal Groups must have CLOSED membership policy and HIGH member viewing policy and Team Groups cannot have an AUTOMATIC membership policy; otherwise `InvalidMemberPolicyException` or `InvalidViewingPolicyException` will be thrown

        Parameters:

        `group_` - the `Group` to create

        Returns:

        the id of the `Group` created

        Throws:

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the group is a public or team group and its name is not unique.

        `[UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when trying to create or update an attribute type that is not supported by the `GroupService`.

        `[InvalidAttributeException](../common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when trying to get, update, or delete an `attribute` for a `GroupType` that does not exist.

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception may be thrown by service methods detecting that a given `GroupType` does not exist.

        `[InvalidParentException](../common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when user passes in invalid `Group` as parent.

        `[InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown when the groupname is null or empty.

        `[InvalidCreatorException](../common/exceptions/InvalidCreatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a invalid user is passed as creator of `Group`.

        `[InvalidSecurityMapException](../common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if the securitymapId field passed in `Group` object is invalid.

        `[InvalidMemberPolicyException](../common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when membership policy is invalid or not applicable to the `Group`.

        `[InvalidViewingPolicyException](../common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when viewing policy is invalid or not applicable to the `Group`.

        `[InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when incorrect attributes values are passed.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to create a `Group`.

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the UUID passed in already exists in the system.

    -   ### createGroups

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] createGroups([Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] groups\_) throws [UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidParentException](../common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCreatorException](../common/exceptions/InvalidCreatorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSecurityMapException](../common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMemberPolicyException](../common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidViewingPolicyException](../common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeException](../common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Create new groups. `groupName` must be unique for public and team groups. It does not support creating groups with group types having attributes. If groups with group type having attributes are passed, it simply returns `null` ids in the corresponding entries for those groups in the return list, as no groups are created for these cases.

        Note that when a `Group` specifies a parent, it automatically becomes a member `Group` of its parent.

        The `Group` fields required for creation are: `groupName`, `groupTypeId`, `creatorName`, `securityMapId`.

        In order to minimize possible breaks with the user interface, it is HIGHLY recommended that `groupName` in the `Group` object be validated for illegal characters (only allow alphanumeric symbols and underscores).

        Note: Personal Groups must have CLOSED membership policy and HIGH member viewing policy and Team Groups cannot have AUTOMATIC membership policy; otherwise `InvalidMemberPolicyException` or `InvalidViewingPolicyException` will be thrown

        Parameters:

        `groups_` - the groups to create

        Returns:

        the ids of the groups created; null entries for the corresponding groups with group type having attributes.

        Throws:

        `[UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when trying to create or update an attribute type that is not supported by the Personalization service.

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception may be thrown by service methods detecting that a given `GroupType` does not exist.

        `[InvalidParentException](../common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when user passes in invalid `Group` as parent.

        `[InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown when the groupname is null or empty.

        `[InvalidCreatorException](../common/exceptions/InvalidCreatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a invalid user is passed as creator of `Group`.

        `[InvalidSecurityMapException](../common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if the securitymapId field passed in `Group` object is invalid.

        `[InvalidMemberPolicyException](../common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when membership policy is invalid or not applicable to the `Group`.

        `[InvalidViewingPolicyException](../common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when viewing policy is invalid or not applicable to the `Group`.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to create one or more of the `Group`s.

        `[InvalidAttributeException](../common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Never thrown. Is only declared for backwards compatibility.

        `[InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Never thrown. Is only declared for backwards compatibility.

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the UUID of any of the groups already exists or if the same UUID is passed in for several groups

    -   ### updateGroup

        void updateGroup([Group](Group.html "class in com.appiancorp.suiteapi.personalization") group\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidParentException](../common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeException](../common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSecurityMapException](../common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMemberPolicyException](../common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidViewingPolicyException](../common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates a [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization"). `groupName` must be unique for public and team groups. If the `group` is of a group type with attributes, you must pass the correct `Attribute` list with the correct `name` and `type` for each `Attribute` with the `Group`. Should be used in conjunction with [`GroupTypeService.getGroupTypeAttributes(Long groupTypeId)`](GroupTypeService.html#getGroupTypeAttributes\(java.lang.Long\)) in order to properly fill the `setAttributes(Attribute[])` field of the `Group` passed in. If the `Attribute[]` does not match the Group Type's attributes, then an `InvalidAttributeException` will be thrown.

        The following fields are set when a `Group` is created and cannot be changed using this method: `id` and `groupTypeId`.

        Only the following fields can be changed: `groupName`, `description`, `parentId`, `securityMapId`, `attributes`, `memberPolicyId`, `viewingPolicyId`, `delegatedCreation`.
        If the group does not have a parent then `parentId` should be set to -1.
        Note that when a `group` specifies a parent, it automatically becomes a member `group` of its parent.

        In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `groupName` be validated for illegal characters (only allow alphanumeric symbols and underscores).

        Parameters:

        `group_` - the `group` to update. Group `id` must be populated as well as `groupName`, `groupTypeId`, `creatorName`, `securityMapId`, `viewingPolicyId`, `memberPolicyId`, and `parentId`. If `groupTypeId` points to a `GroupType` with `attributes`, then all the `attributes` fields are required.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id or group name is passed into a service method.

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception may be thrown by service methods detecting that a given name is not unique.

        `[RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a relationship is trying to be created that will result in a recursive loop (for instance, if the group is being updated to be a child of itself).

        `[InvalidParentException](../common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when user passes in invalid group as parent.

        `[UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when trying to create or update an attribute type that is not supported by the Personalization service.

        `[InvalidAttributeException](../common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when trying to get, update, or delete an attribute for a group type that does not exist.

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception may be thrown by service methods detecting that a given group type does not exist.

        `[InvalidSecurityMapException](../common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if the securitymap Id field passed in Group object is invalid.

        `[InvalidMemberPolicyException](../common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when membership policy is invalid or not applicable to the group.

        `[InvalidViewingPolicyException](../common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when viewing policy is invalid or not applicable to the group.

        `[InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when incorrect attributes values are passed.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to update the group.

    -   ### updateGroups

        void updateGroups([Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] groups\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidParentException](../common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeException](../common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSecurityMapException](../common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidMemberPolicyException](../common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidViewingPolicyException](../common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates multiple [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization") objects. `groupName` must be unique for public and team groups. If the `group` is of a group type with attributes, you must pass the correct `Attribute` list with the correct `name` and `type` for each `Attribute` with the `group`. Should be used in conjunction with [`GroupTypeService.getGroupTypeAttributes(Long groupTypeId)`](GroupTypeService.html#getGroupTypeAttributes\(java.lang.Long\)) in order to properly fill the `setAttributes(Attribute[])` field of the `Group` passed in. If the `Attribute[]` does not match the Group Type's attributes, then an `InvalidAttributeException` will be thrown.

        The following fields are set when a `Group` is created and cannot be changed using this method: `id` and `groupTypeId`.

        Only the following fields can be changed: `groupName`, `description`, `parentId`, `securityMapId`, `attributes`, `memberPolicyId`, `viewingPolicyId`, `delegatedCreation`.
        If the group does not have a parent then `parentId` should be set to -1.
        Note that when a `group` specifies a parent, it automatically becomes a member `group` of its parent.

        In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `groupName` be validated for illegal characters (only allow alphanumeric symbols and underscores).

        Parameters:

        `groups_` - the `groups` to update. Group `id` must be populated as well as `groupName`, `groupTypeId`, `creatorName`, `securityMapId`, `viewingPolicyId`, `memberPolicyId`, and `parentId`. If `groupTypeId` points to a `GroupType` with `attributes`, then all the `attributes` fields are required.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id or group name is passed into a service method.

        `[RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a relationship is trying to be created that will result in a recursive loop (for instance, if the group is being updated to be a child of itself).

        `[InvalidParentException](../common/exceptions/InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when user passes in invalid group as parent.

        `[UnsupportedAttributeTypeException](../common/exceptions/UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when trying to create or update an attribute type that is not supported by the Personalization service.

        `[InvalidAttributeException](../common/exceptions/InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when trying to get, update, or delete an attribute for a group type that does not exist.

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception may be thrown by service methods detecting that a given group type does not exist.

        `[InvalidSecurityMapException](../common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown if the securitymap Id field passed in Group object is invalid.

        `[InvalidMemberPolicyException](../common/exceptions/InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when membership policy is invalid or not applicable to the group.

        `[InvalidViewingPolicyException](../common/exceptions/InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when viewing policy is invalid or not applicable to the group.

        `[InvalidAttributeValueException](../common/exceptions/InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when incorrect attributes values are passed.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to update one or more of the groups.

    -   ### deleteGroup

        void deleteGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [SystemGroupException](../common/exceptions/SystemGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [GroupIsAttributeException](../common/exceptions/GroupIsAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes a single group. NOTE: To register in the other (non-personalization) portal applications that a `group` has been deleted, this call must be followed by a call to [`AdministrationService.notifyGroupDeletion(java.lang.Long)`](../portal/AdministrationService.html#notifyGroupDeletion\(java.lang.Long\))

        Parameters:

        `groupId_` - the id of the group to delete

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[SystemGroupException](../common/exceptions/SystemGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when trying to delete a group that is core to the Personalization service such as Portal Administrators or Collaboration Administrators.

        `[GroupIsAttributeException](../common/exceptions/GroupIsAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when trying to delete a group that is being used as an attribute for another group.

    -   ### getGroupName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGroupName([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a group name for a given group id.

        Parameters:

        `groupId_` - the id of the group

        Returns:

        the name of the group

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### getGroupNames

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getGroupNames([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of group names for a given list of group ids.

        Parameters:

        `groupIds_` - the ids of groups

        Returns:

        the matching list of group names

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### getGroupNamesList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getGroupNamesList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Gets a list of group names for a given list of group ids.

        Parameters:

        `groupIds_` - the ids of groups

        Returns:

        `ResultList` containing group names and result codes. Each result code will be either `CODE_VALID` (for valid group ids) or `CODE_INVALID` (for invalid group ids) from [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common"). The results will only contain the names of the valid groups and thus may have a length less than the number of group ids passed in.

    -   ### getGroupAttribute

        [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization") getGroupAttribute([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a group attribute for a given group id.

        Parameters:

        `groupId_` - the id of the group

        `attributeName_` - the name of the desired attribute

        Returns:

        the requested Attribute, or null if the attribute does not exists

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the passed group id and/or the attribute name are null.

    -   ### getGroup

        [Group](Group.html "class in com.appiancorp.suiteapi.personalization") getGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get a group by id.

        Parameters:

        `groupId_` - the group id

        Returns:

        the requested group

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have rights to view the group

    -   ### getGroups

        [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of groups for a given list of group ids.

        Parameters:

        `groupIds_` - the group ids

        Returns:

        the list of groups

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have rights to view the one or more of groups.

    -   ### getCredentials

        [Credentials](../common/Credentials.html "class in com.appiancorp.suiteapi.common") getCredentials() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns a Credentials bean directly from the back-end, containing the group membership relations for the user in this Service Context. This is a System-level call not meant to be used externally.

        Returns:

        Credentials bean with the user's membership data.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the credentials for that user cannot be retrieved.

    -   ### getCachedCredentials

        [Credentials](../common/Credentials.html "class in com.appiancorp.suiteapi.common") getCachedCredentials() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns the cached Credentials bean containing the group membership relations for the user in this Service Context. If the user does not have an entry in the cache, then the Credentials are retrieved from the back-end. Also note that changes made directly on this bean won't be persisted in the system. The [`Credentials`](../common/Credentials.html "class in com.appiancorp.suiteapi.common") bean is for practical purposed read only. This is a System-level call not meant to be used externally.

        Returns:

        [`Credentials`](../common/Credentials.html "class in com.appiancorp.suiteapi.common") bean with the user's membership data.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the credentials for that user cannot be retrieved.

    -   ### getGroupsOfType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroupsOfType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getGroupsOfTypePaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getGroupsOfTypePaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets a list of groups for a given group type.

        Parameters:

        `groupTypeId_` - the group type id

        Returns:

        the groups

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group type id is passed into a service method.

    -   ### getGroupsOfTypePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getGroupsOfTypePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a ResultPage containing a list of groups for a given group type

        Parameters:

        `groupTypeId_` - the group type id

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a ResultPage containing a list of `Group` objects

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group type id is passed into a service method.

    -   ### getGroupTypeForGroup

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getGroupTypeForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets group types for a list of groups.

        Parameters:

        `groupIds_` - the group ids

        Returns:

        group type ids. should have always have a type, even if just default.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group ids are passed into a service method.

    -   ### getGroupIdsForUserByRole

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getGroupIdsForUserByRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") role\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of group ids for which a given user has a given role. Supported roles are:

        -   [`USER_ROLE_CREATOR`](#USER_ROLE_CREATOR)
        -   [`USER_ROLE_ADMINISTRATOR`](#USER_ROLE_ADMINISTRATOR) - Note that when using this role, if the user is a System Administrator, only system groups will be returned.
        -   [`USER_ROLE_MEMBER`](#USER_ROLE_MEMBER)

        Parameters:

        `username_` - the unique key for the user

        `role_` - the role id

        Returns:

        the list of group ids

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid username is passed into a service method.

        `[UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid role id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getGroupsForUserByRole

        [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroupsForUserByRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") role\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of groups for which a given user has a given role. Supported roles are:

        -   [`USER_ROLE_CREATOR`](#USER_ROLE_CREATOR)
        -   [`USER_ROLE_ADMINISTRATOR`](#USER_ROLE_ADMINISTRATOR) - Note that when using this role, if the user is a System Administrator, only system groups will be returned.
        -   [`USER_ROLE_MEMBER`](#USER_ROLE_MEMBER)

        Parameters:

        `username_` - the user

        `role_` - the role id

        Returns:

        the list of groups

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid username is passed into a service method.

        `[UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid role id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getGroupsForUserByRolePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getGroupsForUserByRolePaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") role\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a ResultPage containing list of groups for which a given user has a given role. Supported roles are:

        -   [`USER_ROLE_CREATOR`](#USER_ROLE_CREATOR)
        -   [`USER_ROLE_ADMINISTRATOR`](#USER_ROLE_ADMINISTRATOR)
        -   [`USER_ROLE_MEMBER`](#USER_ROLE_MEMBER)

        Parameters:

        `username_` - the user

        `role_` - the role

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list group objects

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid username is passed into a service method.

        `[UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown when an invalid role id is passed.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getGroupsOfTypeForMemberUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroupsOfTypeForMemberUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupTypeIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getGroupsForUserByRolePaging(String, Integer, int, int, Integer, Integer)`](#getGroupsForUserByRolePaging\(java.lang.String,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) and extract groups of the desired types from the results.

        Gets a list of groups, for a given list of group types, of which a given user is a memeber

        Parameters:

        `groupTypeIds_` - the group type ids

        `username_` - the username of the user to get groups for

        Returns:

        the list of groups

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group type id is passed into a service method.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid username is passed into a service method.

    -   ### getMemberGroups

        [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] getMemberGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of members groups of a group

        Parameters:

        `groupId_` - the group for which to get members

        Returns:

        the member groups. Note: If the user can see the group but cannot view members of group, the returned array will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is not the administrator of the group and the group is not public.

    -   ### getMemberGroupsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMemberGroupsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a ResultPage containing a list of group members of a group

        Parameters:

        `groupId_` - the group for which to get group members

        `startIndex_` - the index of the first `Group` that will be returned

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the `Group` objects will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a ResultPage containing `Group` objects, representing the member groups. Note: If the user can see the group but cannot view members of group, the results array will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is not the administrator of the group and the group is not public.

    -   ### getMemberUsers

        [User](User.html "class in com.appiancorp.suiteapi.personalization")\[\] getMemberUsers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of member users of the specified group

        Parameters:

        `groupId_` - the group to get members from.

        Returns:

        the member users. Note: If the current user can see the group but cannot view members of group, the returned array will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is not the administrator of the group and the group is not public.

    -   ### getMemberUsersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMemberUsersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a ResultPage containing a list of member users of the specified group

        Parameters:

        `groupId_` - the group for which to get members

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of `User` objects. Note: If the current user can see the group but cannot view members of group, the results array will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is not the administrator of the group and the group is not public.

    -   ### getMemberUsers

        [User](User.html "class in com.appiancorp.suiteapi.personalization")\[\] getMemberUsers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of distinct users that are members of any of the specified groups.

        Parameters:

        `groupIds_` - the groups to get members from.

        Returns:

        the member users. Note: If the current user can see a group but cannot view members of the group, the returned list will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method. \*

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is not the administrator of one of the groups and the group is not public.

    -   ### getMemberUserCount

        int getMemberUserCount([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a count of distinct users that are members of the specified group.

        Parameters:

        `groupId_` - the group whose user members are to be counted

        Returns:

        the count of member users. Note: If the user can see the group but cannot view members of group, the returned member count will be 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges

    -   ### getMemberGroupCount

        int getMemberGroupCount([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the number of distinct groups {that are members of the specified group.

        Parameters:

        `groupId_` - the group to count group members of.

        Returns:

        the count. Note: If the current user can see the group but cannot view members of group, the returned member count will be 0.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges

    -   ### addMemberGroup

        void addMemberGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") memgroupId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds a member group to a group.

        Parameters:

        `memgroupId_` - id of the group to add

        `groupId_` - the group to add the member to

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a relationship is trying to be created that will result in a recursive loop (eg if the member group ID and the group ID refer to the same group).

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to add the group as a member

    -   ### addMemberGroups

        void addMemberGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] memgroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds member groups to a group

        Parameters:

        `memgroupIds_` - ids of the groups to add

        `groupId_` - the group to add members to

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a relationship is trying to be created that will result in a recursive loop (eg if a member group ID and the group ID refer to the same group)..

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to add one or more of the groups as members

    -   ### addMemberUser

        void addMemberUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds a member user to a group .

        Parameters:

        `username_` - username of the user to add to the group

        `groupId_` - the group to add the member to

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid username is passed into a service method.

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to add the user as a member

    -   ### addMemberUsers

        void addMemberUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds member users to a group

        Parameters:

        `usernames_` - the usernames of the users to add

        `groupId_` - the group to add members to

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid username is passed into a service method.

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to add one or more the users as members

    -   ### addMyselfToGroup

        void addMyselfToGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds oneself to the given group

        Parameters:

        `groupId_` - the id of the group which the current user wishes to join

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to add himself or herself as a member of the group

    -   ### removeMemberGroup

        void removeMemberGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") memgroupId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes a member group from a group

        Parameters:

        `memgroupId_` - id of the member to remove

        `groupId_` - id of the group to remove member from

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to remove the group's membership

    -   ### removeMemberGroups

        void removeMemberGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] memgroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes a list of member groups from a group

        Parameters:

        `memgroupIds_` - the ids of members to remove

        `groupId_` - id of the `group` to remove member from

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to remove any of the group's memberships

    -   ### removeMemberUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void removeMemberUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`removeMemberUsers(String[], Long)`](#removeMemberUsers\(java.lang.String%5B%5D,java.lang.Long\)) and pass a single user in the array.

        Removes a member user from a group

        Parameters:

        `username_` - the username of the member to remove

        `groupId_` - the id of the group to remove the member from

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid username is passed into a service method.

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to remove the user's membership

    -   ### removeMemberUsers

        void removeMemberUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes a list of member users from a group

        Parameters:

        `usernames_` - the usernames of the members to remove

        `groupId_` - the id of the group to remove members from

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid username is passed into a service method.

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to remove any of the users' membership

    -   ### removeMyselfFromGroup

        void removeMyselfFromGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes oneself from the given group

        Parameters:

        `groupId_` - the id of the group from which one wants to remove oneself

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### findGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] findGroups([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch\_, boolean caseSensitive\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`findGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, int, int, java.lang.Integer, java.lang.Integer)`](#findGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Finds groups based on criteria submitted in the `GroupSearch` The supported search operators are specified in `GroupSearch` for a `group` See `getOperatorsForAttributeType()` in `GroupTypeService` to obtain a list of possible operators [`Operator`](Operator.html "class in com.appiancorp.suiteapi.personalization") for a given data type. The `GroupSearch` object should be populated with the group fields to be searched on, and the criteria to be used in performing the search. For example, the `GroupSearch` might have the `groupName` field set to "myGroup" and the `operatorGroupName` field set to `Operator#EQUALS`. Such a search will return all groups whose `groupName` is "myGroup".

        Parameters:

        `groupSearch_` - the group search bean

        `caseSensitive_` - `false` for case insensitive, `true` for case sensitive.

        Returns:

        a list of groups that matched the search criteria

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a given operation is not supported by the Personalization service.

    -   ### isGroupDescendant

        boolean isGroupDescendant([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentGroupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checks if a group is a descendant of another group (by parent-child relationship).

        Parameters:

        `groupId_` - the id of the group

        `parentGroupId_` - id of the group for which to check the descendants

        Returns:

        true if given group was descendant of passed in parent group, else false.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### isUserMember

        boolean isUserMember([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checks if a user is a member of a group

        Parameters:

        `username_` - the username

        `groupId_` - the group id to check

        Returns:

        true if passed in user is member of given group, else false

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever a non-empty invalid username is passed into the service method.

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into the service method.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If the passed username is either null or empty.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### isUserMember

        boolean isUserMember([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checks multiple potential usernames to determine if a user is a member of a group

        Parameters:

        `username_` - the usernames

        `groupId_` - the group id to check

        Returns:

        true if passed in user is member of given group, else false

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever all non-empty/non-null usernames passed into the service method are invalid.

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into the service method.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If all passed usernames are either null or empty.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### isUserMember

        boolean isUserMember([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupUuid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checks if a user is a member of a group

        Parameters:

        `username_` - the username

        `groupUuid_` - the group UUID to check

        Returns:

        true if passed in user is member of given group, else false

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever all non-empty/non-null usernames passed into the service method are invalid.

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into the service method.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If all passed usernames are either null or empty.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### isUserMember

        boolean isUserMember([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] username\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupUuid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checks multiple potential usernames to determine if a user is a member of a group

        Parameters:

        `username_` - the usernames

        `groupUuid_` - the group UUID to check

        Returns:

        true if passed in user is member of given group, else false

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever all non-empty/non-null usernames passed into the service method are invalid.

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into the service method.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If all passed usernames are either null or empty.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getRootTrees

        [Tree](../common/Tree.html "class in com.appiancorp.suiteapi.common")\[\] getRootTrees([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relationshipType\_, boolean singleGroupType\_, int descendentDepth\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get a set of groups structured into one or more trees. Each node in the tree will represent a group. The `id`, `name` of the node will be `id` and `groupName` of the group, and `data` field of the node will be the group itself.

        Parameters:

        `groupTypeId_` - The group type of the root node groups.

        `relationshipType_` - The relationship connecting the groups. Currently, the only permissible value is [`RELATIONSHIP_TYPE_HEIRARCHY`](#RELATIONSHIP_TYPE_HEIRARCHY).

        `singleGroupType_` - `true` if only groups of the same group type as the root should be returned; `false` if all groups, regardless of group type, should be returned.

        `descendentDepth_` - The number of levels below the root that should be returned.

        Returns:

        The `tree` representing the root level groups

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group type id is passed into a service method.

    -   ### getRootTreesSameTypeWithRoles

        [Tree](../common/Tree.html "class in com.appiancorp.suiteapi.common")\[\] getRootTreesSameTypeWithRoles([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] roleTypes\_, int descendantDepth\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get a set of groups [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization") structured into one or more trees [`Tree`](../common/Tree.html "class in com.appiancorp.suiteapi.common"). Only those groups are returned for which the user's privilege matches the specified roles

        Parameters:

        `groupTypeId_` - The group type [`GroupType`](GroupType.html "class in com.appiancorp.suiteapi.personalization") of the root node groups.

        `roleTypes_` - array of roles which should match user's privilege

        `descendantDepth_` - The number of levels below the root that should be returned.

        Returns:

        The `tree` representing the root level groups

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group type id is passed into a service method.

    -   ### getTopLevelGroupsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTopLevelGroupsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relationshipType\_, boolean singleGroupType\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get a ResultPage containing a list of groups structured into one or more trees in the `result` field. Each node in the tree will represent a group. The `id`, `name` of the node will be `id` and `groupName` of the group, and `data` field of the node will be the group itself.

        Parameters:

        `groupTypeId_` - The group type of the root node groups.

        `relationshipType_` - The relationship connecting the groups. Currently, the only permissible value is [`RELATIONSHIP_TYPE_HEIRARCHY`](#RELATIONSHIP_TYPE_HEIRARCHY).

        `singleGroupType_` - `true` if only groups of the same group type as the root should be returned; `false` if all groups, regardless of group type, should be returned.

        `startIndex_` - the index of the first `Group` that will be returned

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the `Group` objects will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing batchSize\_ `Group` objects.

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group type id is passed into a service method.

    -   ### getRootTrees

        [Tree](../common/Tree.html "class in com.appiancorp.suiteapi.common")\[\] getRootTrees([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relationshipType\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupTypeIds\_, int descendentDepth\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get a set of groups structured into one or more trees. \* Each node in the tree will represent a group. The `id`, `name` of the node will be `id` and `groupName` of the group, and `data` field of the node will be the group itself.

        Parameters:

        `groupTypeId_` - The group type of the root node groups.

        `relationshipType_` - The relationship connecting the groups. Currently, the only permissible value is [`RELATIONSHIP_TYPE_HEIRARCHY`](#RELATIONSHIP_TYPE_HEIRARCHY).

        `groupTypeIds_` - Only groups of these group types should be returned in the tree.

        `descendentDepth_` - The number of levels below the root that should be returned.

        Returns:

        The `Tree`s

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group type id is passed into a service method.

    -   ### getTreeViewForGroup

        [TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common") getTreeViewForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, boolean singleGroupType\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relationshipType\_, int descendentDepth\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get a view into the tree pivoted at a particular group. Breadcrumbs will be returned in the `TreePivot` Each node in the tree will represent a group. The `id`, `name` of the node will be `id` and `groupName` of the group, and `data` field of the node will be the group itself.

        Parameters:

        `groupId_` - The id of the `group` to use as the root of the `tree`.

        `singleGroupType_` - `true` if only groups of the same group type as the root should be returned; `false` if all groups, regardless of group type, should be returned.

        `relationshipType_` - The relationship connecting the groups. Currently, the only permissible value is [`RELATIONSHIP_TYPE_HEIRARCHY`](#RELATIONSHIP_TYPE_HEIRARCHY)

        `descendentDepth_` - The number of levels below the root that should be returned.

        Returns:

        The view into the tree.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown when the user is not a member of the received group

        See Also:

        -   [`Tree`](../common/Tree.html "class in com.appiancorp.suiteapi.common")

    -   ### getTreeViewForGroup

        [TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common") getTreeViewForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupTypeIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relationshipType\_, int descendentDepth\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get a view into the tree pivoted at a particular group Each node in the tree will represent a group. The `id`, `name` of the node will be `id` and `groupName` of the group, and `data` field of the node will be the group itself.

        Parameters:

        `groupId_` - The id of the `group` to use as the root of the `tree`.

        `groupTypeIds_` - Only groups of these group types should be returned in the tree.

        `relationshipType_` - The relationship connecting the groups. Currently, the only permissible value is [`RELATIONSHIP_TYPE_HEIRARCHY`](#RELATIONSHIP_TYPE_HEIRARCHY).

        `descendentDepth_` - The number of levels below the root that should be returned.

        Returns:

        The view into the tree.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group type id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown when the user is not a member of the received group

        See Also:

        -   [`Tree`](../common/Tree.html "class in com.appiancorp.suiteapi.common")

    -   ### getTreeViewForGroupSameTypeWithRoles

        [TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common") getTreeViewForGroupSameTypeWithRoles([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] roleTypes\_, int descendantDepth\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get a view into the tree pivoted at a particular group Each node in the tree will represent a group. Only those groups are returned for which the user's privilege matches the specified roles. The `id`, `name` of the node will be `id` and `groupName` of the group, and `data` field of the node will be the group itself.

        Parameters:

        `groupId_` - The id of the `group` to use as the root of the `tree`.

        `roleTypes_` - array of roles which should match user's privilege

        `descendantDepth_` - The number of levels below the root that should be returned.

        Returns:

        The view into the tree.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### doesGroupExist

        boolean doesGroupExist([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_)

        Checks to see if a given group exists. Returns true if it exists, false if not.

        Parameters:

        `groupId_` - id of the group to check for existence in system.

        Returns:

        true if given group exists, else false.

    -   ### addGroupsToMyGroups

        void addGroupsToMyGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds a list of groups to My Groups for logged in user. My Groups is a list of groups that the user is tracking and not groups that the user belongs to or administrates

        Parameters:

        `groupIds_` - groups to add to My Groups

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### removeGroupsFromMyGroups

        void removeGroupsFromMyGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Removes a list of groups from My Groups for logged-in user. My Groups is a bookmarked list of groups, and ARE NOT groups that the user is a member of or an administrator of.

        Parameters:

        `groupIds_` - groups to remove from My Groups

        See Also:

        -   [`addGroupsToMyGroups(java.lang.Long[])`](#addGroupsToMyGroups\(java.lang.Long%5B%5D\))

    -   ### getMyGroupIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getMyGroupIds()

        Gets Ids for logged-in user's My Groups. My Groups is a bookmarked list of groups, and ARE NOT groups that the user is a member of or an administrator of.

        Returns:

        group Ids in users's My Groups list

    -   ### getMyGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMyGroups(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        use getFavoriteGroups

        Gets a ResultPage containing a list of groups for logged-in user's My Groups. My Groups is a bookmarked list of groups, and ARE NOT groups that the user is a member of or an administrator of.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing the `Group` objects.

    -   ### getGroupSecurityTypes

        [GroupSecurityType](GroupSecurityType.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroupSecurityTypes([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") actionId\_)

        Gets the list of group security types that are available for a particular action. For example, a basic user will only be able to create personal and team groups.

        Parameters:

        `actionId_` - id of the action for which security types are needed. This is one of the `ACTION_GROUP_XXX` constants

        Returns:

        the list of group security types for a particular action

    -   ### getGroupMembershipPolicyTypes

        [GroupMemberPolicy](GroupMemberPolicy.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroupMembershipPolicyTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupSecurityTypeId\_)

        Gets the list of group membership policy types for a particular group security type. Supported security types are:

        -   [`GroupBase.SECURITYMAP_PERSONAL`](GroupBase.html#SECURITYMAP_PERSONAL)
        -   [`GroupBase.SECURITYMAP_PUBLIC`](GroupBase.html#SECURITYMAP_PUBLIC)
        -   [`GroupBase.SECURITYMAP_TEAM`](GroupBase.html#SECURITYMAP_TEAM)

        Parameters:

        `groupSecurityTypeId_` - id of group security type.

        Returns:

        the list of group membership policy types for a particular group security type

    -   ### getGroupMemberViewingPolicyTypes

        [GroupMemberViewingPolicy](GroupMemberViewingPolicy.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroupMemberViewingPolicyTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupSecurityTypeId\_)

        Gets the list of group member viewing policies for a particular group security type. Supported security types are:

        -   [`GroupBase.SECURITYMAP_PERSONAL`](GroupBase.html#SECURITYMAP_PERSONAL)
        -   [`GroupBase.SECURITYMAP_PUBLIC`](GroupBase.html#SECURITYMAP_PUBLIC)
        -   [`GroupBase.SECURITYMAP_TEAM`](GroupBase.html#SECURITYMAP_TEAM)

        Parameters:

        `groupSecurityTypeId_` - id of group security type.

        Returns:

        the list of group member viewing policies for a particular group security type

    -   ### getAllAttributeTypes

        [AttributeType](AttributeType.html "class in com.appiancorp.suiteapi.personalization")\[\] getAllAttributeTypes()

        Gets the list of group attribute types in the system

        Returns:

        the list of group attribute types

    -   ### findNonMemberAncestorGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] findNonMemberAncestorGroups([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch\_, boolean caseSensitive\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`findNonMemberAncestorGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#findNonMemberAncestorGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead.

        Retrieves a result set that consists list of groups for a group search that are not ancestors (by parent-member relationship) of the given group. This is used to prevent circular member relationships. The `GroupSearch` object should be populated with the group fields to be searched on, and the criteria to be used in performing the search. For example, the `GroupSearch` might have the `groupName` field set to "myGroup" and the `operatorGroupName` field set to `Operator#EQUALS`. Such a search will return all groups whose `groupName` is "myGroup". The supported search operators are specified in GroupSearch for a group

        Parameters:

        `groupSearch_` - the group search form

        `caseSensitive_` - true if search is case sensitive

        `groupId_` - the group id

        Returns:

        the found groups

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a given operation is not supported by the Personalization service.

    -   ### findAvailableParentGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] findAvailableParentGroups([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch\_, boolean caseSensitive\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`findAvailableParentGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#findAvailableParentGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Finds all groups available for setting as parent. These will be groups over which the current user has administrative privileges that are also not members of the given group or members of members of the given group. The supported search operators [`Operator`](Operator.html "class in com.appiancorp.suiteapi.personalization") are specified in GroupSearch [`GroupSearch`](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") The `GroupSearch` object should be populated with the group fields to be searched on, and the criteria to be used in performing the search. For example, the `GroupSearch` might have the `groupName` field set to "myGroup" and the `operatorGroupName` field set to `Operator#EQUALS`. Such a search will return all groups whose `groupName` is "myGroup".

        Parameters:

        `groupSearch_` - the group search form

        `caseSensitive_` - true if search is case sensitive

        `groupId_` - the group id

        Returns:

        the found groups

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a given operation is not supported by the Personalization service.

    -   ### findAdminGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] findAdminGroups([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch\_, boolean caseSensitive\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`findAdminGroupsPaging(com.appiancorp.suiteapi.personalization.GroupSearch, boolean, int, int, java.lang.Integer, java.lang.Integer)`](#findAdminGroupsPaging\(com.appiancorp.suiteapi.personalization.GroupSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Finds groups of which the current user is administrator Supported operators are listed in [`GroupSearch`](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") The `GroupSearch` object should be populated with the group fields to be searched on, and the criteria to be used in performing the search. For example, the `GroupSearch` might have the `groupName` field set to "myGroup" and the `operatorGroupName` field set to `Operator#EQUALS`. Such a search will return all groups whose `groupName` is "myGroup".

        Parameters:

        `groupSearch_` - the group search form

        `caseSensitive_` - true if search is case sensitive

        Returns:

        the list of groups meeting the search criteria

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a given operation is not supported by the Personalization service.

    -   ### getRuleSetForGroup

        [RuleSet](RuleSet.html "class in com.appiancorp.suiteapi.personalization") getRuleSetForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets membership rule set for a Group

        Parameters:

        `groupId_` - the group id of the group that all these rules belong to.

        Returns:

        `RuleSet` for the given roup.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### updateRuleSetForGroup

        void updateRuleSetForGroup([RuleSet](RuleSet.html "class in com.appiancorp.suiteapi.personalization") ruleSet\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates the membership rule set for a `Group`. Note that there is only one `RuleSet` for each `Group`, but each `RuleSet` may contain multiple rules. This method will replace the current `RuleSet` with the one passed in.

        Parameters:

        `ruleSet_` - adds the given `RuleSet` to the group.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### getGroupSummaryForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [GroupSummary](GroupSummary.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroupSummaryForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getGroupSummaryForUserPaging(String, int, int, Integer, Integer)`](#getGroupSummaryForUserPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead.

        Gets summaries for the groups of which the given user is a member or administrator. Note: the security on personal groups will further filter out groups of which the user is a member but not an administrator as only administrators of personal groups have permissions to see those groups.

        Parameters:

        `username_` - the username

        Returns:

        list of `GroupSummary`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown when an invalid username is passed in.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getGroupSummaryForUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getGroupSummaryForUserPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves [`GroupSummary`](GroupSummary.html "class in com.appiancorp.suiteapi.personalization") beans for every group for which the given [`User`](User.html "class in com.appiancorp.suiteapi.personalization") is a member or administrator. Note: the security on personal groups will further filter out groups of which the user is a member but not an administrator as only administrators of personal groups have permissions to see those groups.

        Parameters:

        `username_` - The username of the `User` for which to retrieve the groups.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted.

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` which contains an array of `GroupSummary` objects.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified `User` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### isGroupSystemGroup

        boolean isGroupSystemGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checks to see if a given group is a system group. System groups cannot be deleted, and their names may not be edited.

        Parameters:

        `groupId_` - the group ID

        Returns:

        true if the given group is a System group, else false.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### getGroupsForUserByRoles

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] getGroupsForUserByRoles([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] roles\_) throws [UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getGroupsForUserByRolesPaging(String, Integer[], int, int, Integer, Integer)`](#getGroupsForUserByRolesPaging\(java.lang.String,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead.

        Retrieves a list of groups for which the given user has any of the given roles. Supported roles are:

        -   [`USER_ROLE_CREATOR`](#USER_ROLE_CREATOR)
        -   [`USER_ROLE_ADMINISTRATOR`](#USER_ROLE_ADMINISTRATOR)
        -   [`USER_ROLE_MEMBER`](#USER_ROLE_MEMBER)

        Parameters:

        `username_` - the user

        `roles_` - ids of roles

        Returns:

        the list of groups

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown when an invalid username is passed to this service method.

        `[UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown when an invalid role id is passed.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getGroupsForUserByRolesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getGroupsForUserByRolesPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] roles\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves a ResultPage containing the list of groups for which the given user has any of the given roles. Supported roles are:

        -   [`USER_ROLE_CREATOR`](#USER_ROLE_CREATOR)
        -   [`USER_ROLE_ADMINISTRATOR`](#USER_ROLE_ADMINISTRATOR)
        -   [`USER_ROLE_MEMBER`](#USER_ROLE_MEMBER)

        Parameters:

        `username_` - the user

        `roles_` - ids of roles

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing list of `Group` objects.

        Throws:

        `[UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown when an invalid role id is passed.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown when an invalid username is passed to this service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getGroupActions

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] getGroupActions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] actionIds\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets s Boolean array, representing whether actions with the given ids can be performed on a given group by the current user

        Parameters:

        `groupId_` - id of the group

        `actionIds_` - ids of actions that are requested to be checked. Each of these is one of the `ACTION_GROUP_XXX` constants

        Returns:

        Boolean array. An index in the array is `Boolean.TRUE` if the current user can perform the action at the corresponding index in `actionIds_` on the given group

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### canUseGroupName

        boolean canUseGroupName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupName\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupSecurityType\_) throws [InvalidSecurityMapException](../common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Indicates whether a user can create a new group with the given name of the given group security type. Public group names must be unique.

        Parameters:

        `groupName_` - name of the group

        `groupSecurityType_` - group security type can be one of the following:

        -   [`GroupBase.SECURITYMAP_PERSONAL`](GroupBase.html#SECURITYMAP_PERSONAL)
        -   [`GroupBase.SECURITYMAP_PUBLIC`](GroupBase.html#SECURITYMAP_PUBLIC)
        -   [`GroupBase.SECURITYMAP_TEAM`](GroupBase.html#SECURITYMAP_TEAM)

        Returns:

        true if the passed in group name can be used for a group of the given group security type, else false.

        Throws:

        `[InvalidSecurityMapException](../common/exceptions/InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions")` - thrown when a invalid groupSecurity Type is passed.

        See Also:

        -   [`GroupSecurityType`](GroupSecurityType.html "class in com.appiancorp.suiteapi.personalization")

    -   ### getParentGroupsForDelegatedCreation

        [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] getParentGroupsForDelegatedCreation()

        Gets the groups for which the logged-in user is authorized to set as a parent when creating public child groups. In order to create the public child group, the user must have administrator privileges to the parent group and the parent group must have delegated creation turned on.

        Returns:

        list of groups that can be used as parent groups.

    -   ### getParentGroupsForDelegatedUpdate

        [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] getParentGroupsForDelegatedUpdate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_)

        Gets the groups for which the logged-in user is authorized to set as parent when updating public child groups. This function is similar to `getParentGroupsForDelegatedCreation()` except that it filters out groups that are members of the passed in group and those that are children or sub-children of the passed in group.

        Parameters:

        `groupId_` - the id of the group

        Returns:

        list of groups that can be used as parent groups.

    -   ### getParentGroupsForDelegatedCreationPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getParentGroupsForDelegatedCreationPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Gets a ResultPage of parent groups for which the logged-in user is authorized to create public child groups.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of `Group` objects.

    -   ### findGroupsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findGroupsPaging([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch\_, boolean caseSensitive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Finds groups based on criteria submitted in the GroupSearch The supported search operators are specified in GroupSearch for a `group` See `getOperatorsForAttributeType()` in `GroupTypeService` to obtain a list of possible operators [`Operator`](Operator.html "class in com.appiancorp.suiteapi.personalization") for a given data type. The `GroupSearch` object should be populated with the group fields to be searched on, and the criteria to be used in performing the search. For example, the `GroupSearch` might have the `groupName` field set to "myGroup" and the `operatorGroupName` field set to `Operator#EQUALS`. Such a search will return all groups whose `groupName` is "myGroup".

        Parameters:

        `groupSearch_` - the group search form

        `caseSensitive_` - true if search is case sensitive

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of groups matching search criteria

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a given operation is not supported by the Personalization service.

    -   ### findNonMemberAncestorGroupsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findNonMemberAncestorGroupsPaging([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch\_, boolean caseSensitive\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves a `ResultPage` of list of groups for a group search that are not ancestors (by parent-member relationship) of the given group. This is used to prevent circular member relationships. The supported search operators are specified in GroupSearch for a group The `GroupSearch` object should be populated with the group fields to be searched on, and the criteria to be used in performing the search. For example, the `GroupSearch` might have the `groupName` field set to "myGroup" and the `operatorGroupName` field set to `Operator#EQUALS`. Such a search will return all groups whose `groupName` is "myGroup".

        Parameters:

        `groupSearch_` - the group search form

        `caseSensitive_` - true if search is case sensitive

        `groupId_` - the id of a group

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a ResultPage containing a list of `Group` objects

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a given operation is not supported by the Personalization service.

    -   ### findAvailableParentGroupsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findAvailableParentGroupsPaging([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch\_, boolean caseSensitive\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a ResultPage containing a list of all groups available for setting as parent. These will be groups that the user have administrative privileges and are not members of the given group or members of members of the given group. The supported search operators are specified in GroupSearch The `GroupSearch` object should be populated with the group fields to be searched on, and the criteria to be used in performing the search. For example, the `GroupSearch` might have the `groupName` field set to "myGroup" and the `operatorGroupName` field set to `Operator#EQUALS`. Such a search will return all groups whose `groupName` is "myGroup".

        Parameters:

        `groupSearch_` - the group search form

        `caseSensitive_` - true if search is case sensitive

        `groupId_` - the id of a Group

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of `Groups` objects, representing those groups available to be used as parent groups.

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a given operation is not supported by the Personalization service.

    -   ### findAdminGroupsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findAdminGroupsPaging([GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization") groupSearch\_, boolean caseSensitive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Finds all groups of which you are administrator and which also match the given search criteria. The supported search operators are specified in GroupSearch The `GroupSearch` object should be populated with the group fields to be searched on, and the criteria to be used in performing the search. For example, the `GroupSearch` might have the `groupName` field set to "myGroup" and the `operatorGroupName` field set to `Operator#EQUALS`. Such a search will return all groups whose `groupName` is "myGroup".

        Parameters:

        `groupSearch_` - the group search form

        `caseSensitive_` - true if search is case sensitive

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of `Group` objects matching the search criteria.

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when a given operation is not supported by the Personalization service.

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Gets the name of the application on which this service is running.

        Returns:

        the name of the application

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

    -   ### getMemberUsernames

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getMemberUsernames([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the usernames of all the member users for given group

        Parameters:

        `groupId_` - id of the group to get users for

        Returns:

        a string array of usernames. Note: If the user can see the group but cannot view members of group, the returned array will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getGroupIdsForUserByRoles

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\]\[\] getGroupIdsForUserByRoles([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] roles\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the group Ids for which the specified user has any of the specified roles

        Parameters:

        `username_` - the user

        `roles_` - ids of roles

        Returns:

        ids of groups where user has any of the given roles.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid username is passed into a service method.

        `[UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid role id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getGroupsList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getGroupsList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Returns a ResultList [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") containing error codes for all Ids and `Group`s for valid Ids

        Parameters:

        `groupIds_` - Ids of groups to retrieve

        Returns:

        `ResultList` containing `Group` group objects, and error codes. Each error code will be one of the `CODE_XXX` constants in [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common")

    -   ### getMemberGroupsDirect

        [Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] getMemberGroupsDirect([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets group members of a group that are explicitly defined, no cascading (group members of subgroups are not included)

        Parameters:

        `groupId_` - the group to get group members for

        Returns:

        array of member groups. Note: If the user can see the group but cannot view members of groupg, the returned array will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is a security violation

    -   ### getMemberGroupsDirectPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMemberGroupsDirectPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a ResultPage containing a list of groups that are direct members, i.e. group members of subgroups are not included in the result set.

        Parameters:

        `groupId_` - the group to get members for

        `startIndex_` - the index of the first `Group` that will be returned

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the `Group` objects will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a ResultPage containing `Group` objects, representing the group member. Note: If the user can see the group but cannot view members of the group, the results array will be of length 0.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is a security violation

    -   ### getMemberUsersDirect

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [User](User.html "class in com.appiancorp.suiteapi.personalization")\[\] getMemberUsersDirect([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getMemberUsersDirectPaging(Long, int, int, Integer, Integer)`](#getMemberUsersDirectPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Gets a list of distinct users that are direct members of the specified group, i.e user members of subgroups are not included.

        Parameters:

        `groupId_` - the group to get members for.

        Returns:

        array of member users. Note: If the current user can see the group but cannot view members of group, the returned array will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is a security violation

    -   ### getMemberUsersDirectPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMemberUsersDirectPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a ResultPage containing a list of distinct users that are direct members of the specified group i.e user members of subgroups are not included.

        Parameters:

        `groupId_` - the group to get members for.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of `User` objects, representing the direct member users of the group. Note: If the current user can see the group but cannot view members of group, the results array will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is a security violation

    -   ### getAdminUsersDirectPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAdminUsersDirectPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a ResultPage containing a list of distinct users that are direct admins of the specified group ie user admins of subgroups are not included.

        Parameters:

        `groupId_` - the group to get admins for.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of `User` objects, representing the direct user admins of the group. Note: If the current user can see the group but cannot view members of group, the results array will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is a security violation

    -   ### getMemberUsernamesDirect

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getMemberUsernamesDirect([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getMemberUsersDirectPaging(Long, int, int, Integer, Integer)`](#getMemberUsersDirectPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Gets the usernames of all the direct member users for given group ie user members of subgroups are not included.

        Parameters:

        `groupId_` - id of the Group to get users for

        Returns:

        a string array of usernames. Note: If the current user can see the group but cannot view members of the group, the returned array will be of length 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is a security violation

    -   ### getTopLevelGroupsForHierarchy

        [GroupHierarchyBean](GroupHierarchyBean.html "class in com.appiancorp.suiteapi.personalization")\[\] getTopLevelGroupsForHierarchy([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_, boolean sameType\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Parameters:

        `groupTypeId_` -

        `sameType_` -

        Returns:

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception may be thrown by service methods detecting that a given `GroupType` does not exist.

        `[SecurityException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/SecurityException.html "class or interface in java.lang")` - if there is a security violation

    -   ### getTopLevelGroupsForHierarchyPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getTopLevelGroupsForHierarchyPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_, boolean sameType\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets all top level [`GroupHierarchyBean`](GroupHierarchyBean.html "class in com.appiancorp.suiteapi.personalization") objects ( `Group`s without a parent group) given the `Group` type.

        Parameters:

        `groupTypeId_` - The type of the `Group` to retrieve.

        `sameType_` - Affects the value of the `hasChildren` field. If `true`, then `hasChildren` is only true if the `Group` has children of the same `Group` type. If `false`, then `hasChildren` is true if the `Group` has any children at all.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This should be one of the SORTY\_BY\_XXX constants in [`GroupHierarchyBean`](GroupHierarchyBean.html "class in com.appiancorp.suiteapi.personalization").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") containing an array of `Group` objects.

        Throws:

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the `groupTypeId_` parameter does not correspond to an existing `Group` type.

    -   ### areUsersAddedByRule

        boolean\[\] areUsersAddedByRule([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] userIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checks to see if the given users where added to the group by a rule.

        Parameters:

        `groupId_` - The id of the group that contains the users that are being checked.

        `userIds_` - The ids of the users being checked to see if they were added by a rule.

        Returns:

        A Boolean array the length of `userIds_` that contains as a value in each element either true or false. true means the user was added by a rule, while false means it was not.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid user id is passed into a service method.

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### areGroupsAddedByRule

        boolean\[\] areGroupsAddedByRule([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checks to see if the given groups were added to the group by a rule.

        Parameters:

        `groupId_` - The id of the group that contains the users that are being checked.

        `groupIds_` - The ids of the groups being checked to see if they were added by a rule.

        Returns:

        A Boolean array the length of `groupIds_` that contains as a value in each element either true or false. true means the user was added by a rule, while false means it was not.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

    -   ### suggestGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggestGroups([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxSuggestions\_)

        Deprecated.

        use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

        Returns a String in a specified format that contains `Group`s whose name matches or partially matches the query string. The number of suggestions is limited. Format (for `User`s and `Group`s: \[\[4, 'john.user', John User\],\[5, 32, 'Finance'\]\]

        Parameters:

        `query_` - The search query.

        `maxSuggestions_` - The maximum number of suggestions to return.

        Returns:

        A String of suggestions in the specified format.

    -   ### suggestUsersAndGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggestUsersAndGroups([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxSuggestions\_)

        Deprecated.

        use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

        Returns a String in a format specified by UI that contains `User`s whose first, last, or username match or partially match the query string and `Group`s whose name matches or partially matches the query string. The number of suggestions is limited. Format (for `User`s and `Group`s: \[\[4, 'john.user', John User\],\[5, 32, 'Finance'\]\]

        Parameters:

        `query_` - The search query.

        `maxSuggestions_` - The maximum number of suggestions to return.

        Returns:

        A String of suggestions in the specified format.

    -   ### suggestGroupsBulk

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Suggestion](../common/Suggestion.html "class in com.appiancorp.suiteapi.common")\[\]\[\] suggestGroupsBulk([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] queries\_, int maxSuggestionsPerQuery\_)

        Deprecated.

        use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

        Suggests `Group`s whose name matches each query.

        Parameters:

        `queries_` - An array of queries by which to search for `Group`s.

        `maxSuggestionsPerQuery_` - The maximum number of suggestions to return for each query.

        Returns:

        An array of `Suggestion[]` which are the suggestions corresponding to each query string. The first dimension of the array is equal to the number of queries. The second dimension of the array is less than or equal to the max suggestions per query.

    -   ### suggestUsersAndGroupsBulk

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Suggestion](../common/Suggestion.html "class in com.appiancorp.suiteapi.common")\[\]\[\] suggestUsersAndGroupsBulk([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] queries\_, int maxSuggestionsPerQuery\_)

        Deprecated.

        use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

        Suggests `User`s whose first, last, and usernames match each query and `Group`s whose name matches each query.

        Parameters:

        `queries_` - An array of queries by which to search for `Group`s.

        `maxSuggestionsPerQuery_` - The maximum number of suggestions to return for each query.

        Returns:

        An array of `Suggestion[]` which are the suggestions corresponding to each query string. The first dimension of the array is equal to the number of queries. The second dimension of the array is less than or equal to the max suggestions per query.

    -   ### getUserDefaultApplication

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUserDefaultApplication([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Deprecated.

        Use {@link ApplicationService.getDefaultApplication()} for the site-wide default.

        There are no user-specific default applications. The results of this method should not be used.

        Parameters:

        `username` - the user for which to fetch the application

        Returns:

        null since there are no user-specific default applications.

    -   ### getSystemDefaultApplication

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSystemDefaultApplication()

        Deprecated.

        Use {@link ApplicationService.getDefaultApplication()}

        Gets the preferred default application for the system

        Returns:

        the default application chosen by the Administrator

    -   ### getMyHomePage

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMyHomePage()

        Gets the home page for the current user if he has set one, otherwise returns the global home page.

        Returns:

        the absolute url of the home page for the user (i.e. /portal/home.do).

    -   ### setGlobalHomePage

        void setGlobalHomePage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets home page for all users (default). Only can be called by system administrators.

        Parameters:

        `url` - the absolute url of the default home page for all users (i.e. /portal/home.do).

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Thrown when the user does not have privileges to create a `Group`.

    -   ### setHomePageForUser

        void setHomePageForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### setMyHomePage

        void setMyHomePage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url) throws [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Sets home page for current user, overriding the system default for this user.

        Parameters:

        `url` - the absolute url of the page

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")` - if there is any error

    -   ### getGlobalHomePage

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGlobalHomePage()

        Gets the global home page for the application.

        Returns:

        the absolute url of the default home page for all users (i.e. /portal/home.do).

    -   ### addGroupToFavorites

        void addGroupToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Associates `Group` as one of the current `User`'s favorites

        Parameters:

        `groupId_` - the id of the group that is to be added to user's favorites

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id or group name is passed into a service method.

    -   ### removeGroupFromFavorites

        void removeGroupFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        removes this group (groupId\_) as one of the current user's favorites

        Parameters:

        `groupId_` - the id of the group that is to be removed from user's favorites

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id or group name is passed into a service method.

    -   ### getFavoriteGroups

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFavoriteGroups(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Gets a ResultPage containing a list of groups for the current user's Favorite Groups. Replaces getMyGroups.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing the `Group` objects.

    -   ### addAdminUsers

        void addAdminUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds the users by given username's as administrators of group given by `groupId_`

        Parameters:

        `usernames_` - username's of the users to be added as administrators.

        `groupId_` - the group to add the administrator to.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed for the `groupId_`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown when the user does not have privileges to add the group(s) as adminsitrators

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeAdminUsers

        void removeAdminUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes the users specified by `usernames_` as administrators of group

        Parameters:

        `usernames_` - username's of the users to be removed.

        `groupId_` - the target group whose administrators are updated

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed for the `groupId_`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown when the user does not have privileges to remove the user(s)

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### addAdminGroups

        void addAdminGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] adminGroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds the given groups as administrator groups for group given by `groupId_`

        Parameters:

        `adminGroupIds_` - Ids of the group to be added as administrators.

        `groupId_` - the group to add the administrator to.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed for either the groupId\_ or the groups to be added as administrator

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown when the user does not have privileges to add the group(s) as adminsitrators

    -   ### removeAdminGroups

        void removeAdminGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] adminGroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes the groups specified by adminGroupIds\_ as administrators of group

        Parameters:

        `adminGroupIds_` - Ids of the group to be removed.

        `groupId_` - the target group whose administrators are updated

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed for either the groupId\_ or the groups to be removed as administrators

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown when the user does not have privileges to remove the group(s)

    -   ### getAdminGroupsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAdminGroupsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the groups that are administrator groups for the given `groupId_`

        Parameters:

        `groupId_` - Id of the group whose administrator groups are requested

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        ResultPage containing a list of `Group` objects that are administrator groups.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed for the `groupId_`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever the user does not have view privileges to group specified by `groupId_`

    -   ### getAdminUsersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAdminUsersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the users that are administrator users for the given `groupId_`

        Parameters:

        `groupId_` - Id of the group whose administrator groups are requested

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        ResultPage containing a list of `User` objects that are administrator users.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed for the `groupId_`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever the user does not have view privileges to group specified by `groupId_`

    -   ### getAdminUserCount

        int getAdminUserCount([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a count of distinct users that are administrators of the specified group.

        Parameters:

        `groupId_` - the group whose user members are to be counted

        Returns:

        the count of member users. Note: If the user can see the group but cannot view members of group, the returned member count will be 0.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges

    -   ### getAdminGroupCount

        int getAdminGroupCount([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the number of distinct groups {that are administrators of the specified group.

        Parameters:

        `groupId_` - the group to count group members of.

        Returns:

        the count. Note: If the current user can see the group but cannot view members of group, the returned member count will be 0.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - This exception is thrown whenever an invalid group id is passed into a service method.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges

    -   ### isMemberOfGroups

        boolean\[\] isMemberOfGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines if the current user is a member of each of the specified groups.

        Parameters:

        `groupId_` - array of group ids

        Returns:

        a boolean array of same length as the input parameter. For each group in the list, if the current user is a member of the group a true is returned. If the user is not a member, cannot see the group, the passed group is null or it does not exist, false is returned. If groupId\_ is null or empty, an empty boolean array is returned.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### isMemberOfGroups

        boolean\[\] isMemberOfGroups([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] groupUuid\_)

        Determines if the current user is a member of each of the specified groups.

        Parameters:

        `groupUuid_` - array of group UUIDs.

        Returns:

        a boolean array of same length as the input parameter. For each group in the list, if the current user is a member of the group a true is returned. If the user is not a member, cannot see the group, the passed group is null or it does not exist, false is returned. If groupId\_ is null or empty, an empty boolean array is returned.

    -   ### isUserMemberOfGroups

        boolean\[\] isUserMemberOfGroups([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Determines if the specified user is a member of each of the specified groups.

        Parameters:

        `username_` - username

        `groupId_` - array of group ids

        Returns:

        a boolean array of same length as the input parameter. For each group in the list, if the current user is a member of the group a true is returned. If the user is not a member, cannot see the group, or the group does not exist, false is returned. If username\_ is null or empty, or groupId\_ is null or empty, an empty boolean array is returned.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If the passed username is either null or empty.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the passed username is non-null and invalid.

    -   ### isUserMemberOfGroups

        boolean\[\] isUserMemberOfGroups([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] groupUuid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines if the specified user is a member of each of the specified groups.

        Parameters:

        `username_` - username

        `groupUuid_` - array of group uuids

        Returns:

        a boolean array of same length as the input parameter. For each group in the list, if the current user is a member of the group a true is returned. If the user is not a member, cannot see the group, or the group does not exist, false is returned. If username\_ is invalid, or groupId\_ is null or empty, an empty boolean array is returned.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If the passed username is either null or empty.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the passed username is non-null and invalid.

    -   ### isUserMemberOfGroups

        boolean\[\] isUserMemberOfGroups([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines if the specified user is a member of each of the specified groups.

        Parameters:

        `usernames` - usernames

        `groupId_` - array of group ids

        Returns:

        a boolean array of same length as groupId\_. This call presumes that all usernames are potential usernames for the same user. For each group in the list, if the specified user is a member of the group a true is returned. If the user is not a member, cannot see the group, or the group does not exist, false is returned. If all usernames are null, or groupId\_ is null or empty, an empty boolean array is returned. Multiple passed usernames should not be valid (use areUsersMembersOfGroups to check multiple users), but if so, results for the first will be returned.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If all passed usernames are null or empty.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If all passed usernames are invalid.

    -   ### isUserMemberOfGroups

        boolean\[\] isUserMemberOfGroups([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] groupUuid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines if the specified user is a member of each of the specified groups.

        Parameters:

        `usernames` - usernames

        `groupUuid_` - array of group uuids

        Returns:

        a boolean array of same length as groupId\_. This call presumes that all usernames are potential usernames for the same user. For each group in the list, if the specified user is a member of the group a true is returned. If the user is not a member, cannot see the group, or the group does not exist, false is returned. If all usernames are null, or groupId\_ is null or empty, an empty boolean array is returned. Multiple passed usernames should not be valid (use areUsersMembersOfGroups to check multiple users), but if so, results for the first will be returned.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If all passed usernames are null or empty.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If all passed usernames are invalid.

    -   ### areUsersMembersOfGroups

        boolean\[\]\[\] areUsersMembersOfGroups([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines if the specified user is a member of each of the specified groups.

        Parameters:

        `usernames` -

        `groupIds` - array of group ids

        Returns:

        a 2D boolean array of same length as the input parameter usernames. For each user in the list, for each group in the list, if the user is a member of the group a true is returned. If the user is not a member, cannot see the group, or the group does not exist, false is returned.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If all passed usernames are null or empty.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If all passed usernames are invalid.

    -   ### areUsersMembersOfGroups

        boolean\[\]\[\] areUsersMembersOfGroups([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] groupUuid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Determines if the specified user is a member of each of the specified groups.

        Parameters:

        `usernames` -

        `groupUuid_` - array of group uuids

        Returns:

        a 2D boolean array of same length as the input parameter usernames. For each user in the list, for each group in the list, if the user is a member of the group a true is returned. If the user is not a member, cannot see the group, or the group does not exist, false is returned.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If all passed usernames are null or empty.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If all passed usernames are invalid.

    -   ### getDirectMemberGroupIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDirectMemberGroupIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the group IDs of all the member groups added directly to a given group (excludes those who are members via rule or via membership in a member group)

        Parameters:

        `groupId` - id of the group for which to get member groups

        Returns:

        Long array of groupIds

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group ID is invalid

        `PrivilegeGroupException` - if the user does not have rights to view the group

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getDirectMemberUsernames

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDirectMemberUsernames([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the usernames of all the member users added directly to a given group (excludes those who are members via rule or via membership in a member group)

        Parameters:

        `groupId` - id of the group for which to get member users

        Returns:

        String array of usernames

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group ID is invalid

        `PrivilegeGroupException` - if the user does not have rights to view the group

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getDirectAdminGroupIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDirectAdminGroupIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the group IDs of all the administrator groups added directly to a given group (excludes those who are administrators via membership in an administrator group)

        Parameters:

        `groupId` - id of the group for which to get admin groups

        Returns:

        Long array of groupIds

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group ID is invalid

        `PrivilegeGroupException` - if the user does not have rights to view the group

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getDirectAdminUsernames

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDirectAdminUsernames([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the usernames of all the administrator users added directly to a given group (excludes those who are administrators via membership in an administrator group)

        Parameters:

        `groupId` - id of the group for which to get admin users

        Returns:

        String array of usernames

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group ID is invalid

        `PrivilegeGroupException` - if the user does not have rights to view the group

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults)

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are group, user.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        Returns:

        a JSON formatted string

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] allowList)

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are group, user.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        `allowList` - list of IDs that will be automatically added to returned results, filtered by query. Ignored if null or empty.

        Returns:

        a JSON formatted string

    -   ### resolveEmailAddress

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResolvedEmailAddresses](ResolvedEmailAddresses.html "class in com.appiancorp.suiteapi.personalization") resolveEmailAddress([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") emailRecipient\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`resolveEmailDestinations(LocalObject[], LocalObject[], LocalObject[])`](#resolveEmailDestinations\(com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D\))

        Resolves an email recipient into an email address. Only LocalObjects of types USER, GROUP, and EMAIL\_ADDRESS are valid inputs; any other inputs will result in an IllegalArgumentException. All LocalObject inputs must be valid: they all must contain a non-null type and either a non-null id or stringId, depending on the type.

        Parameters:

        `emailRecipient_` - the LocalObject representing an email recipient for which to retrieve the email address information.

        Returns:

        the resolved email addresses

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the recipient type is GROUP and the id is not valid

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the recipient type is USER and the id is not valid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user doesn't have rights to see the address

    -   ### resolveEmailAddresses

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResolvedEmailAddresses](ResolvedEmailAddresses.html "class in com.appiancorp.suiteapi.personalization") resolveEmailAddresses([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] emailRecipients\_)

        Deprecated.

        Use [`resolveEmailDestinations(LocalObject[], LocalObject[], LocalObject[])`](#resolveEmailDestinations\(com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D,com.appiancorp.suiteapi.common.LocalObject%5B%5D\))

        Resolves email recipients into email addresses. Only LocalObjects of types USER, GROUP, and EMAIL\_ADDRESS are valid inputs; any other inputs will result in an IllegalArgumentException. All LocalObject inputs must be valid: they all must contain a non-null type and either a non-null id or stringId, depending on the type.

        Parameters:

        `emailRecipients_` - the LocalObject\[\] representing email recipients for which to retrieve the email address information.

        Returns:

        resolved email addresses and information on recipients that failed to resolve

    -   ### resolveEmailDestinations

        [ResolvedEmailAddresses](ResolvedEmailAddresses.html "class in com.appiancorp.suiteapi.personalization")\[\] resolveEmailDestinations([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] to\_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] cc\_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] bcc\_)

        Resolves three sets of email recipients, which form the email destination, into email addresses. Only LocalObjects of types USER, GROUP, and EMAIL\_ADDRESS are valid inputs; any other inputs will result in an IllegalArgumentException. All LocalObject inputs must be valid: they all must contain a non-null type and either a non-null id or stringId, depending on the type.

        Parameters:

        `to_` - the LocalObject\[\] representing email recipients for the "to" field

        `cc_` - the LocalObject\[\] representing email recipients for the "cc" field

        `bcc_` - the LocalObject\[\] representing email recipients for the "bcc" field

        Returns:

        the resolved email addresses

        See Also:

        -   [`resolveEmailAddresses(com.appiancorp.suiteapi.common.LocalObject[])`](#resolveEmailAddresses\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))

    -   ### changeGroupTypeOfGroup

        void changeGroupTypeOfGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newGroupTypeId) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Changes the GroupType of a Group. NOTE: values of dynamic attributes for group will be lost -- group will have default values for dynamic attributes of new groupType.

        Parameters:

        `groupId` - id of group to change grouptype of

        `newGroupTypeId` - newGroupTypeId id of groupType to change group to

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if user is not a SystemAdministrator-type user

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if groupId is invalid

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if newGroupTypeId is invalid

    -   ### changeGroupTypesOfGroups

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] changeGroupTypesOfGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] newGroupTypeIds) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Changes the GroupTypes of Groups. NOTE: groupIds should have same length as newGroupTypeIds NOTE: values of dynamic attributes for group will be lost -- groups will have default values for dynamic attributes of new groupTypes

        Parameters:

        `groupIds` - ids of groups to change grouptypes of

        `newGroupTypeIds` - ids of groupTypes to change groups to

        Returns:

        `Integer` array containing success or error codes. This is one of the GROUP\_TYPE\_CHANGE\_XXX Constants

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if groupIds not unique

    -   ### validateTypedValues

        boolean validateTypedValues([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\[\] typedValues) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Validates given TypedValues. This method is free to throw an exception or to return false if any TypedValue passed is invalid for this engine. This engine supports: AppianType.GROUP AppianType.USERNAME AppianType.USER\_OR\_GROUP AppianType.EMAIL\_RECIPIENT

        Parameters:

        `typedValues` -

        Returns:

        true if valid, false if invalid

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`