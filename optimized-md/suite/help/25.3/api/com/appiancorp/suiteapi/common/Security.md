---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/Security.html
original_path: api/com/appiancorp/suiteapi/common/Security.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class Security

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.Security

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Security extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This bean is used to represent the security on objects in the Application, and what securities that the object can inherit from 'parent' entities, if there are any.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.Security)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Security](#%3Cinit%3E\(\))()`

    `[Security](#%3Cinit%3E\(com.appiancorp.suiteapi.common.RoleMap\))([RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") nativeRoleMap)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")`

    `[getInheritable](#getInheritable\(\))()`

    Gets the [`RoleMap`](RoleMap.html "class in com.appiancorp.suiteapi.common") that the object inherits from its parent.

    `[RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")`

    `[getNative](#getNative\(\))()`

    Gets the [`RoleMap`](RoleMap.html "class in com.appiancorp.suiteapi.common") that is explicitly defined for the object.

    `boolean`

    `[isCanInherit](#isCanInherit\(\))()`

    Indicates whether the object can inherit permissions from its parent.

    `boolean`

    `[isDoesInherit](#isDoesInherit\(\))()`

    Indicates whether the object actually inherits permissions from its parent.

    `void`

    `[setCanInherit](#setCanInherit\(boolean\))(boolean canInherit_)`

    Sets whether the object can inherit permissions from its parent.

    `void`

    `[setDoesInherit](#setDoesInherit\(boolean\))(boolean doesInherit_)`

    Sets whether the object actually inherits permissions from its parent.

    `void`

    `[setInheritable](#setInheritable\(com.appiancorp.suiteapi.common.RoleMap\))([RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") inheritableRoleMap_)`

    Sets the [`RoleMap`](RoleMap.html "class in com.appiancorp.suiteapi.common") that the object inherits from its parent.

    `void`

    `[setNative](#setNative\(com.appiancorp.suiteapi.common.RoleMap\))([RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") nativeRoleMap_)`

    Sets the [`RoleMap`](RoleMap.html "class in com.appiancorp.suiteapi.common") that is explicitly defined for the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    `void`

    `[toXML](#toXML\(java.lang.StringBuffer\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_)`

    Converts the object to XML and stores it in a `StringBuffer`.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Security

        public Security()

    -   ### Security

        public Security([RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") nativeRoleMap)

-   ## Method Details

    -   ### isCanInherit

        public boolean isCanInherit()

        Indicates whether the object can inherit permissions from its parent.

        Returns:

        `true` if the object can inherit permissions from its parent, `false` otherwise.

    -   ### setCanInherit

        public void setCanInherit(boolean canInherit\_)

        Sets whether the object can inherit permissions from its parent.

        Parameters:

        `canInherit_` - `true` if the object can inherit permissions from its parent, `false` otherwise.

    -   ### isDoesInherit

        public boolean isDoesInherit()

        Indicates whether the object actually inherits permissions from its parent.

        Returns:

        `true` if the object inherits permissions from its parent, `false` otherwise.

    -   ### setDoesInherit

        public void setDoesInherit(boolean doesInherit\_)

        Sets whether the object actually inherits permissions from its parent.

        Parameters:

        `doesInherit_` - `true` if the object inherits permissions from its parent, `false` otherwise.

    -   ### getInheritable

        public [RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") getInheritable()

        Gets the [`RoleMap`](RoleMap.html "class in com.appiancorp.suiteapi.common") that the object inherits from its parent.

        Returns:

        the `RoleMap` that the object inherits from its parent, or `null` if it does not inherit.

        See Also:

        -   [`setInheritable(RoleMap)`](#setInheritable\(com.appiancorp.suiteapi.common.RoleMap\))

    -   ### setInheritable

        public void setInheritable([RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") inheritableRoleMap\_)

        Sets the [`RoleMap`](RoleMap.html "class in com.appiancorp.suiteapi.common") that the object inherits from its parent.

        Parameters:

        `inheritableRoleMap_` - the `RoleMap` that the object inherits from its parent, or `null` if it does not inherit.

        See Also:

        -   [`getInheritable()`](#getInheritable\(\))

    -   ### getNative

        public [RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") getNative()

        Gets the [`RoleMap`](RoleMap.html "class in com.appiancorp.suiteapi.common") that is explicitly defined for the object.

        Returns:

        the `RoleMap` that is explicitly defined for the object.

        See Also:

        -   [`setNative(RoleMap)`](#setNative\(com.appiancorp.suiteapi.common.RoleMap\))

    -   ### setNative

        public void setNative([RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") nativeRoleMap\_)

        Sets the [`RoleMap`](RoleMap.html "class in com.appiancorp.suiteapi.common") that is explicitly defined for the object.

        Parameters:

        `nativeRoleMap_` - The `RoleMap` that is explicitly defined for the object.

        See Also:

        -   [`getNative()`](#getNative\(\))

    -   ### toXML

        public void toXML([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_)

        Converts the object to XML and stores it in a `StringBuffer`.

        Parameters:

        `buffer_` - the `StringBuffer` to append the XML to.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`