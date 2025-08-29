---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/UserValidationUtils.html
original_path: api/com/appiancorp/suiteapi/personalization/UserValidationUtils.html
version: "25.3"
title: "Class UserValidationUtils"
page_id: "api/com/appiancorp/suiteapi/personalization/UserValidationUtils"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class UserValidationUtils

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.personalization.UserValidationUtils

* * *

public class UserValidationUtils extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static enum` 

    `[UserValidationUtils.NameField](UserValidationUtils.NameField.html "enum class in com.appiancorp.suiteapi.personalization")`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UserValidationUtils](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static boolean`

    `[changedSSN](#changedSSN\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ssn_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") un_)`

    Returns true if the given ssn is different from the ssn currently associated with the given username.

    `static int`

    `[getNameMaxSize](#getNameMaxSize\(com.appiancorp.suiteapi.personalization.UserValidationUtils.NameField\))([UserValidationUtils.NameField](UserValidationUtils.NameField.html "enum class in com.appiancorp.suiteapi.personalization") field_)`

    Returns the max character size for the given name field

    `static boolean`

    `[isEmptyField](#isEmptyField\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") str_)`

    This returns true if a user field is empty.

    `static boolean`

    `[isUniqueSSN](#isUniqueSSN\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ssn_)`

    Returns true is there is no existing user with this ssn.

    `static boolean`

    `[isUniqueUsername](#isUniqueUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Returns true if the username is valid and there is no existing user that has the same username (case-insensitive).

    `static boolean`

    `[isValidEmail](#isValidEmail\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") email_)`

    Returns true if the given email is valid.

    `static boolean`

    `[isValidName](#isValidName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Valid names can contains letters, numbers, underscores, hyphens, and whitespace.

    `static boolean`

    `[isValidNameLength](#isValidNameLength\(java.lang.String,com.appiancorp.suiteapi.personalization.UserValidationUtils.NameField\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [UserValidationUtils.NameField](UserValidationUtils.NameField.html "enum class in com.appiancorp.suiteapi.personalization") field_)`

    Returns true if name is a valid length

    `static boolean`

    `[isValidSSN](#isValidSSN\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ssn_)`

    Valid ssns consist of 9 digits.

    `static boolean`

    `[isValidTitle](#isValidTitle\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title)`

    Valid titles can contain letters, underscores, hyphens, whitespace, and if specified numbers.

    `static boolean`

    `[isValidUsername](#isValidUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Valid usernames can contain letters, numbers, underscores, periods, hyphens, and at signs.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UserValidationUtils

        public UserValidationUtils()

-   ## Method Details

    -   ### isValidName

        public static boolean isValidName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Valid names can contains letters, numbers, underscores, hyphens, and whitespace. Names are not always required, so an empty field is also considered valid.

        Parameters:

        `name_` -

        Returns:

        true if the name is valid

    -   ### isValidNameLength

        public static boolean isValidNameLength([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [UserValidationUtils.NameField](UserValidationUtils.NameField.html "enum class in com.appiancorp.suiteapi.personalization") field\_)

        Returns true if name is a valid length

        Parameters:

        `name_` - The name string to validate

        `field_` - Which name field to validate. Should be one of the NameField enum constants.

        Returns:

        true if the name is a valid length

    -   ### getNameMaxSize

        public static int getNameMaxSize([UserValidationUtils.NameField](UserValidationUtils.NameField.html "enum class in com.appiancorp.suiteapi.personalization") field\_)

        Returns the max character size for the given name field

        Parameters:

        `field_` - Which name field to validate. Should be one of the constants XX\_FIELD.

        Returns:

        max size for field

    -   ### isValidUsername

        public static boolean isValidUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_)

        Valid usernames can contain letters, numbers, underscores, periods, hyphens, and at signs. Usernames are required and cannot be left empty.

        Parameters:

        `username_` -

        Returns:

        true if the username is valid

    -   ### isUniqueUsername

        public static boolean isUniqueUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_)

        Returns true if the username is valid and there is no existing user that has the same username (case-insensitive).

        Parameters:

        `username_` -

        Returns:

        returns `true` if there is no existing user with the given `username_` and the `username_` is valid username, returns false otherwise.

    -   ### isValidSSN

        public static boolean isValidSSN([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ssn\_)

        Valid ssns consist of 9 digits. No spaces or dashes allowed. SSNs are not required, so an empty field is considered valid.

        Parameters:

        `ssn_` -

        Returns:

        true if the ssn is in a valid format

    -   ### isUniqueSSN

        public static boolean isUniqueSSN([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ssn\_)

        Returns true is there is no existing user with this ssn. SSNs are not required, so an empty field is considered valid.

        Parameters:

        `ssn_` -

        Returns:

        true if there is no existing user with this ssn

    -   ### changedSSN

        public static boolean changedSSN([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ssn\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") un\_) throws [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

        Returns true if the given ssn is different from the ssn currently associated with the given username.

        Parameters:

        `ssn_` - social security number

        `un_` - username

        Returns:

        Throws:

        `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

    -   ### isValidEmail

        public static boolean isValidEmail([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") email\_)

        Returns true if the given email is valid. The email address is required and cannot be left empty.

        Parameters:

        `email_` -

        Returns:

    -   ### isValidTitle

        public static boolean isValidTitle([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title)

        Valid titles can contain letters, underscores, hyphens, whitespace, and if specified numbers. Titles are not required, so an empty field is also considered valid.

        Parameters:

        `title` -

        Returns:

        true if the title is valid

    -   ### isEmptyField

        public static boolean isEmptyField([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") str\_)

        This returns true if a user field is empty. This should only be used to validate whether a user field is empty, and not as a generic check for null or empty string.

        Parameters:

        `str_` - the value to check

        Returns:

        true if the value is empty