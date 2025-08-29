---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/webservices/BusinessEntity.html
original_path: api/com/appiancorp/suiteapi/process/webservices/BusinessEntity.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.webservices](package-summary.html)

# Class BusinessEntity

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.webservices.BusinessEntity

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class BusinessEntity extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This bean represents the Business Information that is registered with the WebServices Registry. All the services for a particular Business or Organization that are published as web service are published under the Business registered with the RegistryServer

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.webservices.BusinessEntity)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[BusinessEntity.ContactBean](BusinessEntity.ContactBean.html "class in com.appiancorp.suiteapi.process.webservices")`

    A bean detailing contact information

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[BusinessEntity](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[BusinessEntity.ContactBean](BusinessEntity.ContactBean.html "class in com.appiancorp.suiteapi.process.webservices")`

    `[getContactInformation](#getContactInformation\(\))()`

    Gets the information for administrative contact person.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Gets the description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getOrganizationName](#getOrganizationName\(\))()`

    Gets the Organization or Business Entity name

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUddiRegistry](#getUddiRegistry\(\))()`

    Gets the URL of UDDI registry at which the Business Entity is registered

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Gets the UuId String.

    `void`

    `[setContactInformation](#setContactInformation\(com.appiancorp.suiteapi.process.webservices.BusinessEntity.ContactBean\))([BusinessEntity.ContactBean](BusinessEntity.ContactBean.html "class in com.appiancorp.suiteapi.process.webservices") contactInformation)`

    Sets the contact information

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    Sets the description

    `void`

    `[setOrganizationName](#setOrganizationName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") orgName)`

    Sets the organization name

    `void`

    `[setUddiRegistry](#setUddiRegistry\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uddiRegistry)`

    Sets the URL of UDDI registry

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    sets the Uuid

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### BusinessEntity

        public BusinessEntity()

-   ## Method Details

    -   ### getContactInformation

        public [BusinessEntity.ContactBean](BusinessEntity.ContactBean.html "class in com.appiancorp.suiteapi.process.webservices") getContactInformation()

        Gets the information for administrative contact person.

        Returns:

        the contact information in a `ContactBean`

    -   ### setContactInformation

        public void setContactInformation([BusinessEntity.ContactBean](BusinessEntity.ContactBean.html "class in com.appiancorp.suiteapi.process.webservices") contactInformation)

        Sets the contact information

        Parameters:

        `contactInformation` - the contact information to set

        See Also:

        -   [`getContactInformation()`](#getContactInformation\(\))

    -   ### getOrganizationName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getOrganizationName()

        Gets the Organization or Business Entity name

        Returns:

        the organization name

    -   ### setOrganizationName

        public void setOrganizationName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") orgName)

        Sets the organization name

        Parameters:

        `orgName` - the organization name to set

        See Also:

        -   [`getOrganizationName()`](#getOrganizationName\(\))

    -   ### getUddiRegistry

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUddiRegistry()

        Gets the URL of UDDI registry at which the Business Entity is registered

        Returns:

        the url of UDDI registry

    -   ### setUddiRegistry

        public void setUddiRegistry([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uddiRegistry)

        Sets the URL of UDDI registry

        Parameters:

        `uddiRegistry` - the UDDI registry URL to set

        See Also:

        -   [`getUddiRegistry()`](#getUddiRegistry\(\))

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Gets the UuId String. UUID stands for a Universal Unique IDentifier. These are 128 bit numbers assigned to any object which is guaranteed to be unique.

        Returns:

        the UuId

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        sets the Uuid

        Parameters:

        `uuid` - the Uuid to set

        See Also:

        -   [`getUuid()`](#getUuid\(\))

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Gets the description

        Returns:

        the description

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)

        Sets the description

        Parameters:

        `description` - the description to set

        See Also:

        -   [`getDescription()`](#getDescription\(\))