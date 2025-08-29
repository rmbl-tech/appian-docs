---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/HistoryRecord.html
original_path: api/com/appiancorp/suiteapi/process/HistoryRecord.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class HistoryRecord

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.HistoryRecord

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class HistoryRecord extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

An individual history record, representing an element of an audit trail in a process.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.HistoryRecord)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")`

    Information about a process model, including id, version, name and uuid.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[OBJECT_TYPE_PROCESS](#OBJECT_TYPE_PROCESS)`

    `static final int`

    `[OBJECT_TYPE_TASK](#OBJECT_TYPE_TASK)`

    `static final int`

    `[OBJECT_TYPE_VARIABLE](#OBJECT_TYPE_VARIABLE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATA_IDS](#SORT_BY_DATA_IDS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DIRECTION](#SORT_BY_DIRECTION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUPS](#SORT_BY_GROUPS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NEW_NAME](#SORT_BY_NEW_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NEW_PRIORITY](#SORT_BY_NEW_PRIORITY)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NEW_TIMESTAMP](#SORT_BY_NEW_TIMESTAMP)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NEW_VALUE](#SORT_BY_NEW_VALUE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_OBJECT_ID](#SORT_BY_OBJECT_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_OBJECT_NAME](#SORT_BY_OBJECT_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_OBJECT_TYPE](#SORT_BY_OBJECT_TYPE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SAVED_AS_VERSION](#SORT_BY_SAVED_AS_VERSION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SOURCE_MODEL_INFO](#SORT_BY_SOURCE_MODEL_INFO)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TARGET_MODEL_INFO](#SORT_BY_TARGET_MODEL_INFO)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TIMESTAMP](#SORT_BY_TIMESTAMP)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TYPE](#SORT_BY_TYPE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_USER](#SORT_BY_USER)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_USERS](#SORT_BY_USERS)`

    `static final int`

    `[TYPE_ADD_ATTACHMENT](#TYPE_ADD_ATTACHMENT)`

    `static final int`

    `[TYPE_ADD_NOTE](#TYPE_ADD_NOTE)`

    `static final int`

    `[TYPE_ADD_VARIABLE](#TYPE_ADD_VARIABLE)`

    `static final int`

    `[TYPE_ASSIGNED](#TYPE_ASSIGNED)`

    `static final int`

    `[TYPE_CANCEL](#TYPE_CANCEL)`

    `static final int`

    `[TYPE_CHANGE_PRIORITY](#TYPE_CHANGE_PRIORITY)`

    `static final int`

    `[TYPE_COMPLETE](#TYPE_COMPLETE)`

    `static final int`

    `[TYPE_EDIT_PROCESS](#TYPE_EDIT_PROCESS)`

    Represents an edit of a process from Edit Mode.

    `static final int`

    `[TYPE_ESCALATED](#TYPE_ESCALATED)`

    `static final int`

    `[TYPE_ESCALATION_NOTIFICATION](#TYPE_ESCALATION_NOTIFICATION)`

    `static final int`

    `[TYPE_EVENT_ABORT](#TYPE_EVENT_ABORT)`

    `static final int`

    `[TYPE_EVENT_ACTIVATE](#TYPE_EVENT_ACTIVATE)`

    `static final int`

    `[TYPE_EVENT_CANCEL](#TYPE_EVENT_CANCEL)`

    `static final int`

    `[TYPE_EVENT_FIRE](#TYPE_EVENT_FIRE)`

    `static final int`

    `[TYPE_MODIFY_EXTERNAL_VARIABLE](#TYPE_MODIFY_EXTERNAL_VARIABLE)`

    `static final int`

    `[TYPE_MODIFY_NAME](#TYPE_MODIFY_NAME)`

    `static final int`

    `[TYPE_MODIFY_VARIABLE](#TYPE_MODIFY_VARIABLE)`

    `static final int`

    `[TYPE_PAUSE](#TYPE_PAUSE)`

    `static final int`

    `[TYPE_REASSIGNED](#TYPE_REASSIGNED)`

    `static final int`

    `[TYPE_REMOVE_ATTACHMENT](#TYPE_REMOVE_ATTACHMENT)`

    `static final int`

    `[TYPE_REMOVE_NOTE](#TYPE_REMOVE_NOTE)`

    `static final int`

    `[TYPE_RESUME](#TYPE_RESUME)`

    `static final int`

    `[TYPE_SCHEDULE](#TYPE_SCHEDULE)`

    `static final int`

    `[TYPE_START](#TYPE_START)`

    `static final int`

    `[TYPE_UPGRADE_PROCESS](#TYPE_UPGRADE_PROCESS)`

    Represents an upgrade of a process to a new process model.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[HistoryRecord](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)`

    `static [Comparator](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Comparator.html "class or interface in java.util")`

    `[getComparator](#getComparator\(int\))(int sortKey)`

    Comparator for HistoryRecord

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getData](#getData\(\))()`

    Get the associated data for the history record; note, those history records that return multiple objects will return them as an Object\[\].

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDataIds](#getDataIds\(\))()`

    Set only by history types ADD\_ATTACHMENT, REMOVE\_ATTACHMENT, ADD\_NOTE, REMOVE\_NOTE

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDirection](#getDirection\(\))()`

    Set only by history type CHANGE\_PRIORITY

    `int`

    `[getEngineId](#getEngineId\(\))()`

    This is 0 for EXEC00, 1 for EXEC01, etc.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getGroups](#getGroups\(\))()`

    Set only by history types ESCALATION\_NOTIFICATION, REASSIGNED, ASSIGNED

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getNewName](#getNewName\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNewPriority](#getNewPriority\(\))()`

    Set only by history type CHANGE\_PRIORITY

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getNewTimestamp](#getNewTimestamp\(\))()`

    Set only by history type SCHEDULE

    `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[getNewValue](#getNewValue\(\))()`

    Set only by history type MODIFY\_VARIABLE.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getObjectId](#getObjectId\(\))()`

    Id of the object in the history record.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getObjectName](#getObjectName\(\))()`

    Name of the object in the history record.

    `int`

    `[getObjectType](#getObjectType\(\))()`

    Type of the object in the history record.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getSavedAsVersion](#getSavedAsVersion\(\))()`

    Gets the resulting process model version that the edited process was saved as.

    `[HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")`

    `[getSourceModel](#getSourceModel\(\))()`

    Gets a ProcessModelInfo object representing the source process model that was in use before the process upgrade.

    `[HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")`

    `[getTargetModel](#getTargetModel\(\))()`

    Gets a ProcessModelInfo object representing the target process model to which the process was upgraded.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimestamp](#getTimestamp\(\))()`

    Timestamp at which this modification occurred.

    `int`

    `[getType](#getType\(\))()`

    Type of this history record (e.g., START is 6, MODIFY\_VARIABLE is 17, etc.)

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUser](#getUser\(\))()`

    The user responsible for the history record.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getUsers](#getUsers\(\))()`

    Set only by history types ESCALATION\_NOTIFICATION, REASSIGNED, ASSIGNED

    `int`

    `[getWriteCounter](#getWriteCounter\(\))()`

    This advances by one every time a write to external (set, modify, or delete) occurs within an engine.

    `int`

    `[getWriteEpoch](#getWriteEpoch\(\))()`

    Whenever the writeCounter advances beyond Integer.MAX\_VALUE, it resets to 0, and the writeEpoch increases by one.

    `long`

    `[getWriteIndex](#getWriteIndex\(\))()`

    The writeIndex encapsulates both writeCounter and writeEpoch into a single value.

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setDataIds](#setDataIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] dataIds_)`

    `void`

    `[setDirection](#setDirection\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") direction_)`

    `void`

    `[setEngineId](#setEngineId\(int\))(int engineId_)`

    This is 0 for EXEC00, 1 for EXEC01, etc.

    `void`

    `[setGroups](#setGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_)`

    `void`

    `[setIndex](#setIndex\(int%5B%5D\))(int[] indices)`

    `void`

    `[setIndex](#setIndex\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] indices)`

    `void`

    `[setNewName](#setNewName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newName_)`

    Set only by history types ADD\_VARIABLE, MODIFY\_NAME

    `void`

    `[setNewPriority](#setNewPriority\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newPriority_)`

    `void`

    `[setNewTimestamp](#setNewTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") newTimestamp_)`

    `void`

    `[setNewValue](#setNewValue\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") newValue_)`

    `void`

    `[setObjectId](#setObjectId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") objectId_)`

    `void`

    `[setObjectName](#setObjectName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") objectName_)`

    `void`

    `[setObjectType](#setObjectType\(int\))(int objectType_)`

    `void`

    `[setSavedAsVersion](#setSavedAsVersion\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") savedAsVersion)`

    Sets the process model version that the edited process was saved as.

    `void`

    `[setSourceModel](#setSourceModel\(com.appiancorp.suiteapi.process.HistoryRecord.ProcessModelInfo\))([HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process") sourceModel)`

    Sets the ProcessModelInfo object representing the source process model that was in use before the process upgrade.

    `void`

    `[setTargetModel](#setTargetModel\(com.appiancorp.suiteapi.process.HistoryRecord.ProcessModelInfo\))([HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process") targetModel)`

    Sets the ProcessModelInfo object representing the target process model to which the process was upgraded.

    `void`

    `[setTimestamp](#setTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp_)`

    `void`

    `[setType](#setType\(int\))(int historyType_)`

    `void`

    `[setUser](#setUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") user_)`

    `void`

    `[setUsers](#setUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    `void`

    `[setWriteCounter](#setWriteCounter\(int\))(int writeCounter_)`

    `void`

    `[setWriteEpoch](#setWriteEpoch\(int\))(int writeEpoch_)`

    `void`

    `[setWriteIndex](#setWriteIndex\(long\))(long value)`

    The writeIndex encapsulates both writeCounter and writeEpoch into a single value.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Only intended to help debugging.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### TYPE\_CHANGE\_PRIORITY

        public static final int TYPE\_CHANGE\_PRIORITY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_CHANGE_PRIORITY)

    -   ### TYPE\_SCHEDULE

        public static final int TYPE\_SCHEDULE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_SCHEDULE)

    -   ### TYPE\_ASSIGNED

        public static final int TYPE\_ASSIGNED

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_ASSIGNED)

    -   ### TYPE\_REASSIGNED

        public static final int TYPE\_REASSIGNED

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_REASSIGNED)

    -   ### TYPE\_ESCALATED

        public static final int TYPE\_ESCALATED

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_ESCALATED)

    -   ### TYPE\_ESCALATION\_NOTIFICATION

        public static final int TYPE\_ESCALATION\_NOTIFICATION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_ESCALATION_NOTIFICATION)

    -   ### TYPE\_START

        public static final int TYPE\_START

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_START)

    -   ### TYPE\_CANCEL

        public static final int TYPE\_CANCEL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_CANCEL)

    -   ### TYPE\_PAUSE

        public static final int TYPE\_PAUSE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_PAUSE)

    -   ### TYPE\_RESUME

        public static final int TYPE\_RESUME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_RESUME)

    -   ### TYPE\_COMPLETE

        public static final int TYPE\_COMPLETE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_COMPLETE)

    -   ### TYPE\_ADD\_ATTACHMENT

        public static final int TYPE\_ADD\_ATTACHMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_ADD_ATTACHMENT)

    -   ### TYPE\_REMOVE\_ATTACHMENT

        public static final int TYPE\_REMOVE\_ATTACHMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_REMOVE_ATTACHMENT)

    -   ### TYPE\_ADD\_NOTE

        public static final int TYPE\_ADD\_NOTE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_ADD_NOTE)

    -   ### TYPE\_REMOVE\_NOTE

        public static final int TYPE\_REMOVE\_NOTE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_REMOVE_NOTE)

    -   ### TYPE\_MODIFY\_NAME

        public static final int TYPE\_MODIFY\_NAME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_MODIFY_NAME)

    -   ### TYPE\_MODIFY\_VARIABLE

        public static final int TYPE\_MODIFY\_VARIABLE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_MODIFY_VARIABLE)

    -   ### TYPE\_ADD\_VARIABLE

        public static final int TYPE\_ADD\_VARIABLE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_ADD_VARIABLE)

    -   ### TYPE\_EVENT\_ACTIVATE

        public static final int TYPE\_EVENT\_ACTIVATE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_EVENT_ACTIVATE)

    -   ### TYPE\_EVENT\_FIRE

        public static final int TYPE\_EVENT\_FIRE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_EVENT_FIRE)

    -   ### TYPE\_EVENT\_CANCEL

        public static final int TYPE\_EVENT\_CANCEL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_EVENT_CANCEL)

    -   ### TYPE\_EVENT\_ABORT

        public static final int TYPE\_EVENT\_ABORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_EVENT_ABORT)

    -   ### TYPE\_MODIFY\_EXTERNAL\_VARIABLE

        public static final int TYPE\_MODIFY\_EXTERNAL\_VARIABLE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_MODIFY_EXTERNAL_VARIABLE)

    -   ### TYPE\_EDIT\_PROCESS

        public static final int TYPE\_EDIT\_PROCESS

        Represents an edit of a process from Edit Mode.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_EDIT_PROCESS)

    -   ### TYPE\_UPGRADE\_PROCESS

        public static final int TYPE\_UPGRADE\_PROCESS

        Represents an upgrade of a process to a new process model.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.TYPE_UPGRADE_PROCESS)

    -   ### OBJECT\_TYPE\_PROCESS

        public static final int OBJECT\_TYPE\_PROCESS

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.OBJECT_TYPE_PROCESS)

    -   ### OBJECT\_TYPE\_TASK

        public static final int OBJECT\_TYPE\_TASK

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.OBJECT_TYPE_TASK)

    -   ### OBJECT\_TYPE\_VARIABLE

        public static final int OBJECT\_TYPE\_VARIABLE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.HistoryRecord.OBJECT_TYPE_VARIABLE)

    -   ### SORT\_BY\_USER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_USER

    -   ### SORT\_BY\_TIMESTAMP

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TIMESTAMP

    -   ### SORT\_BY\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TYPE

    -   ### SORT\_BY\_OBJECT\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_OBJECT\_TYPE

    -   ### SORT\_BY\_OBJECT\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_OBJECT\_ID

    -   ### SORT\_BY\_OBJECT\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_OBJECT\_NAME

    -   ### SORT\_BY\_NEW\_VALUE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NEW\_VALUE

    -   ### SORT\_BY\_NEW\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NEW\_NAME

    -   ### SORT\_BY\_DATA\_IDS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATA\_IDS

    -   ### SORT\_BY\_USERS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_USERS

    -   ### SORT\_BY\_GROUPS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUPS

    -   ### SORT\_BY\_NEW\_TIMESTAMP

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NEW\_TIMESTAMP

    -   ### SORT\_BY\_DIRECTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DIRECTION

    -   ### SORT\_BY\_NEW\_PRIORITY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NEW\_PRIORITY

    -   ### SORT\_BY\_SAVED\_AS\_VERSION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SAVED\_AS\_VERSION

    -   ### SORT\_BY\_SOURCE\_MODEL\_INFO

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SOURCE\_MODEL\_INFO

    -   ### SORT\_BY\_TARGET\_MODEL\_INFO

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TARGET\_MODEL\_INFO

