---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadata.html
original_path: api/com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadata.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal.portlets.miniwebsite](package-summary.html)

# Class MiniMetadata

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadata

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class MiniMetadata extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

See Also:

-   [Serialized Form](../../../../../../serialized-form.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadata)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[STATE_DRAFT](#STATE_DRAFT)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[STATE_LOCKED](#STATE_LOCKED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[STATE_NEW](#STATE_NEW)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[STATE_PUBLISHED](#STATE_PUBLISHED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[STATE_SUBMISSION](#STATE_SUBMISSION)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[MiniMetadata](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFilename](#getFilename\(\))()`

    Deprecated.

    Returns the filename.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLockedBy](#getLockedBy\(\))()`

    Deprecated.

    Returns the lockedBy.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getState](#getState\(\))()`

    Deprecated.

    Returns the state.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTemplate](#getTemplate\(\))()`

    Deprecated.

    Returns the template.

    `[Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Date.html "class or interface in java.util")`

    `[getTimestamp](#getTimestamp\(\))()`

    Deprecated.

    Returns the timestamp.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getVersionId](#getVersionId\(\))()`

    Deprecated.

    Returns the versionId.

    `boolean`

    `[isApprovalRequired](#isApprovalRequired\(\))()`

    Deprecated.

    Returns the approvalRequired.

    `boolean`

    `[isVersioned](#isVersioned\(\))()`

    Deprecated.

    Returns the versioned.

    `void`

    `[setApprovalRequired](#setApprovalRequired\(boolean\))(boolean approvalRequired)`

    Deprecated.

    Sets the approvalRequired.

    `void`

    `[setFilename](#setFilename\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filename)`

    Deprecated.

    Sets the filename.

    `void`

    `[setLockedBy](#setLockedBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy)`

    Deprecated.

    Sets the lockedBy.

    `void`

    `[setState](#setState\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") state)`

    Deprecated.

    Sets the state.

    `void`

    `[setTemplate](#setTemplate\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") template)`

    Deprecated.

    Sets the template.

    `void`

    `[setTimestamp](#setTimestamp\(java.util.Date\))([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Date.html "class or interface in java.util") timestamp)`

    Deprecated.

    Sets the timestamp.

    `void`

    `[setVersioned](#setVersioned\(boolean\))(boolean versioned)`

    Deprecated.

    Sets the versioned.

    `void`

    `[setVersionId](#setVersionId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") versionId)`

    Deprecated.

    Sets the versionId.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### STATE\_DRAFT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") STATE\_DRAFT

        Deprecated.

    -   ### STATE\_SUBMISSION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") STATE\_SUBMISSION

        Deprecated.

    -   ### STATE\_PUBLISHED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") STATE\_PUBLISHED

        Deprecated.

    -   ### STATE\_NEW

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") STATE\_NEW

        Deprecated.

    -   ### STATE\_LOCKED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") STATE\_LOCKED

        Deprecated.

-   ## Constructor Details

    -   ### MiniMetadata

        public MiniMetadata()

        Deprecated.

-   ## Method Details

    -   ### isApprovalRequired

        public boolean isApprovalRequired()

        Deprecated.

        Returns the approvalRequired.

        Returns:

        boolean

    -   ### getFilename

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFilename()

        Deprecated.

        Returns the filename.

        Returns:

        String

    -   ### getLockedBy

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLockedBy()

        Deprecated.

        Returns the lockedBy.

        Returns:

        String

    -   ### getState

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getState()

        Deprecated.

        Returns the state.

        Returns:

        Integer

    -   ### getTemplate

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTemplate()

        Deprecated.

        Returns the template.

        Returns:

        String

    -   ### isVersioned

        public boolean isVersioned()

        Deprecated.

        Returns the versioned.

        Returns:

        boolean

    -   ### getVersionId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getVersionId()

        Deprecated.

        Returns the versionId.

        Returns:

        String

    -   ### setApprovalRequired

        public void setApprovalRequired(boolean approvalRequired)

        Deprecated.

        Sets the approvalRequired.

        Parameters:

        `approvalRequired` - The approvalRequired to set

    -   ### setFilename

        public void setFilename([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filename)

        Deprecated.

        Sets the filename.

        Parameters:

        `filename` - The filename to set

    -   ### setLockedBy

        public void setLockedBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy)

        Deprecated.

        Sets the lockedBy.

        Parameters:

        `lockedBy` - The lockedBy to set

    -   ### setState

        public void setState([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") state)

        Deprecated.

        Sets the state.

        Parameters:

        `state` - The state to set

    -   ### setTemplate

        public void setTemplate([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") template)

        Deprecated.

        Sets the template.

        Parameters:

        `template` - The template to set

    -   ### setVersioned

        public void setVersioned(boolean versioned)

        Deprecated.

        Sets the versioned.

        Parameters:

        `versioned` - The versioned to set

    -   ### setVersionId

        public void setVersionId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") versionId)

        Deprecated.

        Sets the versionId.

        Parameters:

        `versionId` - The versionId to set

    -   ### getTimestamp

        public [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Date.html "class or interface in java.util") getTimestamp()

        Deprecated.

        Returns the timestamp.

        Returns:

        Date

    -   ### setTimestamp

        public void setTimestamp([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Date.html "class or interface in java.util") timestamp)

        Deprecated.

        Sets the timestamp.

        Parameters:

        `timestamp` - The timestamp to set