---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/UserProfile.html
original_path: api/com/appiancorp/suiteapi/personalization/UserProfile.html
version: "25.3"
title: "Class UserProfile"
page_id: "api/com/appiancorp/suiteapi/personalization/UserProfile"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class UserProfile

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.personalization.UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization")

[com.appiancorp.suiteapi.personalization.User](User.html "class in com.appiancorp.suiteapi.personalization")

com.appiancorp.suiteapi.personalization.UserProfile

All Implemented Interfaces:

`com.appiancorp.asl3.servicefw.connect.ASLIdentity`, `com.appiancorp.services.ASLIdentity`, `[LocalStringId](../common/LocalStringId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization")`

* * *

public class UserProfile extends [User](User.html "class in com.appiancorp.suiteapi.personalization")

This represents the full User profile object. It includes additional properties such as email, phone, and address info.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.UserProfile)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ADDRESS1](#SORT_BY_ADDRESS1)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ADDRESS2](#SORT_BY_ADDRESS2)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ADDRESS3](#SORT_BY_ADDRESS3)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CITY](#SORT_BY_CITY)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_COUNTRY](#SORT_BY_COUNTRY)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATED](#SORT_BY_CREATED)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CUSTOMFIELD1](#SORT_BY_CUSTOMFIELD1)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CUSTOMFIELD10](#SORT_BY_CUSTOMFIELD10)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CUSTOMFIELD2](#SORT_BY_CUSTOMFIELD2)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CUSTOMFIELD3](#SORT_BY_CUSTOMFIELD3)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CUSTOMFIELD4](#SORT_BY_CUSTOMFIELD4)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CUSTOMFIELD5](#SORT_BY_CUSTOMFIELD5)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CUSTOMFIELD6](#SORT_BY_CUSTOMFIELD6)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CUSTOMFIELD7](#SORT_BY_CUSTOMFIELD7)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CUSTOMFIELD8](#SORT_BY_CUSTOMFIELD8)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CUSTOMFIELD9](#SORT_BY_CUSTOMFIELD9)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LASTMODIFIED](#SORT_BY_LASTMODIFIED)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PHONEHOME](#SORT_BY_PHONEHOME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PHONEMOBILE](#SORT_BY_PHONEMOBILE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PHONEOFFICE](#SORT_BY_PHONEOFFICE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PROVINCE](#SORT_BY_PROVINCE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_STATE](#SORT_BY_STATE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SUPERVISORNAME](#SORT_BY_SUPERVISORNAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TITLE_ID](#SORT_BY_TITLE_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TITLENAME](#SORT_BY_TITLENAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ZIPCODE](#SORT_BY_ZIPCODE)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[USER_TYPE_BASIC](#USER_TYPE_BASIC)`

    the Ids for the user types: basic and system administrator, that can be set in the `userTypeId` field.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[USER_TYPE_SYS_ADMIN](#USER_TYPE_SYS_ADMIN)`

    ### Fields inherited from class com.appiancorp.suiteapi.personalization.[User](User.html "class in com.appiancorp.suiteapi.personalization")

    `[SORT_BY_ID](User.html#SORT_BY_ID), [SORT_BY_PASSWORD](User.html#SORT_BY_PASSWORD), [SORT_BY_USERNAME](User.html#SORT_BY_USERNAME), [USER_ROLE_ADMINISTRATOR](User.html#USER_ROLE_ADMINISTRATOR), [USER_ROLE_CREATOR](User.html#USER_ROLE_CREATOR), [USER_ROLE_MEMBER](User.html#USER_ROLE_MEMBER), [USER_ROLE_VIEWER](User.html#USER_ROLE_VIEWER)`

    ### Fields inherited from class com.appiancorp.suiteapi.personalization.[UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization")

    `[SORT_BY_DISPLAYNAME](UserBase.html#SORT_BY_DISPLAYNAME), [SORT_BY_EMAIL](UserBase.html#SORT_BY_EMAIL), [SORT_BY_FIRSTNAME](UserBase.html#SORT_BY_FIRSTNAME), [SORT_BY_LASTNAME](UserBase.html#SORT_BY_LASTNAME), [SORT_BY_MIDDLENAME](UserBase.html#SORT_BY_MIDDLENAME), [SORT_BY_SOCIALSECURITYNUMBER](UserBase.html#SORT_BY_SOCIALSECURITYNUMBER), [STATUS_ACTIVE](UserBase.html#STATUS_ACTIVE), [STATUS_DEACTIVATED](UserBase.html#STATUS_DEACTIVATED)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UserProfile](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAddress1](#getAddress1\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAddress2](#getAddress2\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAddress3](#getAddress3\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getBlurb](#getBlurb\(\))()`

    Returns the User's blurb text

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCity](#getCity\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getConfirmPassword](#getConfirmPassword\(\))()`

    Deprecated.

    Since 6.0.2, use [`User.getUserPassword()`](User.html#getUserPassword\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCountry](#getCountry\(\))()`

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getCreated](#getCreated\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomField1](#getCustomField1\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomField10](#getCustomField10\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomField2](#getCustomField2\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomField3](#getCustomField3\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomField4](#getCustomField4\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomField5](#getCustomField5\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomField6](#getCustomField6\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomField7](#getCustomField7\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomField8](#getCustomField8\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomField9](#getCustomField9\(\))()`

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getLastModified](#getLastModified\(\))()`

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getLocale](#getLocale\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPhoneHome](#getPhoneHome\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPhoneMobile](#getPhoneMobile\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPhoneOffice](#getPhoneOffice\(\))()`

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getProcessModelerPreferredView](#getProcessModelerPreferredView\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProvince](#getProvince\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getState](#getState\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getSupervisorName](#getSupervisorName\(\))()`

    `[TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util")`

    `[getTimeZone](#getTimeZone\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getTitleId](#getTitleId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTitleName](#getTitleName\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUserTypeId](#getUserTypeId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUserTypeName](#getUserTypeName\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getZipCode](#getZipCode\(\))()`

    `void`

    `[setAddress1](#setAddress1\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") address1_)`

    `void`

    `[setAddress2](#setAddress2\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") address2_)`

    `void`

    `[setAddress3](#setAddress3\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") address3_)`

    `void`

    `[setBlurb](#setBlurb\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") blurb)`

    Sets the User's blurb text

    `void`

    `[setCity](#setCity\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") city_)`

    `void`

    `[setConfirmPassword](#setConfirmPassword\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") confirmPassword_)`

    Deprecated.

    Since 6.0.2, use `#setUserPassword(String)`

    `void`

    `[setCountry](#setCountry\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") country_)`

    `void`

    `[setCreated](#setCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") created_)`

    `void`

    `[setCustomField1](#setCustomField1\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField1_)`

    `void`

    `[setCustomField10](#setCustomField10\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField10_)`

    `void`

    `[setCustomField2](#setCustomField2\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField2_)`

    `void`

    `[setCustomField3](#setCustomField3\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField3_)`

    `void`

    `[setCustomField4](#setCustomField4\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField4_)`

    `void`

    `[setCustomField5](#setCustomField5\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField5_)`

    `void`

    `[setCustomField6](#setCustomField6\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField6_)`

    `void`

    `[setCustomField7](#setCustomField7\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField7_)`

    `void`

    `[setCustomField8](#setCustomField8\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField8_)`

    `void`

    `[setCustomField9](#setCustomField9\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField9_)`

    `void`

    `[setLastModified](#setLastModified\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lastModified_)`

    `void`

    `[setLocale](#setLocale\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    `void`

    `[setPhoneHome](#setPhoneHome\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") phoneHome_)`

    `void`

    `[setPhoneMobile](#setPhoneMobile\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") phoneMobile_)`

    `void`

    `[setPhoneOffice](#setPhoneOffice\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") phoneOffice_)`

    `void`

    `[setProcessModelerPreferredView](#setProcessModelerPreferredView\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") processModelerPreferredView_)`

    `void`

    `[setProvince](#setProvince\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") province_)`

    `void`

    `[setState](#setState\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") state_)`

    `void`

    `[setSupervisorName](#setSupervisorName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") supervisorName_)`

    `void`

    `[setTimeZone](#setTimeZone\(java.util.TimeZone\))([TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") timeZone_)`

    `void`

    `[setTitleId](#setTitleId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") titleId_)`

    `void`

    `[setTitleName](#setTitleName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") titleName_)`

    `void`

    `[setUserTypeId](#setUserTypeId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId_)`

    `void`

    `[setUserTypeName](#setUserTypeName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userTypeName_)`

    `void`

    `[setZipCode](#setZipCode\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") zipcode_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.personalization.[User](User.html "class in com.appiancorp.suiteapi.personalization")

    `[getId](User.html#getId\(\)), [getIdentifier](User.html#getIdentifier\(\)), [getIdentity](User.html#getIdentity\(\)), [getPassword](User.html#getPassword\(\)), [getPasswordModified](User.html#getPasswordModified\(\)), [getStringId](User.html#getStringId\(\)), [getUsernames](User.html#getUsernames\(com.appiancorp.suiteapi.personalization.User%5B%5D\)), [getUserPassword](User.html#getUserPassword\(\)), [getUuid](User.html#getUuid\(\)), [isTemporaryPassword](User.html#isTemporaryPassword\(\)), [isUserLocked](User.html#isUserLocked\(\)), [setId](User.html#setId\(java.lang.Long\)), [setPassword](User.html#setPassword\(java.lang.String\)), [setPasswordModified](User.html#setPasswordModified\(java.sql.Timestamp\)), [setStringId](User.html#setStringId\(java.lang.String\)), [setTemporaryPassword](User.html#setTemporaryPassword\(boolean\)), [setUserLocked](User.html#setUserLocked\(boolean\)), [setUserPassword](User.html#setUserPassword\(byte%5B%5D\)), [setUuid](User.html#setUuid\(java.lang.String\))`

    ### Methods inherited from class com.appiancorp.suiteapi.personalization.[UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization")

    `[getDisplayName](UserBase.html#getDisplayName\(\)), [getEmail](UserBase.html#getEmail\(\)), [getFavorite](UserBase.html#getFavorite\(\)), [getFirstName](UserBase.html#getFirstName\(\)), [getLastName](UserBase.html#getLastName\(\)), [getMiddleName](UserBase.html#getMiddleName\(\)), [getSocialSecurityNumber](UserBase.html#getSocialSecurityNumber\(\)), [getStatus](UserBase.html#getStatus\(\)), [getUsername](UserBase.html#getUsername\(\)), [setDisplayName](UserBase.html#setDisplayName\(java.lang.String\)), [setEmail](UserBase.html#setEmail\(java.lang.String\)), [setFavorite](UserBase.html#setFavorite\(boolean\)), [setFirstName](UserBase.html#setFirstName\(java.lang.String\)), [setLastName](UserBase.html#setLastName\(java.lang.String\)), [setMiddleName](UserBase.html#setMiddleName\(java.lang.String\)), [setSocialSecurityNumber](UserBase.html#setSocialSecurityNumber\(java.lang.String\)), [setStatus](UserBase.html#setStatus\(int\)), [setUsername](UserBase.html#setUsername\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_PHONEOFFICE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PHONEOFFICE

    -   ### SORT\_BY\_PHONEMOBILE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PHONEMOBILE

    -   ### SORT\_BY\_PHONEHOME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PHONEHOME

    -   ### SORT\_BY\_ADDRESS1

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ADDRESS1

    -   ### SORT\_BY\_ADDRESS2

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ADDRESS2

    -   ### SORT\_BY\_ADDRESS3

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ADDRESS3

    -   ### SORT\_BY\_CITY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CITY

    -   ### SORT\_BY\_STATE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_STATE

    -   ### SORT\_BY\_PROVINCE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PROVINCE

    -   ### SORT\_BY\_ZIPCODE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ZIPCODE

    -   ### SORT\_BY\_COUNTRY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_COUNTRY

    -   ### SORT\_BY\_TITLE\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TITLE\_ID

    -   ### SORT\_BY\_TITLENAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TITLENAME

    -   ### SORT\_BY\_SUPERVISORNAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SUPERVISORNAME

    -   ### SORT\_BY\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATED

    -   ### SORT\_BY\_LASTMODIFIED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LASTMODIFIED

    -   ### SORT\_BY\_CUSTOMFIELD1

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CUSTOMFIELD1

    -   ### SORT\_BY\_CUSTOMFIELD2

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CUSTOMFIELD2

    -   ### SORT\_BY\_CUSTOMFIELD3

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CUSTOMFIELD3

    -   ### SORT\_BY\_CUSTOMFIELD4

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CUSTOMFIELD4

    -   ### SORT\_BY\_CUSTOMFIELD5

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CUSTOMFIELD5

    -   ### SORT\_BY\_CUSTOMFIELD6

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CUSTOMFIELD6

    -   ### SORT\_BY\_CUSTOMFIELD7

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CUSTOMFIELD7

    -   ### SORT\_BY\_CUSTOMFIELD8

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CUSTOMFIELD8

    -   ### SORT\_BY\_CUSTOMFIELD9

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CUSTOMFIELD9

    -   ### SORT\_BY\_CUSTOMFIELD10

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CUSTOMFIELD10

    -   ### USER\_TYPE\_BASIC

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") USER\_TYPE\_BASIC

        the Ids for the user types: basic and system administrator, that can be set in the `userTypeId` field. Basic and System Administrator will be returned in the `userTypeName` field respectively.

    -   ### USER\_TYPE\_SYS\_ADMIN

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") USER\_TYPE\_SYS\_ADMIN

-   ## Constructor Details

    -   ### UserProfile

        public UserProfile()

-   ## Method Details

    -   ### setPhoneOffice

        public void setPhoneOffice([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") phoneOffice\_)

    -   ### getPhoneOffice

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPhoneOffice()

    -   ### setPhoneMobile

        public void setPhoneMobile([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") phoneMobile\_)

    -   ### getPhoneMobile

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPhoneMobile()

    -   ### setPhoneHome

        public void setPhoneHome([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") phoneHome\_)

    -   ### getPhoneHome

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPhoneHome()

    -   ### setAddress1

        public void setAddress1([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") address1\_)

    -   ### getAddress1

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAddress1()

    -   ### setAddress2

        public void setAddress2([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") address2\_)

    -   ### getAddress2

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAddress2()

    -   ### setAddress3

        public void setAddress3([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") address3\_)

    -   ### getAddress3

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAddress3()

    -   ### setCity

        public void setCity([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") city\_)

    -   ### getCity

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCity()

    -   ### setState

        public void setState([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") state\_)

    -   ### getState

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getState()

    -   ### setProvince

        public void setProvince([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") province\_)

    -   ### getProvince

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProvince()

    -   ### setZipCode

        public void setZipCode([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") zipcode\_)

    -   ### getZipCode

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getZipCode()

    -   ### setCountry

        public void setCountry([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") country\_)

    -   ### getCountry

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCountry()

    -   ### getLocale

        public [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getLocale()

    -   ### setLocale

        public void setLocale([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

    -   ### getTimeZone

        public [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") getTimeZone()

    -   ### setTimeZone

        public void setTimeZone([TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") timeZone\_)

    -   ### setConfirmPassword

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setConfirmPassword([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") confirmPassword\_)

        Deprecated.

        Since 6.0.2, use `#setUserPassword(String)`

    -   ### getConfirmPassword

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") @Transient public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getConfirmPassword()

        Deprecated.

        Since 6.0.2, use [`User.getUserPassword()`](User.html#getUserPassword\(\))

    -   ### setUserTypeId

        public void setUserTypeId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userTypeId\_)

    -   ### getUserTypeId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUserTypeId()

    -   ### setUserTypeName

        public void setUserTypeName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userTypeName\_)

    -   ### getUserTypeName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUserTypeName()

    -   ### setTitleId

        public void setTitleId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") titleId\_)

    -   ### getTitleId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getTitleId()

    -   ### setTitleName

        public void setTitleName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") titleName\_)

    -   ### getTitleName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTitleName()

    -   ### setSupervisorName

        public void setSupervisorName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") supervisorName\_)

    -   ### getSupervisorName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getSupervisorName()

    -   ### setCreated

        public void setCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") created\_)

    -   ### getCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getCreated()

    -   ### setLastModified

        public void setLastModified([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lastModified\_)

    -   ### getLastModified

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getLastModified()

    -   ### setCustomField1

        public void setCustomField1([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField1\_)

    -   ### getCustomField1

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomField1()

    -   ### setCustomField2

        public void setCustomField2([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField2\_)

    -   ### getCustomField2

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomField2()

    -   ### setCustomField3

        public void setCustomField3([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField3\_)

    -   ### getCustomField3

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomField3()

    -   ### setCustomField4

        public void setCustomField4([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField4\_)

    -   ### getCustomField4

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomField4()

    -   ### setCustomField5

        public void setCustomField5([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField5\_)

    -   ### getCustomField5

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomField5()

    -   ### setCustomField6

        public void setCustomField6([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField6\_)

    -   ### getCustomField6

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomField6()

    -   ### setCustomField7

        public void setCustomField7([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField7\_)

    -   ### getCustomField7

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomField7()

    -   ### setCustomField8

        public void setCustomField8([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField8\_)

    -   ### getCustomField8

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomField8()

    -   ### setCustomField9

        public void setCustomField9([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField9\_)

    -   ### getCustomField9

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomField9()

    -   ### setCustomField10

        public void setCustomField10([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customField10\_)

    -   ### getCustomField10

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomField10()

    -   ### getProcessModelerPreferredView

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getProcessModelerPreferredView()

    -   ### setProcessModelerPreferredView

        public void setProcessModelerPreferredView([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") processModelerPreferredView\_)

    -   ### getBlurb

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getBlurb()

        Returns the User's blurb text

        Returns:

        the User's blurb text

    -   ### setBlurb

        public void setBlurb([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") blurb)

        Sets the User's blurb text

        Parameters:

        `blurb` -

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`