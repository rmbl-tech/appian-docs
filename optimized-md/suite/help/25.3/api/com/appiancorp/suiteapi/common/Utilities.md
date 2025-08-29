---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/Utilities.html
original_path: api/com/appiancorp/suiteapi/common/Utilities.html
version: "25.3"
title: "Class Utilities"
page_id: "api/com/appiancorp/suiteapi/common/Utilities"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class Utilities

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.Utilities

* * *

public final class Utilities extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[bitVectorToString](#bitVectorToString\(int,int%5B%5D,java.lang.String%5B%5D\))(int bitVector, int[] masks, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] maskNames)`

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getLocalIdsAsLongs](#getLocalIdsAsLongs\(com.appiancorp.suiteapi.common.LocalId%5B%5D\))([LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")[] lids_)`

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSortOrder](#getSortOrder\(boolean\))(boolean ascending_)`

    `static boolean`

    `[isBitFlagSet](#isBitFlagSet\(int,int\))(int bitFlags, int bitMask)`

    Tests if the bit flag is set.

    `static int`

    `[setBitFlag](#setBitFlag\(int,boolean,int\))(int bitFlags, boolean booleanValue, int bitMask)`

    Sets the bit flag if `booleanValue` is `true`, resets the flag otherwise.

    `static boolean`

    `[validateURLExistance](#validateURLExistance\(java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") context_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") server_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") adrr_)`

    Validates that a URL is reachable.

    `static boolean`

    `[validateURLExistance](#validateURLExistance\(java.lang.String,java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") context_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") server_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") adrr_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sessionId_)`

    Validates that a URL is reachable.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### getLocalIdsAsLongs

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getLocalIdsAsLongs([LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")\[\] lids\_)

    -   ### getSortOrder

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSortOrder(boolean ascending\_)

    -   ### validateURLExistance

        public static boolean validateURLExistance([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") context\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") server\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") adrr\_)

        Validates that a URL is reachable. Example: Utilities.validateURLExistance("suite", "localhost:8081", "main.jsp"); It will validate that the URL http://localhost:8081/suite/main.jsp is reachable.

        Parameters:

        `context_` -

        `server_` -

        `adrr_` - The relative path

        Returns:

        True if the URL is reachable.

    -   ### validateURLExistance

        public static boolean validateURLExistance([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") context\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") server\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") adrr\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sessionId\_)

        Validates that a URL is reachable. Takes the session id. If the URL is an action you need to pass a valid session id to find if the end result is a valid resource or not. Otherwise the method will always return true since AE forwards you to the login page, thus appearing that the URL is valid.

        Parameters:

        `context_` -

        `server_` -

        `adrr_` - The relative path

        `sessionId_` - A valid session id.

        Returns:

        True if the URL is reachable.

    -   ### isBitFlagSet

        public static boolean isBitFlagSet(int bitFlags, int bitMask)

        Tests if the bit flag is set.

        Parameters:

        `bitMask` - a mask of the flag to test

        Returns:

        true if the flag is set; false otherwise.

    -   ### setBitFlag

        public static int setBitFlag(int bitFlags, boolean booleanValue, int bitMask)

        Sets the bit flag if `booleanValue` is `true`, resets the flag otherwise.

        Parameters:

        `bitFlags` - bit flags

        `booleanValue` - true to set the flag, reset otherwise.

        `bitMask` - a bit mask of the flag to set.

        Returns:

        updated bit flags

    -   ### bitVectorToString

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") bitVectorToString(int bitVector, int\[\] masks, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] maskNames)