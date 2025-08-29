---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Validatable.html
original_path: api/com/appiancorp/suiteapi/process/Validatable.html
version: "25.3"
title: "Interface Validatable"
page_id: "api/com/appiancorp/suiteapi/process/Validatable"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Interface Validatable

All Known Implementing Classes:

`[ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")`, `[ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")`

* * *

public interface Validatable

Classes implementing this interface can be subjected to runtime validation. Generally, these classes are descendants of `TypedVariable`.

See Also:

-   [`TypedVariable`](TypedVariable.html "class in com.appiancorp.suiteapi.process")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[MUTABLE_AT_DESIGNER_DISCRETION](#MUTABLE_AT_DESIGNER_DISCRETION)`

    `static final int`

    `[MUTABLE_BY_END_USER](#MUTABLE_BY_END_USER)`

    `static final int`

    `[MUTABLE_NOT_BY_END_USER](#MUTABLE_NOT_BY_END_USER)`

    `static final int`

    `[NULLABLE_ADMIN_AND_DESIGN](#NULLABLE_ADMIN_AND_DESIGN)`

    May not have a default value, but still required by the runtime user.

    `static final int`

    `[NULLABLE_BY_ALL](#NULLABLE_BY_ALL)`

    Not required at all.

    `static final int`

    `[NULLABLE_NOT_AT_ALL](#NULLABLE_NOT_AT_ALL)`

    Must have a default value, must have a value submitted by the runtime user.

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAllMessages](#addAllMessages\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") newMessages_)`

    Adds all of the messages in the given list to the collection of validation messages maintained by this object.

    `void`

    `[addValidationMessage](#addValidationMessage\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    Adds the given validation message to the collection maintained by this object.

    `void`

    `[clearValidationMessages](#clearValidationMessages\(\))()`

    Clears the collection of validation messages accumulated by this object.

    `int[]`

    `[getDetailedTypes](#getDetailedTypes\(\))()`

    Gets the type array of Appian Object(s) selected within the picker.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFriendlyName](#getFriendlyName\(\))()`

    Gets a name that can be shown to an end user.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getInstanceType](#getInstanceType\(\))()`

    Retrieves the type id, which corresponds to a `Datatype`.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getKey](#getKey\(\))()`

    Gets the name of this variable.

    `int`

    `[getMultiple](#getMultiple\(\))()`

    Does this object support a value that is an array?

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getMutable](#getMutable\(\))()`

    Determines whether this object can be modified by the user.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNullable](#getNullable\(\))()`

    Determines whether this object can be set to null, or an empty string.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Deprecated.

    Use getInstanceType()

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")`

    `[getValidationMessages](#getValidationMessages\(\))()`

    Retrieves the list of validation messages that have been added to this object by a validator.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getValue](#getValue\(\))()`

    Retrieves the value of this object.

    `void`

    `[setDetailedTypes](#setDetailedTypes\(int%5B%5D\))(int[] detailedTypes_)`

    See [`getDetailedTypes()`](#getDetailedTypes\(\)).

    `void`

    `[setInstanceType](#setInstanceType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Sets the type id, which corresponds to a `Datatype`.

    `void`

    `[setMultiple](#setMultiple\(int\))(int multiple_)`

    See [`getMultiple()`](#getMultiple\(\)).

    `void`

    `[setValue](#setValue\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    See [`getValue()`](#getValue\(\)).

-   ## Field Details

    -   ### NULLABLE\_NOT\_AT\_ALL

        static final int NULLABLE\_NOT\_AT\_ALL

        Must have a default value, must have a value submitted by the runtime user.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Validatable.NULLABLE_NOT_AT_ALL)

    -   ### NULLABLE\_BY\_ALL

        static final int NULLABLE\_BY\_ALL

        Not required at all.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Validatable.NULLABLE_BY_ALL)

    -   ### NULLABLE\_ADMIN\_AND\_DESIGN

        static final int NULLABLE\_ADMIN\_AND\_DESIGN

        May not have a default value, but still required by the runtime user.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Validatable.NULLABLE_ADMIN_AND_DESIGN)

    -   ### MUTABLE\_NOT\_BY\_END\_USER

        static final int MUTABLE\_NOT\_BY\_END\_USER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Validatable.MUTABLE_NOT_BY_END_USER)

    -   ### MUTABLE\_BY\_END\_USER

        static final int MUTABLE\_BY\_END\_USER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Validatable.MUTABLE_BY_END_USER)

    -   ### MUTABLE\_AT\_DESIGNER\_DISCRETION

        static final int MUTABLE\_AT\_DESIGNER\_DISCRETION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Validatable.MUTABLE_AT_DESIGNER_DISCRETION)

-   ## Method Details

    -   ### getNullable

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNullable()

        Determines whether this object can be set to null, or an empty string.

        Returns:

        One of the `NULLABLE_XXX` constants (defined by this interface) indicating the nullability of the object.

    -   ### getMutable

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getMutable()

        Determines whether this object can be modified by the user.

        Returns:

        One of the `MUTABLE_XXX` constants defined by this interface.

    -   ### getValue

        [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getValue()

        Retrieves the value of this object. This value is not the object itself, but rather the object being wrapped. Think of classes that implement this interface as wrappers for a smaller object, along with a bunch of metadata about the object. This method returns the wrapped object (generally a `String` or a `Long`), without the metadata.

        Returns:

        The object wrapped by the implementing class.

    -   ### setValue

        void setValue([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

        See [`getValue()`](#getValue\(\)).

    -   ### getType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

        Deprecated.

        Use getInstanceType()

        Retrieves the type of this object. The type is just metadata about the _value_ property, and corresponds to one of the constants defined in `TypedVariable`.

        Returns:

        The type of the wrapped object.

        See Also:

        -   [`TypedVariable`](TypedVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### getInstanceType

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getInstanceType()

        Retrieves the type id, which corresponds to a `Datatype`. Built-in datatype ids are defined in `AppianType`

        Returns:

        the type id

    -   ### setInstanceType

        void setInstanceType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Sets the type id, which corresponds to a `Datatype`. Built-in datatype ids are defined in `AppianType`

    -   ### getValidationMessages

        [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") getValidationMessages()

        Retrieves the list of validation messages that have been added to this object by a validator. These messages are Strings.

        Returns:

        A list of `String`s representing the validation messages.

    -   ### addValidationMessage

        void addValidationMessage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_)

        Adds the given validation message to the collection maintained by this object. All messages can be retrieved with `getValidationMessages()`.

        Parameters:

        `message_` - The validation message to add.

    -   ### clearValidationMessages

        void clearValidationMessages()

        Clears the collection of validation messages accumulated by this object. A subsequent call to `getValidationMessages()` will return an empty list, unless there are intervening calls to `addValidationMessage()`.

    -   ### addAllMessages

        void addAllMessages([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") newMessages\_)

        Adds all of the messages in the given list to the collection of validation messages maintained by this object.

        Parameters:

        `newMessages_` - A list of validation messages to add, each of which is a `String` .

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - - if the specified collection is null

    -   ### getKey

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getKey()

        Gets the name of this variable. Variables are generally key/value bindings, with the added attribute of type. This is the _key_ part of the binding.

        Returns:

        The key as a `String`.

    -   ### getFriendlyName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFriendlyName()

        Gets a name that can be shown to an end user. In most cases, this is no more complicated than `getKey()`. Some types of variables, however, have more descriptive text sitting around, and can return that. Basically, end users know about labels, not variable names.

        Returns:

        The friendly name of the variable as a `String`.

    -   ### getMultiple

        int getMultiple()

        Does this object support a value that is an array?

        Returns:

        `TypedVariable.ALWAYS` or `TypedVariable.NEVER`

    -   ### setMultiple

        void setMultiple(int multiple\_)

        See [`getMultiple()`](#getMultiple\(\)).

    -   ### getDetailedTypes

        int\[\] getDetailedTypes()

        Gets the type array of Appian Object(s) selected within the picker.

        Returns:

        Array of values of the selected objects.

        See Also:

        -   [`TypedVariable`](TypedVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### setDetailedTypes

        void setDetailedTypes(int\[\] detailedTypes\_)

        See [`getDetailedTypes()`](#getDetailedTypes\(\)).