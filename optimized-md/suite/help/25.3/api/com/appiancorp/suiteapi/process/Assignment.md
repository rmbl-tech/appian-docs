---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Assignment.html
original_path: api/com/appiancorp/suiteapi/process/Assignment.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Assignment

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.Assignment

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Assignment extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

Holds the configuration for the assignment of an attended node. An assignment can be to users, groups, roles, or rules. A role is someone associated with the process, such as the initiator. A rule is a function that runs to determine assignment, such as one that picks the person who costs the least or is least burdened from a database. Once the assignee pool has been configured (the _assignees_ field in this object), the assignment function must run to choose a number of users from the pool. The task is ultimately assigned to the users chosen by the assignment function.

Multiple instances of a node can run in a process because of Spawning, Recurrence or Loops in the process model. In these cases, the process engine provides separate assignment functions which can be used to either distribute the tasks across the users in the assignment pool or assign the next instance of the tasks to the user who completed previous instances of the task. It should be noted that assignment can be distributed only when the node is set to spawn and task can be assigned to previous assignee only when node is not set to spawn.

See Also:

-   [`ActivityClass`](ActivityClass.html "class in com.appiancorp.suiteapi.process")
-   [`Assignment.Assignee`](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Assignment)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")`

    A user, group, role, or function that is assigned to a task.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[ACCEPT_AUTO_ALWAYS](#ACCEPT_AUTO_ALWAYS)`

    Constant indicating that acceptance always happens automatically.

    `static final int`

    `[ACCEPT_AUTO_IF_ONLY_ASSIGNEE](#ACCEPT_AUTO_IF_ONLY_ASSIGNEE)`

    Constant indicating that acceptance happens automatically only if the size of the assignment pool is 1.

    `static final int`

    `[ACCEPT_MANUAL](#ACCEPT_MANUAL)`

    Constant indicating that acceptance must be performed manually by the runtime user.

    `static final int`

    `[ASSIGNEE_TYPE_ACTOR](#ASSIGNEE_TYPE_ACTOR)`

    Constant indicating that an assignment is to an actor

    `static final int`

    `[ASSIGNEE_TYPE_EXPRESSIONS](#ASSIGNEE_TYPE_EXPRESSIONS)`

    Constant indicating that an assignment is to an expression

    `static final int`

    `[ASSIGNEE_TYPE_FUNCTION](#ASSIGNEE_TYPE_FUNCTION)`

    Deprecated.

    This assignment type is not used.

    `static final int`

    `[ASSIGNEE_TYPE_GROUPS](#ASSIGNEE_TYPE_GROUPS)`

    Constant indicating that an assignment is to a group.

    `static final int`

    `[ASSIGNEE_TYPE_ROLE](#ASSIGNEE_TYPE_ROLE)`

    Constant indicating that an assignment is to a role.

    `static final int`

    `[ASSIGNEE_TYPE_USERS](#ASSIGNEE_TYPE_USERS)`

    Constant indicating that an assignment is to a user.

    `static final int`

    `[MULTIPLE_INSTANCE_DISTRIBUTE_ASSIGNEE](#MULTIPLE_INSTANCE_DISTRIBUTE_ASSIGNEE)`

    Constant indicating that the spawned instances of the tasks should be distributed across the users in the assignment pool.

    `static final int`

    `[MULTIPLE_INSTANCE_PREVIOUS_ASSIGNEE](#MULTIPLE_INSTANCE_PREVIOUS_ASSIGNEE)`

    Constant indicating that the new instance of the task should be assigned to the previous assignee of this task.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[PRIVILEGE_REASSIGN_TO_ANY](#PRIVILEGE_REASSIGN_TO_ANY)`

    Allowed to reject the task and to reassign the task to anyone.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[PRIVILEGE_REASSIGN_WITHIN_POOL](#PRIVILEGE_REASSIGN_WITHIN_POOL)`

    Allowed to reject the task and to reassign the task within the assignment pool.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[PRIVILEGE_REJECT_ONLY](#PRIVILEGE_REJECT_ONLY)`

    Allowed only to reject the task.

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Assignment](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Adds the primary keys of each assignees that is a user or group to the appian type cache.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getAcceptMode](#getAcceptMode\(\))()`

    `[Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")[]`

    `[getAssignees](#getAssignees\(\))()`

    Returns the assignees for this Assignment

    `[ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process")`

    `[getAssignmentFunction](#getAssignmentFunction\(\))()`

    Deprecated.

    Use `getAssignees` instead; see [`setAssignmentFunction(com.appiancorp.suiteapi.process.ActivityClass)`](#setAssignmentFunction\(com.appiancorp.suiteapi.process.ActivityClass\)) for an alternative method of setting the assignment.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getAssignmentPosition](#getAssignmentPosition\(\))()`

    Deprecated.

    The value retrieved by this method is not used.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getMultipleInstanceAssigneeType](#getMultipleInstanceAssigneeType\(\))()`

    Returns the type of the Assignee function to use when multiple instances of are nodes executed in a process.

    `void`

    `[setAcceptMode](#setAcceptMode\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") acceptMode_)`

    sets the acceptmode

    `void`

    `[setAssignees](#setAssignees\(com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\))([Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")[] assignees_)`

    sets the assignees for this Assignment

    `void`

    `[setAssignmentFunction](#setAssignmentFunction\(com.appiancorp.suiteapi.process.ActivityClass\))([ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") assignmentFunction_)`

    Deprecated.

    Instead, set the assignment by calling [`setAssignees(com.appiancorp.suiteapi.process.Assignment.Assignee[])`](#setAssignees\(com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\)) with an `Assignee` of type `ASSIGNEE_TYPE_EXPRESSIONS` with the `value` set to an expression.

    `void`

    `[setAssignmentPosition](#setAssignmentPosition\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") assignmentPosition_)`

    Deprecated.

    The value set by this method is not used.

    `void`

    `[setMultipleInstanceAssigneeType](#setMultipleInstanceAssigneeType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") multipleInstanceAssigneeType_)`

    Sets the type of the Assignee function when multiple instances of the nodes are executed in a process

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Generates an XML representation of this object (including all child objects).

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object to the given buffer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### ASSIGNEE\_TYPE\_EXPRESSIONS

        public static final int ASSIGNEE\_TYPE\_EXPRESSIONS

        Constant indicating that an assignment is to an expression

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.ASSIGNEE_TYPE_EXPRESSIONS)

    -   ### ASSIGNEE\_TYPE\_USERS

        public static final int ASSIGNEE\_TYPE\_USERS

        Constant indicating that an assignment is to a user.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.ASSIGNEE_TYPE_USERS)

    -   ### ASSIGNEE\_TYPE\_GROUPS

        public static final int ASSIGNEE\_TYPE\_GROUPS

        Constant indicating that an assignment is to a group.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.ASSIGNEE_TYPE_GROUPS)

    -   ### ASSIGNEE\_TYPE\_ROLE

        public static final int ASSIGNEE\_TYPE\_ROLE

        Constant indicating that an assignment is to a role.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.ASSIGNEE_TYPE_ROLE)

    -   ### ASSIGNEE\_TYPE\_FUNCTION

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final int ASSIGNEE\_TYPE\_FUNCTION

        Deprecated.

        This assignment type is not used.

        Constant indicating that an assignment is chosen by a function.

        See Also:

        -   [`setAssignmentFunction(com.appiancorp.suiteapi.process.ActivityClass)`](#setAssignmentFunction\(com.appiancorp.suiteapi.process.ActivityClass\))
        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.ASSIGNEE_TYPE_FUNCTION)

    -   ### ASSIGNEE\_TYPE\_ACTOR

        public static final int ASSIGNEE\_TYPE\_ACTOR

        Constant indicating that an assignment is to an actor

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.ASSIGNEE_TYPE_ACTOR)

    -   ### PRIVILEGE\_REJECT\_ONLY

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") PRIVILEGE\_REJECT\_ONLY

        Allowed only to reject the task.

    -   ### PRIVILEGE\_REASSIGN\_WITHIN\_POOL

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") PRIVILEGE\_REASSIGN\_WITHIN\_POOL

        Allowed to reject the task and to reassign the task within the assignment pool.

    -   ### PRIVILEGE\_REASSIGN\_TO\_ANY

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") PRIVILEGE\_REASSIGN\_TO\_ANY

        Allowed to reject the task and to reassign the task to anyone.

    -   ### ACCEPT\_AUTO\_ALWAYS

        public static final int ACCEPT\_AUTO\_ALWAYS

        Constant indicating that acceptance always happens automatically.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.ACCEPT_AUTO_ALWAYS)

    -   ### ACCEPT\_AUTO\_IF\_ONLY\_ASSIGNEE

        public static final int ACCEPT\_AUTO\_IF\_ONLY\_ASSIGNEE

        Constant indicating that acceptance happens automatically only if the size of the assignment pool is 1.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.ACCEPT_AUTO_IF_ONLY_ASSIGNEE)

    -   ### ACCEPT\_MANUAL

        public static final int ACCEPT\_MANUAL

        Constant indicating that acceptance must be performed manually by the runtime user.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.ACCEPT_MANUAL)

    -   ### MULTIPLE\_INSTANCE\_PREVIOUS\_ASSIGNEE

        public static final int MULTIPLE\_INSTANCE\_PREVIOUS\_ASSIGNEE

        Constant indicating that the new instance of the task should be assigned to the previous assignee of this task. This option will be ignored when the node is set to spawn multiple instances.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.MULTIPLE_INSTANCE_PREVIOUS_ASSIGNEE)

    -   ### MULTIPLE\_INSTANCE\_DISTRIBUTE\_ASSIGNEE

        public static final int MULTIPLE\_INSTANCE\_DISTRIBUTE\_ASSIGNEE

        Constant indicating that the spawned instances of the tasks should be distributed across the users in the assignment pool. When the node is not set to spawn multiple instances, then this assignment option is ignored.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Assignment.MULTIPLE_INSTANCE_DISTRIBUTE_ASSIGNEE)

