---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Assignment.Assignee.html
original_path: api/com/appiancorp/suiteapi/process/Assignment.Assignee.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Assignment.Assignee

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.Assignment.Assignee

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[Assignment](Assignment.html "class in com.appiancorp.suiteapi.process")

* * *

public static class Assignment.Assignee extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

A user, group, role, or function that is assigned to a task.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Assignment.Assignee)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Assignee](#%3Cinit%3E\(\))()`

    `[Assignee](#%3Cinit%3E\(java.lang.Long,java.lang.Object,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") privilege)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Adds the primary key of the assignee to the given cache.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayName](#getDisplayName\(\))()`

    Retrieves the displayname for the assignee, such as the group name for a group or username for user

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPrivilege](#getPrivilege\(\))()`

    Gets the reassignment privileges for this assignee.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Retrieves the type of this assignee, as one of the ASSIGNEE\_XXX constants.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getValue](#getValue\(\))()`

    `void`

    `[setDisplayName](#setDisplayName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName_)`

    Sets the displayname for the assignee, such as a group name for a group or username for user.

    `void`

    `[setPrivilege](#setPrivilege\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") privilege_)`

    Sets the reassignment privileges for this assignee.

    `void`

    `[setType](#setType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Sets the type of the assignee.

    `void`

    `[setValue](#setValue\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    Sets the value for this assignee.

    `void`

    `[toXML](#toXML\(java.lang.StringBuffer\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_)`

    Creates an XML representation of this assignee and appends it to the given StringBuffer.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Assignee

        public Assignee()

    -   ### Assignee

        public Assignee([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") privilege)

-   ## Method Details

    -   ### toXML

        public void toXML([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_)

        Creates an XML representation of this assignee and appends it to the given StringBuffer.

        Parameters:

        `buffer_` - a buffer of text

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Adds the primary key of the assignee to the given cache.

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - a cache of Appian-typed objects.

    -   ### getPrivilege

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPrivilege()

        Gets the reassignment privileges for this assignee. See [`setPrivilege(Long)`](#setPrivilege\(java.lang.Long\)).

    -   ### setPrivilege

        public void setPrivilege([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") privilege\_)

        Sets the reassignment privileges for this assignee. Must be one of the PRIVILEGE\_XXX constants on [`Assignment`](Assignment.html "class in com.appiancorp.suiteapi.process").

    -   ### getValue

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getValue()

        Returns:

        the value for this assignee, i.e. the username, groupId, etc.

    -   ### setValue

        public void setValue([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

        Sets the value for this assignee.

        Parameters:

        `value_` - the value to set for the assignee

    -   ### getType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

        Retrieves the type of this assignee, as one of the ASSIGNEE\_XXX constants.

        Returns:

        one of the ASSIGNEE\_XXX constants indicating the type of the assignee

    -   ### setType

        public void setType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Sets the type of the assignee.

        Parameters:

        `type_` - the type to set for the assignee, which should be one of the ASSIGNEE\_XXX constants.

    -   ### getDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayName()

        Retrieves the displayname for the assignee, such as the group name for a group or username for user

        Returns:

        the displayname for the assignee. Note that this value is NOT set by the backend.

    -   ### setDisplayName

        public void setDisplayName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName\_)

        Sets the displayname for the assignee, such as a group name for a group or username for user.

        Parameters:

        `displayName_` - the displayname to set for the assignee. Note that this value is NOT stored in the backend.

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes