---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Priority.html
original_path: api/com/appiancorp/suiteapi/process/Priority.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Priority

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.Priority

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Priority](Priority.html "class in com.appiancorp.suiteapi.process")>`

* * *

public class Priority extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Priority](Priority.html "class in com.appiancorp.suiteapi.process")\>, [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

The precedence of any item in its queue. Used primarily for tasks and processes. Priorities are configured web.war/WEB-INF/conf/process/priority-config-process.xml.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Priority)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Priority](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `int`

    `[compareTo](#compareTo\(com.appiancorp.suiteapi.process.Priority\))([Priority](Priority.html "class in com.appiancorp.suiteapi.process") obj_)`

    Compares this priority with another priority

    `boolean`

    `[getDefault](#getDefault\(\))()`

    Returns whether or not this priority is the default priority in the system

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Returns the description of the priority

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getEffectiveId](#getEffectiveId\(\))()`

    Returns the effective ID for the priority.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getIconId](#getIconId\(\))()`

    Returns the collaboration document ID of the icon associated with this priority

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getImageLoc](#getImageLoc\(\))()`

    `boolean`

    `[isDefault](#isDefault\(\))()`

    Deprecated.

    use getDefault

    `void`

    `[setDefault](#setDefault\(boolean\))(boolean default_)`

    Sets whether or not this priority is the default priority in the system.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    Sets the description of the priority

    `void`

    `[setEffectiveId](#setEffectiveId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") effectiveId_)`

    Sets the effective ID for this priority

    `void`

    `[setIconId](#setIconId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") iconId_)`

    Sets the collaboration document ID of the icon associated with this priority

    `void`

    `[setImageLoc](#setImageLoc\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") imageLoc_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Converts this priority to xml and returns it as a string.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Converts the priority to XML and stores it in a StringBuffer

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\)), [toString](../common/Identity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### Priority

        public Priority()

-   ## Method Details

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Returns the description of the priority

        Returns:

        the description of the priority.

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        Sets the description of the priority

        Parameters:

        `description_` - the description of the priority.

    -   ### getIconId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getIconId()

        Returns the collaboration document ID of the icon associated with this priority

        Returns:

        the iconId for the priority

    -   ### setIconId

        public void setIconId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") iconId\_)

        Sets the collaboration document ID of the icon associated with this priority

        Parameters:

        `iconId_` - the iconId for the priority

    -   ### getEffectiveId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getEffectiveId()

        Returns the effective ID for the priority. If the priority has not been deregistered, then the effective ID is the same as the ID. If the priority has been deregistered, then the effective ID is the one that corresponds to the next registered priority in the direction of the default priority.

        Returns:

        the effective ID for the priority

    -   ### setEffectiveId

        public void setEffectiveId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") effectiveId\_)

        Sets the effective ID for this priority

        Parameters:

        `effectiveId_` - the effective ID for the priority

        See Also:

        -   [`getEffectiveId()`](#getEffectiveId\(\))

    -   ### getDefault

        public boolean getDefault()

        Returns whether or not this priority is the default priority in the system

        Returns:

        returns whether or not this priority is default.

    -   ### isDefault

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public boolean isDefault()

        Deprecated.

        use getDefault

        Returns whether or not this priority is the default priority in the system

        Returns:

        returns whether or not this priority is default.

    -   ### setDefault

        public void setDefault(boolean default\_)

        Sets whether or not this priority is the default priority in the system. The system default priority is the last priority registered with a default property of `true`

        Parameters:

        `default_` - sets whether or not this priority is default.

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Converts this priority to xml and returns it as a string.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        a `String` containing the XML serialization of this priority

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Converts the priority to XML and stores it in a StringBuffer

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - the `StringBuffer` to append the XML to

    -   ### compareTo

        public int compareTo([Priority](Priority.html "class in com.appiancorp.suiteapi.process") obj\_)

        Compares this priority with another priority

        Specified by:

        `[compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html#compareTo\(T\) "class or interface in java.lang")` in interface `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Priority](Priority.html "class in com.appiancorp.suiteapi.process")>`

        Parameters:

        `obj_` - the `Priority` to compare this priority to

        Returns:

        \-1 if this priority is higher, 0 if the priorities are equal, or 1 if the other priority is higher

    -   ### getImageLoc

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getImageLoc()

        Returns:

        Returns the imageLoc associated with this priority.

    -   ### setImageLoc

        public void setImageLoc([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") imageLoc\_)

        Parameters:

        `imageLoc_` - The imageLoc to set.