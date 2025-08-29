---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/Identity.html
original_path: api/com/appiancorp/suiteapi/common/Identity.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class Identity

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.Identity

All Implemented Interfaces:

`[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ActivityClass](../process/ActivityClass.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassSchema](../process/ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")`, `[Content](../content/Content.html "class in com.appiancorp.suiteapi.content")`, `[MessageType](../messaging/MessageType.html "class in com.appiancorp.suiteapi.messaging")`, `[Palette](../process/Palette.html "class in com.appiancorp.suiteapi.process")`, `[Palette.Descriptor](../process/Palette.Descriptor.html "class in com.appiancorp.suiteapi.process")`, `[PaletteCategory](../process/PaletteCategory.html "class in com.appiancorp.suiteapi.process")`, `[PaletteCategory.AllCategories](../process/PaletteCategory.AllCategories.html "class in com.appiancorp.suiteapi.process")`, `[PaletteCategory.Descriptor](../process/PaletteCategory.Descriptor.html "class in com.appiancorp.suiteapi.process")`, `[PaletteErrorItem](../process/PaletteErrorItem.html "class in com.appiancorp.suiteapi.process")`, `[PaletteItem](../process/PaletteItem.html "class in com.appiancorp.suiteapi.process")`, `[PortalGroup.Page](../portal/PortalGroup.Page.html "class in com.appiancorp.suiteapi.portal")`, `[Priority](../process/Priority.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModelFolder](../process/ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModelProperties](../process/ProcessModelProperties.html "class in com.appiancorp.suiteapi.process")`, `[ProcessProperties](../process/ProcessProperties.html "class in com.appiancorp.suiteapi.process")`, `[RoleSet](RoleSet.html "class in com.appiancorp.suiteapi.common")`, `[TaskProperties](../process/TaskProperties.html "class in com.appiancorp.suiteapi.process")`

* * *

public class Identity extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")

This bean is used to represent an object with a `String` name, `Long` Id, and `String` UUID.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.Identity)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Identity](#%3Cinit%3E\(\))()`

    Constructor that constructs an empty `Identity` object.

    `[Identity](#%3Cinit%3E\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Constructor that constructs an `Identity` object with given name and Id.

    `[Identity](#%3Cinit%3E\(java.lang.Long,java.lang.String,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Constructor that constructs an `Identity` object with given name, UUID, and Id

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o_)`

    Returns whether the `Identity` been passed is equal to this `Identity`.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns the Id of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Returns the name of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Returns the UUID of the object.

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns a hash code value for the object.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the Id of the object.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Sets the name of the object.

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid_)`

    Sets the UUID of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `Identity`.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Identity

        public Identity()

        Constructor that constructs an empty `Identity` object.

    -   ### Identity

        public Identity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Constructor that constructs an `Identity` object with given name and Id.

        Parameters:

        `id_` - Id of the object

        `name_` - Name of the object

    -   ### Identity

        public Identity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Constructor that constructs an `Identity` object with given name, UUID, and Id

        Parameters:

        `id_` - Id of the object

        `uuid_` - UUID of the object

        `name_` - Name of the object

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Returns the Id of the object.

        Specified by:

        `[getId](LocalId.html#getId\(\))` in interface `[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        Id of object

        See Also:

        -   [`setId(Long)`](#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the Id of the object.

        Specified by:

        `[setId](LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `id_` - Id to set

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### getUuid

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Returns the UUID of the object.

        Returns:

        UUID of object

        See Also:

        -   [`setUuid(String)`](#setUuid\(java.lang.String\))

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid\_)

        Sets the UUID of the object.

        Parameters:

        `uuid_` - UUID to set

        See Also:

        -   [`getUuid()`](#getUuid\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Returns the name of the object.

        Returns:

        name

        See Also:

        -   [`setName(String)`](#setName\(java.lang.String\))

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Sets the name of the object.

        Parameters:

        `name_` - name to set

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns a string representation of the `Identity`. In general, the toString method returns a string that "textually represents" this object.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        String representation of the object

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o\_)

        Returns whether the `Identity` been passed is equal to this `Identity`.

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Parameters:

        `o_` - the reference object with which to compare.

        Returns:

        `true` if both objects are equal, otherwise `false`

    -   ### hashCode

        public int hashCode()

        Returns a hash code value for the object. This method is supported for the benefit of hashtables such as those provided by [`Hashtable`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Hashtable.html "class or interface in java.util").

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        a hash code value for this object