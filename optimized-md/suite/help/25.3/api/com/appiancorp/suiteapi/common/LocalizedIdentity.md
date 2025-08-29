---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/LocalizedIdentity.html
original_path: api/com/appiancorp/suiteapi/common/LocalizedIdentity.html
version: "25.3"
title: "Class LocalizedIdentity"
page_id: "api/com/appiancorp/suiteapi/common/LocalizedIdentity"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class LocalizedIdentity

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.LocalizedIdentity

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[AbstractProcessModel](../process/AbstractProcessModel.html "class in com.appiancorp.suiteapi.process")`, `[HistoryRecord.ProcessModelInfo](../process/HistoryRecord.ProcessModelInfo.html "class in com.appiancorp.suiteapi.process")`, `[ProcessModel.Descriptor](../process/ProcessModel.Descriptor.html "class in com.appiancorp.suiteapi.process")`

* * *

public class LocalizedIdentity extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.LocalizedIdentity)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[LocalizedIdentity](#%3Cinit%3E\(\))()`

    Constructs an empty `LocalizedIdentity` object.

    `[LocalizedIdentity](#%3Cinit%3E\(java.lang.Long,com.appiancorp.suiteapi.common.LocaleString\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [LocaleString](LocaleString.html "class in com.appiancorp.suiteapi.common") name_)`

    Constructs a `LocalizedIdentity` object with given name and Id.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o_)`

    Returns whether the `LocalizedIdentity` been passed is equal to this `LocalizedIdentity`.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns the Id of the object.

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getIds](#getIds\(com.appiancorp.suiteapi.common.LocalizedIdentity%5B%5D\))([LocalizedIdentity](LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")[] lis)`

    Get the ids (as a Long array) from an array of [`LocalizedIdentity`](LocalizedIdentity.html "class in com.appiancorp.suiteapi.common") objects.

    `[LocaleString](LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getName](#getName\(\))()`

    Returns the localized name mappings of the object.

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns a hash code value for the object.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the Id of the object.

    `void`

    `[setName](#setName\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](LocaleString.html "class in com.appiancorp.suiteapi.common") name_)`

    Sets the localized name mappings of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `LocalizedIdentity`.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### LocalizedIdentity

        public LocalizedIdentity()

        Constructs an empty `LocalizedIdentity` object.

    -   ### LocalizedIdentity

        public LocalizedIdentity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [LocaleString](LocaleString.html "class in com.appiancorp.suiteapi.common") name\_)

        Constructs a `LocalizedIdentity` object with given name and Id.

        Parameters:

        `id_` - Id of the object

        `name_` - the localized name mappings of the object

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Returns the Id of the object.

        Returns:

        Id of object

        See Also:

        -   [`setId(Long)`](#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the Id of the object.

        Parameters:

        `id_` - Id to set

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### getName

        public [LocaleString](LocaleString.html "class in com.appiancorp.suiteapi.common") getName()

        Returns the localized name mappings of the object.

        Returns:

        name

        See Also:

        -   [`setName(LocaleString)`](#setName\(com.appiancorp.suiteapi.common.LocaleString\))

    -   ### setName

        public void setName([LocaleString](LocaleString.html "class in com.appiancorp.suiteapi.common") name\_)

        Sets the localized name mappings of the object.

        Parameters:

        `name_` - name to set

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns a string representation of the `LocalizedIdentity`. In general, the toString method returns a string that "textually represents" this object. Note that the name value will be the encode representation.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        String representation of the object

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o\_)

        Returns whether the `LocalizedIdentity` been passed is equal to this `LocalizedIdentity`.

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

    -   ### getIds

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getIds([LocalizedIdentity](LocalizedIdentity.html "class in com.appiancorp.suiteapi.common")\[\] lis)

        Get the ids (as a Long array) from an array of [`LocalizedIdentity`](LocalizedIdentity.html "class in com.appiancorp.suiteapi.common") objects.

        Parameters:

        `lis` - an array of [`LocalizedIdentity`](LocalizedIdentity.html "class in com.appiancorp.suiteapi.common") objects

        Returns:

        an array of the same size as the given array, containing the ids of the given objects; if given array is null, returns null