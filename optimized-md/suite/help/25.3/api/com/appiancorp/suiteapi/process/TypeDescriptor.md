---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/TypeDescriptor.html
original_path: api/com/appiancorp/suiteapi/process/TypeDescriptor.html
version: "25.3"
title: "Class TypeDescriptor"
page_id: "api/com/appiancorp/suiteapi/process/TypeDescriptor"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class TypeDescriptor

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.TypeDescriptor

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class TypeDescriptor extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Deprecated.

Use the TypeService and related APIs instead.

Maintains metadata about each of the `TypedVariable` types. This class follows the typesafe enumeration idiom, and instances can be accessed through the `getByType()` factory methods.

See Also:

-   [`TypedVariable`](TypedVariable.html "class in com.appiancorp.suiteapi.process")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[BEAN](#BEAN)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[BOOLEAN](#BOOLEAN)`

    Deprecated.

     

    `static final int`

    `[CLASS_APPIAN](#CLASS_APPIAN)`

    Deprecated.

     

    `static final int`

    `[CLASS_NONE](#CLASS_NONE)`

    Deprecated.

     

    `static final int`

    `[CLASS_PRIMARY](#CLASS_PRIMARY)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[COLLABORATION_COMMUNITY](#COLLABORATION_COMMUNITY)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[CONTENT](#CONTENT)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_BEAN](#DATATYPE_BEAN)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_BOOLEAN](#DATATYPE_BOOLEAN)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_CONTENT](#DATATYPE_CONTENT)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_DATE](#DATATYPE_DATE)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_DATETIME](#DATATYPE_DATETIME)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_DEFERRED](#DATATYPE_DEFERRED)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_DOUBLE](#DATATYPE_DOUBLE)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_EMAIL_RECIPIENT](#DATATYPE_EMAIL_RECIPIENT)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_LONG](#DATATYPE_LONG)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_PEOPLE](#DATATYPE_PEOPLE)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_STRING](#DATATYPE_STRING)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_TIME](#DATATYPE_TIME)`

    Deprecated.

     

    `static final int`

    `[DATATYPE_UNKNOWN](#DATATYPE_UNKNOWN)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[DATE](#DATE)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[DATETIME](#DATETIME)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[DEFERRED](#DEFERRED)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[DOCUMENT](#DOCUMENT)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[DOUBLE](#DOUBLE)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[EMAIL_ADDRESS](#EMAIL_ADDRESS)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[EMAIL_RECIPIENT](#EMAIL_RECIPIENT)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[EVENT](#EVENT)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[FOLDER](#FOLDER)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[FORUM](#FORUM)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[GROUP](#GROUP)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[KNOWLEDGE_CENTER](#KNOWLEDGE_CENTER)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[LONG](#LONG)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[MESSAGE](#MESSAGE)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[PAGE](#PAGE)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[PASSWORD](#PASSWORD)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[PEOPLE](#PEOPLE)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[PROCESS](#PROCESS)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[PROCESS_MODEL](#PROCESS_MODEL)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[STRING](#STRING)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[THREAD](#THREAD)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[TIME](#TIME)`

    Deprecated.

     

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[USER](#USER)`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[getByType](#getByType\(int\))(int type_)`

    Deprecated.

    Retrieves the type descriptor for the given `TypedVariable` type.

    `static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")`

    `[getByType](#getByType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Deprecated.

    Retrieves the type descriptor for the given `TypedVariable` type.

    `int`

    `[getClassType](#getClassType\(\))()`

    Deprecated.

    Gets the type classification of this type.

    `int`

    `[getDataType](#getDataType\(\))()`

    Deprecated.

    Gets the underlying datatype of this type.

    `int`

    `[getType](#getType\(\))()`

    Deprecated.

    Gets the `TypedVariable` type that this type descriptor describes.

    `[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getUnderlyingClass](#getUnderlyingClass\(\))()`

    Deprecated.

    Gets the class of the objects that should be set as the value for this type.

    `boolean`

    `[isDesignTimeOnly](#isDesignTimeOnly\(\))()`

    Deprecated.

    Determines whether this type is only supported at design time.

    `boolean`

    `[isPossiblyMultiple](#isPossiblyMultiple\(\))()`

    Deprecated.

    Determines whether this type can support multiple values.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### CLASS\_NONE

        public static final int CLASS\_NONE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.CLASS_NONE)

    -   ### CLASS\_PRIMARY

        public static final int CLASS\_PRIMARY

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.CLASS_PRIMARY)

    -   ### CLASS\_APPIAN

        public static final int CLASS\_APPIAN

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.CLASS_APPIAN)

    -   ### DATATYPE\_UNKNOWN

        public static final int DATATYPE\_UNKNOWN

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_UNKNOWN)

    -   ### DATATYPE\_DATE

        public static final int DATATYPE\_DATE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_DATE)

    -   ### DATATYPE\_TIME

        public static final int DATATYPE\_TIME

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_TIME)

    -   ### DATATYPE\_DATETIME

        public static final int DATATYPE\_DATETIME

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_DATETIME)

    -   ### DATATYPE\_LONG

        public static final int DATATYPE\_LONG

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_LONG)

    -   ### DATATYPE\_DOUBLE

        public static final int DATATYPE\_DOUBLE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_DOUBLE)

    -   ### DATATYPE\_STRING

        public static final int DATATYPE\_STRING

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_STRING)

    -   ### DATATYPE\_BOOLEAN

        public static final int DATATYPE\_BOOLEAN

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_BOOLEAN)

    -   ### DATATYPE\_PEOPLE

        public static final int DATATYPE\_PEOPLE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_PEOPLE)

    -   ### DATATYPE\_CONTENT

        public static final int DATATYPE\_CONTENT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_CONTENT)

    -   ### DATATYPE\_BEAN

        public static final int DATATYPE\_BEAN

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_BEAN)

    -   ### DATATYPE\_DEFERRED

        public static final int DATATYPE\_DEFERRED

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_DEFERRED)

    -   ### DATATYPE\_EMAIL\_RECIPIENT

        public static final int DATATYPE\_EMAIL\_RECIPIENT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypeDescriptor.DATATYPE_EMAIL_RECIPIENT)

    -   ### DATE

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") DATE

        Deprecated.

    -   ### TIME

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") TIME

        Deprecated.

    -   ### DATETIME

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") DATETIME

        Deprecated.

    -   ### LONG

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") LONG

        Deprecated.

    -   ### DOUBLE

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") DOUBLE

        Deprecated.

    -   ### STRING

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") STRING

        Deprecated.

    -   ### BOOLEAN

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") BOOLEAN

        Deprecated.

    -   ### USER

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") USER

        Deprecated.

    -   ### GROUP

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") GROUP

        Deprecated.

    -   ### PEOPLE

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") PEOPLE

        Deprecated.

    -   ### EMAIL\_ADDRESS

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") EMAIL\_ADDRESS

        Deprecated.

    -   ### EMAIL\_RECIPIENT

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") EMAIL\_RECIPIENT

        Deprecated.

    -   ### DOCUMENT

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") DOCUMENT

        Deprecated.

    -   ### FOLDER

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") FOLDER

        Deprecated.

    -   ### CONTENT

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") CONTENT

        Deprecated.

    -   ### KNOWLEDGE\_CENTER

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") KNOWLEDGE\_CENTER

        Deprecated.

    -   ### COLLABORATION\_COMMUNITY

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") COLLABORATION\_COMMUNITY

        Deprecated.

    -   ### PAGE

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") PAGE

        Deprecated.

    -   ### MESSAGE

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") MESSAGE

        Deprecated.

    -   ### THREAD

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") THREAD

        Deprecated.

    -   ### FORUM

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") FORUM

        Deprecated.

    -   ### BEAN

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") BEAN

        Deprecated.

    -   ### PASSWORD

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") PASSWORD

        Deprecated.

    -   ### DEFERRED

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") DEFERRED

        Deprecated.

    -   ### EVENT

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") EVENT

        Deprecated.

    -   ### PROCESS\_MODEL

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") PROCESS\_MODEL

        Deprecated.

    -   ### PROCESS

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") PROCESS

        Deprecated.

