---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/Credentials.html
original_path: api/com/appiancorp/suiteapi/common/Credentials.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class Credentials

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.Credentials

All Implemented Interfaces:

`com.appian.komodo.api.EngineCredentials`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Credentials extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appian.komodo.api.EngineCredentials, [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean that represents a User's credentials

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.Credentials)

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `[Credentials](#%3Cinit%3E\(\))()`

    Credentials Empty constructor.

    `[Credentials](#%3Cinit%3E\(com.appiancorp.ag.ImmutableCredentials,java.lang.String,boolean\))(com.appiancorp.ag.ImmutableCredentials copySource, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") tenant, boolean includeGroupMembership)`

    Credentials copy constructor with tenant modification.

    `protected`

    `[Credentials](#%3Cinit%3E\(com.google.common.collect.ImmutableSet,com.google.common.collect.ImmutableSet,com.google.common.collect.ImmutableSet,int,java.lang.String,java.lang.String,java.lang.String,java.lang.Integer\))(com.google.common.collect.ImmutableSet<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> adminGroups, com.google.common.collect.ImmutableSet<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> memberGroups, com.google.common.collect.ImmutableSet<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> memberGroupUuids, int userType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") tenant, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userUuid, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") userGroupsLocalId)`

    Constructs the bean that represents a User's credentials.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")>`

    `[getAdminGroups](#getAdminGroups\(\))()`

    Group IDs for those groups where the user is an administrator.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getIdentity](#getIdentity\(\))()`

    Gets the username of the user to whom these credentials belong.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")>`

    `[getMemberGroups](#getMemberGroups\(\))()`

    Group IDs for those groups where the user is a member.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getMemberGroupUuids](#getMemberGroupUuids\(\))()`

    Returns the UUIDs of the groups where the user is a member.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getPayload](#getPayload\(\))()`

    Returns the credentials in the format that is expected by the backend when they are passed along with an API call.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTenant](#getTenant\(\))()`

    Tenant's identifier

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getUserGroupsLocalId](#getUserGroupsLocalId\(\))()`

    `int`

    `[getUserType](#getUserType\(\))()`

    User's type

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUserUuid](#getUserUuid\(\))()`

    `void`

    `[setAdminGroups](#setAdminGroups\(java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> adminGroups_)`

    Sets the Group IDs for those groups where the user is an administrator.

    `void`

    `[setIdentity](#setIdentity\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Sets the username of the user to whom these credentials belong.

    `void`

    `[setMemberGroups](#setMemberGroups\(java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> memberGroups_)`

    Sets the Group IDs for those groups where the user is a member.

    `void`

    `[setMemberGroupUuids](#setMemberGroupUuids\(java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> memberGroupUuids)`

    Sets the UUIDs of the groups where the user is a member.

    `void`

    `[setTenant](#setTenant\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") tenant_)`

    Sets the user's tenant identifier

    `void`

    `[setUserGroupsLocalId](#setUserGroupsLocalId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") userGroupsLocalId_)`

    `void`

    `[setUserType](#setUserType\(int\))(int userType_)`

    Sets the user's type

    `void`

    `[setUserUuid](#setUserUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userUuid_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Debug representation of Credentials.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Credentials

        public Credentials()

        Credentials Empty constructor.

    -   ### Credentials

        public Credentials(com.appiancorp.ag.ImmutableCredentials copySource, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") tenant, boolean includeGroupMembership)

        Credentials copy constructor with tenant modification.

        Parameters:

        `copySource` -

        `tenant` -

        `includeGroupMembership` - true for engines other than Process, which retains cached groups itself for background processing

    -   ### Credentials

        protected Credentials(com.google.common.collect.ImmutableSet<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> adminGroups, com.google.common.collect.ImmutableSet<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> memberGroups, com.google.common.collect.ImmutableSet<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> memberGroupUuids, int userType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") tenant, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userUuid, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") userGroupsLocalId)

        Constructs the bean that represents a User's credentials. The bean is created automatically by the system and should not be constructed by third-party developers in plug-ins. Expects ImmutableSets to be used in creating Credentials. To be used in subclasses that do not want to be able to modify fields of Credentials.

-   ## Method Details

    -   ### getAdminGroups

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> getAdminGroups()

        Group IDs for those groups where the user is an administrator.

        Returns:

        Set of group IDs for those where the user is an administrator.

    -   ### setAdminGroups

        public void setAdminGroups([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> adminGroups\_)

        Sets the Group IDs for those groups where the user is an administrator.

        Parameters:

        `adminGroups_` - Set with the group IDs for the groups where the user is an administrator.

    -   ### getMemberGroups

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> getMemberGroups()

        Group IDs for those groups where the user is a member.

        Returns:

        Set of group IDs for those where the user is a member.

    -   ### setMemberGroups

        public void setMemberGroups([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> memberGroups\_)

        Sets the Group IDs for those groups where the user is a member.

        Parameters:

        `memberGroups_` - Set with the group IDs for the groups where the user is a member.

    -   ### getMemberGroupUuids

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getMemberGroupUuids()

        Returns the UUIDs of the groups where the user is a member.

    -   ### setMemberGroupUuids

        public void setMemberGroupUuids([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> memberGroupUuids)

        Sets the UUIDs of the groups where the user is a member.

    -   ### getUserType

        public int getUserType()

        User's type

        Returns:

        The user's type.

    -   ### setUserType

        public void setUserType(int userType\_)

        Sets the user's type

        Parameters:

        `userType_` -

    -   ### setIdentity

        public void setIdentity([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_)

        Sets the username of the user to whom these credentials belong.

        Parameters:

        `username_` -

    -   ### getIdentity

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getIdentity()

        Gets the username of the user to whom these credentials belong.

        Specified by:

        `getIdentity` in interface `com.appian.komodo.api.EngineCredentials`

    -   ### getTenant

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTenant()

        Tenant's identifier

        Returns:

        The current tenant identifier

    -   ### setTenant

        public void setTenant([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") tenant\_)

        Sets the user's tenant identifier

        Parameters:

        `tenant_` - tenant identifier

    -   ### getPayload

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getPayload()

        Returns the credentials in the format that is expected by the backend when they are passed along with an API call. The format is an array with elements. The elements are: (0) Username (String) (1) Member groups (int\[\]) (2) Admin groups (int\[\]) (3) User type (Integer) (4) Tenant (String) (5) Current thread hashcode (Integer) (6) Designate as migration call (Integer) - always 0 here (7) User UUID (8) User Groups Local ID Note that the groups must be passed as int\[\], because the K engines do not support Long\[\] or Integer\[\]. The user type must be passed as Integer for the same reason.

        Specified by:

        `getPayload` in interface `com.appian.komodo.api.EngineCredentials`

    -   ### getUserUuid

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUserUuid()

    -   ### setUserUuid

        public void setUserUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userUuid\_)

    -   ### getUserGroupsLocalId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getUserGroupsLocalId()

    -   ### setUserGroupsLocalId

        public void setUserGroupsLocalId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") userGroupsLocalId\_)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Debug representation of Credentials.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        String