-   ## Constructor Details

    -   ### HistoryRecord

        public HistoryRecord()

-   ## Method Details

    -   ### getData

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getData()

        Get the associated data for the history record; note, those history records that return multiple objects will return them as an Object\[\]. Null will be returned for those history types without associated data.

        Returns:

    -   ### getType

        public int getType()

        Type of this history record (e.g., START is 6, MODIFY\_VARIABLE is 17, etc.) See HistoryRecordConstants.

        Returns:

    -   ### setType

        public void setType(int historyType\_)

    -   ### getTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimestamp()

        Timestamp at which this modification occurred.

        Returns:

    -   ### setTimestamp

        public void setTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp\_)

    -   ### getObjectId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getObjectId()

        Id of the object in the history record.

        Returns:

    -   ### setObjectId

        public void setObjectId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") objectId\_)

    -   ### getObjectName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getObjectName()

        Name of the object in the history record.

        Returns:

    -   ### setObjectName

        public void setObjectName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") objectName\_)

    -   ### getObjectType

        public int getObjectType()

        Type of the object in the history record.

        Returns:

    -   ### setObjectType

        public void setObjectType(int objectType\_)

    -   ### getUser

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUser()

        The user responsible for the history record.

        Returns:

    -   ### setUser

        public void setUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") user\_)

    -   ### getNewValue

        public [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") getNewValue()

        Set only by history type MODIFY\_VARIABLE.

        Returns:

    -   ### setNewValue

        public void setNewValue([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") newValue\_)

    -   ### getDataIds

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDataIds()

        Set only by history types ADD\_ATTACHMENT, REMOVE\_ATTACHMENT, ADD\_NOTE, REMOVE\_NOTE

        Returns:

    -   ### setDataIds

        public void setDataIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] dataIds\_)

    -   ### getDirection

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDirection()

        Set only by history type CHANGE\_PRIORITY

        Returns:

    -   ### setDirection

        public void setDirection([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") direction\_)

    -   ### getGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getGroups()

        Set only by history types ESCALATION\_NOTIFICATION, REASSIGNED, ASSIGNED

        Returns:

    -   ### setGroups

        public void setGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_)

    -   ### getNewName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getNewName()

    -   ### setNewName

        public void setNewName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newName\_)

        Set only by history types ADD\_VARIABLE, MODIFY\_NAME

        Parameters:

        `newName_` -

    -   ### getNewPriority

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNewPriority()

        Set only by history type CHANGE\_PRIORITY

        Returns:

    -   ### setNewPriority

        public void setNewPriority([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newPriority\_)

    -   ### getNewTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getNewTimestamp()

        Set only by history type SCHEDULE

        Returns:

    -   ### setNewTimestamp

        public void setNewTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") newTimestamp\_)

    -   ### getUsers

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getUsers()

        Set only by history types ESCALATION\_NOTIFICATION, REASSIGNED, ASSIGNED

        Returns:

    -   ### setUsers

        public void setUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_)

    -   ### getSavedAsVersion

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getSavedAsVersion()

        Gets the resulting process model version that the edited process was saved as. Set only by EDIT\_PROCESS, if the edited process was saved as a new version.

        Returns:

        the version that the edited process was saved as

    -   ### setSavedAsVersion

        public void setSavedAsVersion([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") savedAsVersion)

        Sets the process model version that the edited process was saved as. Only relevant for the EDIT\_PROCESS history type.

        Parameters:

        `savedAsVersion` - the process model version that the edited process was saved as

    -   ### getSourceModel

        public [HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process") getSourceModel()

        Gets a ProcessModelInfo object representing the source process model that was in use before the process upgrade. Only set by the UPGRADE\_PROCESS history type.

        Returns:

        a ProcessModelInfo object representing the source process model

    -   ### setSourceModel

        public void setSourceModel([HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process") sourceModel)

        Sets the ProcessModelInfo object representing the source process model that was in use before the process upgrade. Only relevant for the UPGRADE\_PROCESS history type.

        Parameters:

        `sourceModel` - a ProcessModelInfo object representing the source process model

    -   ### getTargetModel

        public [HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process") getTargetModel()

        Gets a ProcessModelInfo object representing the target process model to which the process was upgraded. Only set by the UPGRADE\_PROCESS history type.

        Returns:

        a ProcessModelInfo object representing the target process model

    -   ### setTargetModel

        public void setTargetModel([HistoryRecord.ProcessModelInfo](HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process") targetModel)

        Sets the ProcessModelInfo object representing the target process model to which the process was upgraded. Only relevant for the UPGRADE\_PROCESS history type.

        Parameters:

        `targetModel` - a ProcessModelInfo object representing the target process model

    -   ### getWriteIndex

        public long getWriteIndex()

        The writeIndex encapsulates both writeCounter and writeEpoch into a single value. Aside from rolling back to previous revisions, the writeIndex always increases once per write within a given execution engine. No writeIndexes are shared (at least until the writeEpoch wraps). This should be combined with the engineId to form the basis of external storage process history keys.

        Returns:

    -   ### setWriteIndex

        public void setWriteIndex(long value)

        The writeIndex encapsulates both writeCounter and writeEpoch into a single value.

    -   ### getWriteCounter

        public int getWriteCounter()

        This advances by one every time a write to external (set, modify, or delete) occurs within an engine.

        Returns:

        the writeCounter

    -   ### setWriteCounter

        public void setWriteCounter(int writeCounter\_)

        Parameters:

        `writeCounter_` - the writeCounter to set

    -   ### getWriteEpoch

        public int getWriteEpoch()

        Whenever the writeCounter advances beyond Integer.MAX\_VALUE, it resets to 0, and the writeEpoch increases by one.

        Returns:

        the writeEpoch

    -   ### setWriteEpoch

        public void setWriteEpoch(int writeEpoch\_)

        Parameters:

        `writeEpoch_` - the writeEpoch to set

    -   ### getEngineId

        public int getEngineId()

        This is 0 for EXEC00, 1 for EXEC01, etc.

        Returns:

        the engineId

    -   ### setEngineId

        public void setEngineId(int engineId\_)

        This is 0 for EXEC00, 1 for EXEC01, etc.

        Parameters:

        `engineId_` - the engineId to set

    -   ### setIndex

        public void setIndex([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] indices)

    -   ### setIndex

        public void setIndex(int\[\] indices)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Only intended to help debugging. The format of this String is not guaranteed and may change.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getComparator

        public static [Comparator](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Comparator.html "class or interface in java.util") getComparator(int sortKey)

        Comparator for HistoryRecord

        Parameters:

        `sortKey` -

        Returns:

        Comparator based on given sortKey