---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/CopySource.html
original_path: api/com/appiancorp/suiteapi/content/CopySource.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class CopySource

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.content.CopySource

* * *

public class CopySource extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Represents an instruction for the source of a Content copy.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[COPY_CREATED](#COPY_CREATED)`

    Copy the created timestamp; otherwise, the current timestamp will be used.

    `static final int`

    `[COPY_CREATOR](#COPY_CREATOR)`

    Copy the creator username; otherwise, the current user will be used.

    `static final int`

    `[COPY_DEFAULT](#COPY_DEFAULT)`

    This is the default copy rule if none specified in constructor.

    `static final int`

    `[COPY_EXCLUDE](#COPY_EXCLUDE)`

    Exclude source and its children from copy.

    `static final int`

    `[COPY_EXCLUDE_VERSIONS](#COPY_EXCLUDE_VERSIONS)`

    Exclude versions of Content items, rather than copying them as well.

    `static final int`

    `[COPY_INACTIVE](#COPY_INACTIVE)`

    Copy inactive items as well as active items; otherwise, only active items will be copied.

    `static final int`

    `[COPY_INCLUDE_INTO](#COPY_INCLUDE_INTO)`

    Copy source into target, as its child or children.

    `static final int`

    `[COPY_INCLUDE_ONTO](#COPY_INCLUDE_ONTO)`

    Copy source onto target, such that source's children are copied to target, but not source itself.

    `static final int`

    `[COPY_SECURITY](#COPY_SECURITY)`

    Copy custom security rolemaps where present, otherwise always inherit.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[CopySource](#%3Cinit%3E\(\))()`

    Blank CopySource with default rule; the source must still be set.

    `[CopySource](#%3Cinit%3E\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") source)`

    CopySource with given source and default rule.

    `[CopySource](#%3Cinit%3E\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") source, int rule)`

    CopySource with given source and rule.

    `[CopySource](#%3Cinit%3E\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") source, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") rule)`

    CopySource with given source and rule.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getRule](#getRule\(\))()`

    Copy rule.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSource](#getSource\(\))()`

    Source id to copy.

    `void`

    `[setRule](#setRule\(int\))(int value)`

    `void`

    `[setRule](#setRule\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") value)`

    `void`

    `[setSource](#setSource\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") value)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### COPY\_INCLUDE\_INTO

        public static final int COPY\_INCLUDE\_INTO

        Copy source into target, as its child or children. The COPY\_ constants may be ORd together for a combined rule.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.CopySource.COPY_INCLUDE_INTO)

    -   ### COPY\_INCLUDE\_ONTO

        public static final int COPY\_INCLUDE\_ONTO

        Copy source onto target, such that source's children are copied to target, but not source itself. The COPY\_ constants may be ORd together for a combined rule.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.CopySource.COPY_INCLUDE_ONTO)

    -   ### COPY\_EXCLUDE

        public static final int COPY\_EXCLUDE

        Exclude source and its children from copy. Use this to exclude a particular hierarchy from a source higher in the tree. Children of this source that are explicitly included in the CopySource list will still be copied. The COPY\_ constants may be ORd together for a combined rule.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.CopySource.COPY_EXCLUDE)

    -   ### COPY\_SECURITY

        public static final int COPY\_SECURITY

        Copy custom security rolemaps where present, otherwise always inherit.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.CopySource.COPY_SECURITY)

    -   ### COPY\_EXCLUDE\_VERSIONS

        public static final int COPY\_EXCLUDE\_VERSIONS

        Exclude versions of Content items, rather than copying them as well. The COPY\_ constants may be ORd together for a combined rule.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.CopySource.COPY_EXCLUDE_VERSIONS)

    -   ### COPY\_CREATOR

        public static final int COPY\_CREATOR

        Copy the creator username; otherwise, the current user will be used. The COPY\_ constants may be ORd together for a combined rule.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.CopySource.COPY_CREATOR)

    -   ### COPY\_CREATED

        public static final int COPY\_CREATED

        Copy the created timestamp; otherwise, the current timestamp will be used. The COPY\_ constants may be ORd together for a combined rule.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.CopySource.COPY_CREATED)

    -   ### COPY\_INACTIVE

        public static final int COPY\_INACTIVE

        Copy inactive items as well as active items; otherwise, only active items will be copied. The COPY\_ constants may be ORd together for a combined rule.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.CopySource.COPY_INACTIVE)

    -   ### COPY\_DEFAULT

        public static final int COPY\_DEFAULT

        This is the default copy rule if none specified in constructor.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.CopySource.COPY_DEFAULT)

-   ## Constructor Details

    -   ### CopySource

        public CopySource()

        Blank CopySource with default rule; the source must still be set.

    -   ### CopySource

        public CopySource([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") source)

        CopySource with given source and default rule.

    -   ### CopySource

        public CopySource([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") source, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") rule)

        CopySource with given source and rule.

    -   ### CopySource

        public CopySource([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") source, int rule)

        CopySource with given source and rule.

-   ## Method Details

    -   ### getSource

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSource()

        Source id to copy.

    -   ### getRule

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getRule()

        Copy rule. See COPY\_ constants.

    -   ### setSource

        public void setSource([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") value)

        Parameters:

        `Source` - id to copy.

    -   ### setRule

        public void setRule([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") value)

        Parameters:

        `Copy` - rule. See COPY\_ constants.

    -   ### setRule

        public void setRule(int value)

        Parameters:

        `Copy` - rule. See COPY\_ constants.