---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/UserSpace.html
original_path: api/com/appiancorp/suiteapi/collaboration/UserSpace.html
version: "25.3"
title: "Class UserSpace"
page_id: "api/com/appiancorp/suiteapi/collaboration/UserSpace"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Class UserSpace

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.collaboration.UserSpace

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class UserSpace extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

Deprecated.

This class encapsulates data regarding the physical disk space available to and occupied by a user.

Copyright: Copyright (c) 2002, 2003

Company: Appian Corporation

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.collaboration.UserSpace)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UserSpace](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Gets the ID of this `UserSpace` object

    `[Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")`

    `[getMegaBytesAvailable](#getMegaBytesAvailable\(\))()`

    Deprecated.

    Gets the number of magabytes of total space that the user has.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getMegaBytesFree](#getMegaBytesFree\(\))()`

    Deprecated.

    Gets the amount of space that is free for the user to store/upload documents

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getMegaBytesUsed](#getMegaBytesUsed\(\))()`

    Deprecated.

    Gets the amount of space that has been used by the user to store/upload documents

    `[Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")`

    `[getPercentAvailable](#getPercentAvailable\(\))()`

    Deprecated.

    Gets the percentage of the user's total space allocation that is left in the application for storage/uploads

    `[Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")`

    `[getRoundedPercentAvailable](#getRoundedPercentAvailable\(\))()`

    Deprecated.

    Gets the percentage of the user's total space allocation in rounded figures that is left in the application for storage/uploads.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Deprecated.

    Sets the ID of this `UserSpace` object

    `void`

    `[setMegaBytesAvailable](#setMegaBytesAvailable\(java.lang.Double\))([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") megaBytesAvailable)`

    Deprecated.

    Sets the number of megabytes of space the user has available.

    `void`

    `[setMegaBytesUsed](#setMegaBytesUsed\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Long)`

    Deprecated.

    Sets the amount of space that has been used by the user to store/upload documents

    `void`

    `[setPercentAvailable](#setPercentAvailable\(java.lang.Double\))([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") double1)`

    Deprecated.

    Register the percentage of the user's total space allocation that is left in the application for storage/uploads

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UserSpace

        public UserSpace()

        Deprecated.

-   ## Method Details

    -   ### getMegaBytesUsed

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getMegaBytesUsed()

        Deprecated.

        Gets the amount of space that has been used by the user to store/upload documents

        Returns:

        the amount of space that has been used by the user in Mbytes

    -   ### getMegaBytesFree

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getMegaBytesFree()

        Deprecated.

        Gets the amount of space that is free for the user to store/upload documents

        Returns:

        the amount of space that is free for the user in Mbytes

    -   ### getMegaBytesAvailable

        public [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") getMegaBytesAvailable()

        Deprecated.

        Gets the number of magabytes of total space that the user has. This value should be the sum of `megaBytesUsed` and `megaBytesFree`.

        Returns:

        Returns the megaBytesAvailable.

    -   ### setMegaBytesAvailable

        public void setMegaBytesAvailable([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") megaBytesAvailable)

        Deprecated.

        Sets the number of megabytes of space the user has available. After this method call is invoked, the user's free space is reset to the new value `megaBytesAvailable - megaBytesUsed`.

        Parameters:

        `megaBytesAvailable` - sets the Total User Space (in megabytes)

    -   ### getPercentAvailable

        public [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") getPercentAvailable()

        Deprecated.

        Gets the percentage of the user's total space allocation that is left in the application for storage/uploads

        Returns:

        the pecentage available

    -   ### getRoundedPercentAvailable

        public [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") getRoundedPercentAvailable()

        Deprecated.

        Gets the percentage of the user's total space allocation in rounded figures that is left in the application for storage/uploads. Rounding it makes it easier to represent graphically

        Returns:

        the pecentage available

    -   ### setMegaBytesUsed

        public void setMegaBytesUsed([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Long)

        Deprecated.

        Sets the amount of space that has been used by the user to store/upload documents

        Parameters:

        `Long` - the amount of space that has been used by the user in Mbytes

    -   ### setPercentAvailable

        public void setPercentAvailable([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") double1)

        Deprecated.

        Register the percentage of the user's total space allocation that is left in the application for storage/uploads

        Parameters:

        `double1` - the percentage available

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Gets the ID of this `UserSpace` object

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the ID of this `UserSpace` object

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

        Deprecated.

        Sets the ID of this `UserSpace` object

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `id` - the ID of this `UserSpace` object

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone() throws [CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")

        Deprecated.

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Throws:

        `[CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")`