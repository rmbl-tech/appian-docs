---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessExceptionType.html
original_path: api/com/appiancorp/suiteapi/process/ProcessExceptionType.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessExceptionType

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.ProcessExceptionType

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessExceptionType extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Metadata about a class of process exceptions (errors that occur while a process is executing).

See Also:

-   [`ProcessException`](ProcessException.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessExceptionType)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ATTACHED_TO_TYPE](#SORT_BY_ATTACHED_TO_TYPE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LOCAL_ID](#SORT_BY_LOCAL_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NOTE_ID](#SORT_BY_NOTE_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NOTIFY_PROCESS_ADMINS](#SORT_BY_NOTIFY_PROCESS_ADMINS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NOTIFY_PROCESS_INITIATOR](#SORT_BY_NOTIFY_PROCESS_INITIATOR)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NOTIFY_SYSTEM_ADMINS](#SORT_BY_NOTIFY_SYSTEM_ADMINS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NOTIFY_TASK_ACCEPTOR](#SORT_BY_NOTIFY_TASK_ACCEPTOR)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_RECOMMENDED_ACTION](#SORT_BY_RECOMMENDED_ACTION)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessExceptionType](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `int`

    `[getAttachedToType](#getAttachedToType\(\))()`

    Gets the type of object to which exceptions of this type are attached, which should be `TYPEBPMPROCESS`, `TYPEBPMTASK`, or `TYPEBPMNODE`.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Gets a description of this exception type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalId](#getLocalId\(\))()`

    Gets the primary key for this exception type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getNoteContent](#getNoteContent\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNoteId](#getNoteId\(\))()`

    Gets the id of the note that holds the message for this exception type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getRecommendedAction](#getRecommendedAction\(\))()`

    Gets the action that the system recommends the user take in response to exceptions of this type.

    `int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[isNotifyProcessAdministrators](#isNotifyProcessAdministrators\(\))()`

    Determines whether process administrators are notified when exceptions of this type occur.

    `boolean`

    `[isNotifyProcessInitiator](#isNotifyProcessInitiator\(\))()`

    Determines whether the process initiator is notified when exceptions of this type occur.

    `boolean`

    `[isNotifySystemAdministrators](#isNotifySystemAdministrators\(\))()`

    Determines whether the system administrators are notified when exceptions of this type occur.

    `boolean`

    `[isNotifyTaskAcceptor](#isNotifyTaskAcceptor\(\))()`

    Determines whether users who have accepted the task on which the error occurred are notified when exceptions of this type occur.

    `void`

    `[setAttachedToType](#setAttachedToType\(int\))(int attachedToType)`

    Sets the type of object to which exceptions of this type are attached, which should be `TYPEBPMPROCESS`, `TYPEBPMTASK`, or `TYPEBPMNODE`.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    Sets the description of this exception type.

    `void`

    `[setLocalId](#setLocalId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId)`

    Sets the primary key for this exception type.

    `void`

    `[setNoteContent](#setNoteContent\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") noteContent)`

    `void`

    `[setNoteId](#setNoteId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId)`

    Sets the id of the note that holds the message for this exception type.

    `void`

    `[setNotifyProcessAdministrators](#setNotifyProcessAdministrators\(boolean\))(boolean notifyProcessAdministrators)`

    Sets whether process administrators are notified when exceptions of this type occur.

    `void`

    `[setNotifyProcessInitiator](#setNotifyProcessInitiator\(boolean\))(boolean notifyProcessInitiator)`

    Sets whether the process initiator is notified when exceptions of this type occur.

    `void`

    `[setNotifySystemAdministrators](#setNotifySystemAdministrators\(boolean\))(boolean notifySystemAdministrators)`

    Sets whether the system administrators are notified when exceptions of this type occur.

    `void`

    `[setNotifyTaskAcceptor](#setNotifyTaskAcceptor\(boolean\))(boolean notifyTaskAcceptor)`

    Sets whether users who have accepted the task on which the error occurred are notified when exceptions of this type occur.

    `void`

    `[setRecommendedAction](#setRecommendedAction\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") recommendedAction)`

    Sets the action that the system recommends the user take in response to exceptions of this type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_LOCAL\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LOCAL\_ID

    -   ### SORT\_BY\_ATTACHED\_TO\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ATTACHED\_TO\_TYPE

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

    -   ### SORT\_BY\_RECOMMENDED\_ACTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_RECOMMENDED\_ACTION

    -   ### SORT\_BY\_NOTIFY\_PROCESS\_INITIATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NOTIFY\_PROCESS\_INITIATOR

    -   ### SORT\_BY\_NOTIFY\_PROCESS\_ADMINS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NOTIFY\_PROCESS\_ADMINS

    -   ### SORT\_BY\_NOTIFY\_SYSTEM\_ADMINS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NOTIFY\_SYSTEM\_ADMINS

    -   ### SORT\_BY\_NOTIFY\_TASK\_ACCEPTOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NOTIFY\_TASK\_ACCEPTOR

    -   ### SORT\_BY\_NOTE\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NOTE\_ID

-   ## Constructor Details

    -   ### ProcessExceptionType

        public ProcessExceptionType()

-   ## Method Details

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Gets a description of this exception type.

        Returns:

        a description of this exception type.

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)

        Sets the description of this exception type.

        Parameters:

        `description` - the description of the exception type.

    -   ### getRecommendedAction

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getRecommendedAction()

        Gets the action that the system recommends the user take in response to exceptions of this type.

        Returns:

        the recommended action.

    -   ### setRecommendedAction

        public void setRecommendedAction([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") recommendedAction)

        Sets the action that the system recommends the user take in response to exceptions of this type.

        Parameters:

        `recommendedAction` - the recommended action.

    -   ### getAttachedToType

        public int getAttachedToType()

        Gets the type of object to which exceptions of this type are attached, which should be `TYPEBPMPROCESS`, `TYPEBPMTASK`, or `TYPEBPMNODE`.

        Returns:

        the type of object to which this exception is attached.

        See Also:

        -   [`ObjectTypeMapping`](../common/ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

    -   ### setAttachedToType

        public void setAttachedToType(int attachedToType)

        Sets the type of object to which exceptions of this type are attached, which should be `TYPEBPMPROCESS`, `TYPEBPMTASK`, or `TYPEBPMNODE`.

        See Also:

        -   [`ObjectTypeMapping`](../common/ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

    -   ### getLocalId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalId()

        Gets the primary key for this exception type.

        Returns:

        the primary key for this exception type.

    -   ### setLocalId

        public void setLocalId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId)

        Sets the primary key for this exception type.

        Parameters:

        `localId` - the primary key for this exception type.

    -   ### getNoteId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNoteId()

        Gets the id of the note that holds the message for this exception type.

        Returns:

        the id of the note that holds the message for this exception type.

    -   ### setNoteId

        public void setNoteId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") noteId)

        Sets the id of the note that holds the message for this exception type.

        Parameters:

        `noteId` - the id of the note that holds the message for this exception type.

    -   ### isNotifyProcessAdministrators

        public boolean isNotifyProcessAdministrators()

        Determines whether process administrators are notified when exceptions of this type occur.

        Returns:

        `true` if the administrators are notified, `false` if they are not notified.

    -   ### setNotifyProcessAdministrators

        public void setNotifyProcessAdministrators(boolean notifyProcessAdministrators)

        Sets whether process administrators are notified when exceptions of this type occur.

        Parameters:

        `notifyProcessAdministrators` - `true` if the administrators are notified, `false` if they are not notified.

    -   ### isNotifyProcessInitiator

        public boolean isNotifyProcessInitiator()

        Determines whether the process initiator is notified when exceptions of this type occur.

        Returns:

        `true` if the initiator is notified, `false` if he or she is not notified.

    -   ### setNotifyProcessInitiator

        public void setNotifyProcessInitiator(boolean notifyProcessInitiator)

        Sets whether the process initiator is notified when exceptions of this type occur.

        Parameters:

        `notifyProcessInitiator` - `true` if the initiator is notified, `false` if he or she is not notified.

    -   ### isNotifySystemAdministrators

        public boolean isNotifySystemAdministrators()

        Determines whether the system administrators are notified when exceptions of this type occur.

        Returns:

        `true` if the administrators are notified, `false` if they are not notified.

    -   ### setNotifySystemAdministrators

        public void setNotifySystemAdministrators(boolean notifySystemAdministrators)

        Sets whether the system administrators are notified when exceptions of this type occur.

    -   ### isNotifyTaskAcceptor

        public boolean isNotifyTaskAcceptor()

        Determines whether users who have accepted the task on which the error occurred are notified when exceptions of this type occur.

        Returns:

        `true` if the acceptors are notified, `false` if they are not notified.

    -   ### setNotifyTaskAcceptor

        public void setNotifyTaskAcceptor(boolean notifyTaskAcceptor)

        Sets whether users who have accepted the task on which the error occurred are notified when exceptions of this type occur.

        Parameters:

        `notifyTaskAcceptor` - `true` if the acceptors are notified, `false` if they are not notified.

    -   ### getNoteContent

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getNoteContent()

    -   ### setNoteContent

        public void setNoteContent([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") noteContent)

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`