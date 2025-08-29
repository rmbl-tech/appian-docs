---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/webservices/BusinessEntity.ContactBean.html
original_path: api/com/appiancorp/suiteapi/process/webservices/BusinessEntity.ContactBean.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.webservices](package-summary.html)

# Class BusinessEntity.ContactBean

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.webservices.BusinessEntity.ContactBean

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[BusinessEntity](BusinessEntity.html "class in com.appiancorp.suiteapi.process.webservices")

* * *

public static class BusinessEntity.ContactBean extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

A bean detailing contact information

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.webservices.BusinessEntity.ContactBean)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ContactBean](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEmail](#getEmail\(\))()`

    Gets the email address of contact person

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEmailType](#getEmailType\(\))()`

    Gets the email Type, whether Office or Personal

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the name of contact person

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTelephone](#getTelephone\(\))()`

    Get the telephone number

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTelephoneType](#getTelephoneType\(\))()`

    Gets the telephone type, whether Office or Personal

    `void`

    `[setEmail](#setEmail\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") email)`

    Sets the email address

    `void`

    `[setEmailType](#setEmailType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") emailType)`

    Sets the email type

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Sets the name

    `void`

    `[setTelephone](#setTelephone\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") telephone)`

    Sets the telephone number

    `void`

    `[setTelephoneType](#setTelephoneType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") telephoneType)`

    Sets the telephone type

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ContactBean

        public ContactBean()

-   ## Method Details

    -   ### getEmail

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEmail()

        Gets the email address of contact person

        Returns:

        email

    -   ### setEmail

        public void setEmail([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") email)

        Sets the email address

        Parameters:

        `email` - email to set

        See Also:

        -   [`getEmail()`](#getEmail\(\))

    -   ### getEmailType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEmailType()

        Gets the email Type, whether Office or Personal

        Returns:

        emailType

    -   ### setEmailType

        public void setEmailType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") emailType)

        Sets the email type

        Parameters:

        `emailType` - the email type to set

        See Also:

        -   [`getEmailType()`](#getEmailType\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the name of contact person

        Returns:

        the name

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Sets the name

        Parameters:

        `name` - the name to set

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### getTelephone

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTelephone()

        Get the telephone number

        Returns:

        the telephone number

    -   ### setTelephone

        public void setTelephone([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") telephone)

        Sets the telephone number

        Parameters:

        `telephone` - the telephone number to set

        See Also:

        -   [`getTelephone()`](#getTelephone\(\))

    -   ### getTelephoneType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTelephoneType()

        Gets the telephone type, whether Office or Personal

        Returns:

        the telephone type

    -   ### setTelephoneType

        public void setTelephoneType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") telephoneType)

        Sets the telephone type

        Parameters:

        `telephoneType` - the telephone type to set

        See Also:

        -   [`getTelephoneType()`](#getTelephoneType\(\))