-   ## Method Details

    -   ### getByType

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") getByType(int type\_)

        Deprecated.

        Retrieves the type descriptor for the given `TypedVariable` type.

        Parameters:

        `type_` - The type of the descriptor to return; this should be one of the `TypedVariable` constants defined in [`TypedVariable`](TypedVariable.html "class in com.appiancorp.suiteapi.process").

        Returns:

        The type descriptor, or `null` if no descriptor exists for this type.

    -   ### getByType

        public static final [TypeDescriptor](TypeDescriptor.html "class in com.appiancorp.suiteapi.process") getByType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Deprecated.

        Retrieves the type descriptor for the given `TypedVariable` type.

        Parameters:

        `type_` - A `Long` holding the type of the descriptor to return; this should be one of the `TypedVariable` constants defined in [`TypedVariable`](TypedVariable.html "class in com.appiancorp.suiteapi.process").

        Returns:

        The type descriptor, or `null` if no descriptor exists for this type or if the passed object is `null`.

    -   ### getClassType

        public int getClassType()

        Deprecated.

        Gets the type classification of this type.

        Returns:

        One of the CLASS\_XXX constants defined by this class.

    -   ### getDataType

        public int getDataType()

        Deprecated.

        Gets the underlying datatype of this type.

        Returns:

        One of the DATATYPE\_XXX constants defined by this class.

    -   ### isDesignTimeOnly

        public boolean isDesignTimeOnly()

        Deprecated.

        Determines whether this type is only supported at design time. Currently, the only such type is DEFERRED.

        Returns:

        `true` if the type is only supported at design time, and `false` otherwise

    -   ### isPossiblyMultiple

        public boolean isPossiblyMultiple()

        Deprecated.

        Determines whether this type can support multiple values. Currently, the only type that does not support multiples is DEFERRED.

        Returns:

        `true` if the type supports multiples, and `false` otherwise

    -   ### getType

        public int getType()

        Deprecated.

        Gets the `TypedVariable` type that this type descriptor describes.

        Returns:

        The type that this descriptor describes, which is one of the `TypedVariable` constants defined in [`TypedVariable`](TypedVariable.html "class in com.appiancorp.suiteapi.process").

    -   ### getUnderlyingClass

        public [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getUnderlyingClass()

        Deprecated.

        Gets the class of the objects that should be set as the value for this type. The class for DOCUMENT, for example, is `java.lang.Long`. Variables of type DEFERRED have no value, so their underlying class is `null`. Variables of type BEAN should have values that are of the same class as the variable (such as `ActivityClassParameter`), and should always be arrays. For all other types, the class returned is a scalar, and if the variable supports multiple values, the value should be set as an array of objects of that class.

        Returns:

        the class of the value of a variable of this type