-   ## Constructor Details

    -   ### Assignment

        public Assignment()

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### getAssignees

        public [Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\] getAssignees()

        Returns the assignees for this Assignment

        Returns:

        assignees for the Assignment

    -   ### setAssignees

        public void setAssignees([Assignment.Assignee](Assignment.Assignee.html "class in com.appiancorp.suiteapi.process")\[\] assignees\_)

        sets the assignees for this Assignment

        Parameters:

        `assignees_` - the assignees to set for this Assignment

    -   ### getAssignmentFunction

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") getAssignmentFunction()

        Deprecated.

        Use `getAssignees` instead; see [`setAssignmentFunction(com.appiancorp.suiteapi.process.ActivityClass)`](#setAssignmentFunction\(com.appiancorp.suiteapi.process.ActivityClass\)) for an alternative method of setting the assignment.

        Returns:

        the `ActivityClass` which is the AssignmentFunction for this assignment

    -   ### setAssignmentFunction

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setAssignmentFunction([ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") assignmentFunction\_)

        Deprecated.

        Instead, set the assignment by calling [`setAssignees(com.appiancorp.suiteapi.process.Assignment.Assignee[])`](#setAssignees\(com.appiancorp.suiteapi.process.Assignment.Assignee%5B%5D\)) with an `Assignee` of type `ASSIGNEE_TYPE_EXPRESSIONS` with the `value` set to an expression.

        sets the AcitvityClass which is the assignment function for this assignment

        Parameters:

        `assignmentFunction_` - the assignment activity class for this assignment

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(\))`

        Generates an XML representation of this object (including all child objects). A typical implementation is to create a new `StringBuilder` and call `toXML( StringBuilder )` on it.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        converts this assignment into xml and returns it as a string

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Appends an XML representation of this object to the given buffer.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.

    -   ### getAssignmentPosition

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getAssignmentPosition()

        Deprecated.

        The value retrieved by this method is not used.

        Returns:

        the index into the list of preactivites at which assignment is performed.

    -   ### setAssignmentPosition

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setAssignmentPosition([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") assignmentPosition\_)

        Deprecated.

        The value set by this method is not used.

        Determines when assignment should run in the list of preactivities.

        Parameters:

        `assignmentPosition_` - zero-based index into the list of preactivities, determining when assignement should be performed.

    -   ### getAcceptMode

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getAcceptMode()

        Returns:

        accept mode, as one of the ACCEPT\_XXX constants.

    -   ### setAcceptMode

        public void setAcceptMode([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") acceptMode\_)

        sets the acceptmode

        Parameters:

        `acceptMode_` - the acceptMode to set, which should be one of the ACCEPT\_XXX constants.

    -   ### getMultipleInstanceAssigneeType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getMultipleInstanceAssigneeType()

        Returns the type of the Assignee function to use when multiple instances of are nodes executed in a process.

        See Also:

        -   [`MULTIPLE_INSTANCE_PREVIOUS_ASSIGNEE`](#MULTIPLE_INSTANCE_PREVIOUS_ASSIGNEE)
        -   [`MULTIPLE_INSTANCE_DISTRIBUTE_ASSIGNEE`](#MULTIPLE_INSTANCE_DISTRIBUTE_ASSIGNEE)

    -   ### setMultipleInstanceAssigneeType

        public void setMultipleInstanceAssigneeType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") multipleInstanceAssigneeType\_)

        Sets the type of the Assignee function when multiple instances of the nodes are executed in a process

        Parameters:

        `multipleInstanceAssigneeType_` - Assignment.MULTIPLE\_INSTANCE\_PREVIOUS\_ASSIGNEE or Assignment.MULTIPLE\_INSTANCE\_DISTRIBUTE\_ASSIGNEE

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Adds the primary keys of each assignees that is a user or group to the appian type cache.

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - cache of Appian-typed objects.