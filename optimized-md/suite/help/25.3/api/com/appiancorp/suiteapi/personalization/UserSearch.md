---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/UserSearch.html
original_path: api/com/appiancorp/suiteapi/personalization/UserSearch.html
version: "25.3"
title: "Class UserSearch"
page_id: "api/com/appiancorp/suiteapi/personalization/UserSearch"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class UserSearch

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.personalization.UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization")

[com.appiancorp.suiteapi.personalization.User](User.html "class in com.appiancorp.suiteapi.personalization")

[com.appiancorp.suiteapi.personalization.UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")

com.appiancorp.suiteapi.personalization.UserSearch

All Implemented Interfaces:

`com.appiancorp.asl3.servicefw.connect.ASLIdentity`, `com.appiancorp.services.ASLIdentity`, `[LocalStringId](../common/LocalStringId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class UserSearch extends [UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")

This represents the User search object. The `UserSearch` object should be populated with the user fields to be searched on, and the criteria to be used in performing the search. For example, the `UserSearch` object might have the `username` field set to "john.doe", the `lastName` fields set to "Doe", the `operatorUsername` field set to [`Operator.EQUALS`](Operator.html#EQUALS) and the `operatorLastName` field set to [`Operator.ENDS_WITH`](Operator.html#ENDS_WITH). A call to [`UserService.findUsers(UserSearch, boolean)`](UserService.html#findUsers\(com.appiancorp.suiteapi.personalization.UserSearch,boolean\)) with this `UserSearch` object will return all users whose username is "john.doe", and whose last name ends with "Doe". See [`Operator`](Operator.html "class in com.appiancorp.suiteapi.personalization") for valid operator values.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.UserSearch)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.personalization.[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")

    `[SORT_BY_ADDRESS1](UserProfile.html#SORT_BY_ADDRESS1), [SORT_BY_ADDRESS2](UserProfile.html#SORT_BY_ADDRESS2), [SORT_BY_ADDRESS3](UserProfile.html#SORT_BY_ADDRESS3), [SORT_BY_CITY](UserProfile.html#SORT_BY_CITY), [SORT_BY_COUNTRY](UserProfile.html#SORT_BY_COUNTRY), [SORT_BY_CREATED](UserProfile.html#SORT_BY_CREATED), [SORT_BY_CUSTOMFIELD1](UserProfile.html#SORT_BY_CUSTOMFIELD1), [SORT_BY_CUSTOMFIELD10](UserProfile.html#SORT_BY_CUSTOMFIELD10), [SORT_BY_CUSTOMFIELD2](UserProfile.html#SORT_BY_CUSTOMFIELD2), [SORT_BY_CUSTOMFIELD3](UserProfile.html#SORT_BY_CUSTOMFIELD3), [SORT_BY_CUSTOMFIELD4](UserProfile.html#SORT_BY_CUSTOMFIELD4), [SORT_BY_CUSTOMFIELD5](UserProfile.html#SORT_BY_CUSTOMFIELD5), [SORT_BY_CUSTOMFIELD6](UserProfile.html#SORT_BY_CUSTOMFIELD6), [SORT_BY_CUSTOMFIELD7](UserProfile.html#SORT_BY_CUSTOMFIELD7), [SORT_BY_CUSTOMFIELD8](UserProfile.html#SORT_BY_CUSTOMFIELD8), [SORT_BY_CUSTOMFIELD9](UserProfile.html#SORT_BY_CUSTOMFIELD9), [SORT_BY_LASTMODIFIED](UserProfile.html#SORT_BY_LASTMODIFIED), [SORT_BY_PHONEHOME](UserProfile.html#SORT_BY_PHONEHOME), [SORT_BY_PHONEMOBILE](UserProfile.html#SORT_BY_PHONEMOBILE), [SORT_BY_PHONEOFFICE](UserProfile.html#SORT_BY_PHONEOFFICE), [SORT_BY_PROVINCE](UserProfile.html#SORT_BY_PROVINCE), [SORT_BY_STATE](UserProfile.html#SORT_BY_STATE), [SORT_BY_SUPERVISORNAME](UserProfile.html#SORT_BY_SUPERVISORNAME), [SORT_BY_TITLE_ID](UserProfile.html#SORT_BY_TITLE_ID), [SORT_BY_TITLENAME](UserProfile.html#SORT_BY_TITLENAME), [SORT_BY_ZIPCODE](UserProfile.html#SORT_BY_ZIPCODE), [USER_TYPE_BASIC](UserProfile.html#USER_TYPE_BASIC), [USER_TYPE_SYS_ADMIN](UserProfile.html#USER_TYPE_SYS_ADMIN)`

    ### Fields inherited from class com.appiancorp.suiteapi.personalization.[User](User.html "class in com.appiancorp.suiteapi.personalization")

    `[SORT_BY_ID](User.html#SORT_BY_ID), [SORT_BY_PASSWORD](User.html#SORT_BY_PASSWORD), [SORT_BY_USERNAME](User.html#SORT_BY_USERNAME), [USER_ROLE_ADMINISTRATOR](User.html#USER_ROLE_ADMINISTRATOR), [USER_ROLE_CREATOR](User.html#USER_ROLE_CREATOR), [USER_ROLE_MEMBER](User.html#USER_ROLE_MEMBER), [USER_ROLE_VIEWER](User.html#USER_ROLE_VIEWER)`

    ### Fields inherited from class com.appiancorp.suiteapi.personalization.[UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization")

    `[SORT_BY_DISPLAYNAME](UserBase.html#SORT_BY_DISPLAYNAME), [SORT_BY_EMAIL](UserBase.html#SORT_BY_EMAIL), [SORT_BY_FIRSTNAME](UserBase.html#SORT_BY_FIRSTNAME), [SORT_BY_LASTNAME](UserBase.html#SORT_BY_LASTNAME), [SORT_BY_MIDDLENAME](UserBase.html#SORT_BY_MIDDLENAME), [SORT_BY_SOCIALSECURITYNUMBER](UserBase.html#SORT_BY_SOCIALSECURITYNUMBER), [STATUS_ACTIVE](UserBase.html#STATUS_ACTIVE), [STATUS_DEACTIVATED](UserBase.html#STATUS_DEACTIVATED)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UserSearch](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getGroupId](#getGroupId\(\))()`

    Gets the group ID

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGroupName](#getGroupName\(\))()`

    Gets the group name

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorCustomField1](#getOperatorCustomField1\(\))()`

    Gets the operator to be applied to custom field 1

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorCustomField10](#getOperatorCustomField10\(\))()`

    Gets the operator to be applied to custom field 10

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorCustomField2](#getOperatorCustomField2\(\))()`

    Gets the operator to be applied to custom field 2

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorCustomField3](#getOperatorCustomField3\(\))()`

    Gets the operator to be applied to custom field 3

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorCustomField4](#getOperatorCustomField4\(\))()`

    Gets the operator to be applied to custom field 4

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorCustomField5](#getOperatorCustomField5\(\))()`

    Gets the operator to be applied to custom field 5

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorCustomField6](#getOperatorCustomField6\(\))()`

    Gets the operator to be applied to custom field 6

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorCustomField7](#getOperatorCustomField7\(\))()`

    Gets the operator to be applied to custom field 7

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorCustomField8](#getOperatorCustomField8\(\))()`

    Gets the operator to be applied to custom field 8

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorCustomField9](#getOperatorCustomField9\(\))()`

    Gets the operator to be applied to custom field 9

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorDisplayName](#getOperatorDisplayName\(\))()`

    Gets the operator to be applied to the display name.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorEmail](#getOperatorEmail\(\))()`

    Gets the operator to be applied to the email.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorFirstName](#getOperatorFirstName\(\))()`

    Gets the operator to be applied to the first name.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorGroupName](#getOperatorGroupName\(\))()`

    Gets the operator to be applied to the group name

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorLastName](#getOperatorLastName\(\))()`

    Gets the operator to be applied to the last name.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorMiddleName](#getOperatorMiddleName\(\))()`

    Gets the operator to be applied to the middle name.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorSocialSecurityNumber](#getOperatorSocialSecurityNumber\(\))()`

    Gets the operator to be applied to the social security number.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorSupervisorName](#getOperatorSupervisorName\(\))()`

    Gets the operator to be applied to the supervisor name

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorTitleName](#getOperatorTitleName\(\))()`

    Gets the operator to be applied to the title name

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorUsername](#getOperatorUsername\(\))()`

    Gets the operator to be applied to the username.

    `void`

    `[setGroupId](#setGroupId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Sets the group ID

    `void`

    `[setGroupName](#setGroupName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupName_)`

    Sets the group name

    `void`

    `[setOperatorCustomField1](#setOperatorCustomField1\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField1_)`

    Sets the operator to be applied to custom field 1

    `void`

    `[setOperatorCustomField10](#setOperatorCustomField10\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField10_)`

    Sets the operator to be applied to custom field 10

    `void`

    `[setOperatorCustomField2](#setOperatorCustomField2\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField2_)`

    Sets the operator to be applied to custom field 2

    `void`

    `[setOperatorCustomField3](#setOperatorCustomField3\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField3_)`

    Sets the operator to be applied to custom field 3

    `void`

    `[setOperatorCustomField4](#setOperatorCustomField4\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField4_)`

    Sets the operator to be applied to custom field 4

    `void`

    `[setOperatorCustomField5](#setOperatorCustomField5\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField5_)`

    Sets the operator to be applied to custom field 5

    `void`

    `[setOperatorCustomField6](#setOperatorCustomField6\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField6_)`

    Sets the operator to be applied to custom field 6

    `void`

    `[setOperatorCustomField7](#setOperatorCustomField7\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField7_)`

    Sets the operator to be applied to custom field 7

    `void`

    `[setOperatorCustomField8](#setOperatorCustomField8\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField8_)`

    Sets the operator to be applied to custom field 8

    `void`

    `[setOperatorCustomField9](#setOperatorCustomField9\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField9_)`

    Sets the operator to be applied to custom field 9

    `void`

    `[setOperatorDisplayName](#setOperatorDisplayName\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorDisplayName_)`

    Sets the operator to be applied to the display name

    `void`

    `[setOperatorEmail](#setOperatorEmail\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorEmail_)`

    Sets the operator to be applied to the email

    `void`

    `[setOperatorFirstName](#setOperatorFirstName\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorFirstName_)`

    Sets the operator to be applied to the first name

    `void`

    `[setOperatorGroupName](#setOperatorGroupName\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorGroupName_)`

    Sets the operator to be applied to the group name

    `void`

    `[setOperatorLastName](#setOperatorLastName\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorLastName_)`

    Sets the operator to be applied to the last name

    `void`

    `[setOperatorMiddleName](#setOperatorMiddleName\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorMiddleName_)`

    Sets the operator to be applied to the middle name

    `void`

    `[setOperatorSocialSecurityNumber](#setOperatorSocialSecurityNumber\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorSocialSecurityNumber_)`

    Sets the operator to be applied to the social security number

    `void`

    `[setOperatorSupervisorName](#setOperatorSupervisorName\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorSupervisorName_)`

    Sets the operator to be applied to the supervisor name

    `void`

    `[setOperatorTitleName](#setOperatorTitleName\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorTitleName_)`

    Sets the operator to be applied to the title name

    `void`

    `[setOperatorUsername](#setOperatorUsername\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorUsername_)`

    Sets the operator to be applied to the username

    ### Methods inherited from class com.appiancorp.suiteapi.personalization.[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")

    `[getAddress1](UserProfile.html#getAddress1\(\)), [getAddress2](UserProfile.html#getAddress2\(\)), [getAddress3](UserProfile.html#getAddress3\(\)), [getBlurb](UserProfile.html#getBlurb\(\)), [getCity](UserProfile.html#getCity\(\)), [getConfirmPassword](UserProfile.html#getConfirmPassword\(\)), [getCountry](UserProfile.html#getCountry\(\)), [getCreated](UserProfile.html#getCreated\(\)), [getCustomField1](UserProfile.html#getCustomField1\(\)), [getCustomField10](UserProfile.html#getCustomField10\(\)), [getCustomField2](UserProfile.html#getCustomField2\(\)), [getCustomField3](UserProfile.html#getCustomField3\(\)), [getCustomField4](UserProfile.html#getCustomField4\(\)), [getCustomField5](UserProfile.html#getCustomField5\(\)), [getCustomField6](UserProfile.html#getCustomField6\(\)), [getCustomField7](UserProfile.html#getCustomField7\(\)), [getCustomField8](UserProfile.html#getCustomField8\(\)), [getCustomField9](UserProfile.html#getCustomField9\(\)), [getLastModified](UserProfile.html#getLastModified\(\)), [getLocale](UserProfile.html#getLocale\(\)), [getPhoneHome](UserProfile.html#getPhoneHome\(\)), [getPhoneMobile](UserProfile.html#getPhoneMobile\(\)), [getPhoneOffice](UserProfile.html#getPhoneOffice\(\)), [getProcessModelerPreferredView](UserProfile.html#getProcessModelerPreferredView\(\)), [getProvince](UserProfile.html#getProvince\(\)), [getState](UserProfile.html#getState\(\)), [getSupervisorName](UserProfile.html#getSupervisorName\(\)), [getTimeZone](UserProfile.html#getTimeZone\(\)), [getTitleId](UserProfile.html#getTitleId\(\)), [getTitleName](UserProfile.html#getTitleName\(\)), [getUserTypeId](UserProfile.html#getUserTypeId\(\)), [getUserTypeName](UserProfile.html#getUserTypeName\(\)), [getZipCode](UserProfile.html#getZipCode\(\)), [setAddress1](UserProfile.html#setAddress1\(java.lang.String\)), [setAddress2](UserProfile.html#setAddress2\(java.lang.String\)), [setAddress3](UserProfile.html#setAddress3\(java.lang.String\)), [setBlurb](UserProfile.html#setBlurb\(java.lang.String\)), [setCity](UserProfile.html#setCity\(java.lang.String\)), [setConfirmPassword](UserProfile.html#setConfirmPassword\(java.lang.String\)), [setCountry](UserProfile.html#setCountry\(java.lang.String\)), [setCreated](UserProfile.html#setCreated\(java.sql.Timestamp\)), [setCustomField1](UserProfile.html#setCustomField1\(java.lang.String\)), [setCustomField10](UserProfile.html#setCustomField10\(java.lang.String\)), [setCustomField2](UserProfile.html#setCustomField2\(java.lang.String\)), [setCustomField3](UserProfile.html#setCustomField3\(java.lang.String\)), [setCustomField4](UserProfile.html#setCustomField4\(java.lang.String\)), [setCustomField5](UserProfile.html#setCustomField5\(java.lang.String\)), [setCustomField6](UserProfile.html#setCustomField6\(java.lang.String\)), [setCustomField7](UserProfile.html#setCustomField7\(java.lang.String\)), [setCustomField8](UserProfile.html#setCustomField8\(java.lang.String\)), [setCustomField9](UserProfile.html#setCustomField9\(java.lang.String\)), [setLastModified](UserProfile.html#setLastModified\(java.sql.Timestamp\)), [setLocale](UserProfile.html#setLocale\(java.util.Locale\)), [setPhoneHome](UserProfile.html#setPhoneHome\(java.lang.String\)), [setPhoneMobile](UserProfile.html#setPhoneMobile\(java.lang.String\)), [setPhoneOffice](UserProfile.html#setPhoneOffice\(java.lang.String\)), [setProcessModelerPreferredView](UserProfile.html#setProcessModelerPreferredView\(java.lang.Integer\)), [setProvince](UserProfile.html#setProvince\(java.lang.String\)), [setState](UserProfile.html#setState\(java.lang.String\)), [setSupervisorName](UserProfile.html#setSupervisorName\(java.lang.String\)), [setTimeZone](UserProfile.html#setTimeZone\(java.util.TimeZone\)), [setTitleId](UserProfile.html#setTitleId\(java.lang.Long\)), [setTitleName](UserProfile.html#setTitleName\(java.lang.String\)), [setUserTypeId](UserProfile.html#setUserTypeId\(java.lang.Long\)), [setUserTypeName](UserProfile.html#setUserTypeName\(java.lang.String\)), [setZipCode](UserProfile.html#setZipCode\(java.lang.String\)), [toString](UserProfile.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.personalization.[User](User.html "class in com.appiancorp.suiteapi.personalization")

    `[getId](User.html#getId\(\)), [getIdentifier](User.html#getIdentifier\(\)), [getIdentity](User.html#getIdentity\(\)), [getPassword](User.html#getPassword\(\)), [getPasswordModified](User.html#getPasswordModified\(\)), [getStringId](User.html#getStringId\(\)), [getUsernames](User.html#getUsernames\(com.appiancorp.suiteapi.personalization.User%5B%5D\)), [getUserPassword](User.html#getUserPassword\(\)), [getUuid](User.html#getUuid\(\)), [isTemporaryPassword](User.html#isTemporaryPassword\(\)), [isUserLocked](User.html#isUserLocked\(\)), [setId](User.html#setId\(java.lang.Long\)), [setPassword](User.html#setPassword\(java.lang.String\)), [setPasswordModified](User.html#setPasswordModified\(java.sql.Timestamp\)), [setStringId](User.html#setStringId\(java.lang.String\)), [setTemporaryPassword](User.html#setTemporaryPassword\(boolean\)), [setUserLocked](User.html#setUserLocked\(boolean\)), [setUserPassword](User.html#setUserPassword\(byte%5B%5D\)), [setUuid](User.html#setUuid\(java.lang.String\))`

    ### Methods inherited from class com.appiancorp.suiteapi.personalization.[UserBase](UserBase.html "class in com.appiancorp.suiteapi.personalization")

    `[getDisplayName](UserBase.html#getDisplayName\(\)), [getEmail](UserBase.html#getEmail\(\)), [getFavorite](UserBase.html#getFavorite\(\)), [getFirstName](UserBase.html#getFirstName\(\)), [getLastName](UserBase.html#getLastName\(\)), [getMiddleName](UserBase.html#getMiddleName\(\)), [getSocialSecurityNumber](UserBase.html#getSocialSecurityNumber\(\)), [getStatus](UserBase.html#getStatus\(\)), [getUsername](UserBase.html#getUsername\(\)), [setDisplayName](UserBase.html#setDisplayName\(java.lang.String\)), [setEmail](UserBase.html#setEmail\(java.lang.String\)), [setFavorite](UserBase.html#setFavorite\(boolean\)), [setFirstName](UserBase.html#setFirstName\(java.lang.String\)), [setLastName](UserBase.html#setLastName\(java.lang.String\)), [setMiddleName](UserBase.html#setMiddleName\(java.lang.String\)), [setSocialSecurityNumber](UserBase.html#setSocialSecurityNumber\(java.lang.String\)), [setStatus](UserBase.html#setStatus\(int\)), [setUsername](UserBase.html#setUsername\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UserSearch

        public UserSearch()

-   ## Method Details

    -   ### getOperatorUsername

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorUsername()

        Gets the operator to be applied to the username.

        Returns:

        the operator

    -   ### setOperatorUsername

        public void setOperatorUsername([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorUsername\_)

        Sets the operator to be applied to the username

        Parameters:

        `operatorUsername_` - the operator

    -   ### getOperatorFirstName

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorFirstName()

        Gets the operator to be applied to the first name.

        Returns:

        the operator

    -   ### setOperatorFirstName

        public void setOperatorFirstName([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorFirstName\_)

        Sets the operator to be applied to the first name

        Parameters:

        `operatorFirstName_` - the operator

    -   ### getOperatorMiddleName

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorMiddleName()

        Gets the operator to be applied to the middle name.

        Returns:

        the operator

    -   ### setOperatorMiddleName

        public void setOperatorMiddleName([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorMiddleName\_)

        Sets the operator to be applied to the middle name

        Parameters:

        `operatorMiddleName_` - the operator

    -   ### getOperatorLastName

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorLastName()

        Gets the operator to be applied to the last name.

        Returns:

        the operator

    -   ### setOperatorLastName

        public void setOperatorLastName([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorLastName\_)

        Sets the operator to be applied to the last name

        Parameters:

        `operatorLastName_` - the operator

    -   ### getOperatorDisplayName

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorDisplayName()

        Gets the operator to be applied to the display name.

        Returns:

        the operator

    -   ### setOperatorDisplayName

        public void setOperatorDisplayName([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorDisplayName\_)

        Sets the operator to be applied to the display name

        Parameters:

        `operatorDisplayName_` - the operator

    -   ### getOperatorEmail

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorEmail()

        Gets the operator to be applied to the email.

        Returns:

        the operator

    -   ### setOperatorEmail

        public void setOperatorEmail([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorEmail\_)

        Sets the operator to be applied to the email

        Parameters:

        `operatorEmail_` - the operator

    -   ### getOperatorSocialSecurityNumber

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorSocialSecurityNumber()

        Gets the operator to be applied to the social security number.

        Returns:

        the operator

    -   ### setOperatorSocialSecurityNumber

        public void setOperatorSocialSecurityNumber([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorSocialSecurityNumber\_)

        Sets the operator to be applied to the social security number

        Parameters:

        `operatorSocialSecurityNumber_` - the operator

    -   ### getGroupId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getGroupId()

        Gets the group ID

        Returns:

        the group ID.

    -   ### setGroupId

        public void setGroupId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_)

        Sets the group ID

        Parameters:

        `groupId_` - the group ID

    -   ### getGroupName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGroupName()

        Gets the group name

        Returns:

        the group name.

    -   ### setGroupName

        public void setGroupName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupName\_)

        Sets the group name

        Parameters:

        `groupName_` - the group name

    -   ### getOperatorCustomField1

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorCustomField1()

        Gets the operator to be applied to custom field 1

        Returns:

        the operator

    -   ### setOperatorCustomField1

        public void setOperatorCustomField1([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField1\_)

        Sets the operator to be applied to custom field 1

        Parameters:

        `operatorCustomField1_` - the operator

    -   ### getOperatorCustomField10

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorCustomField10()

        Gets the operator to be applied to custom field 10

        Returns:

        the operator

    -   ### setOperatorCustomField10

        public void setOperatorCustomField10([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField10\_)

        Sets the operator to be applied to custom field 10

        Parameters:

        `operatorCustomField10_` - the operator

    -   ### getOperatorCustomField2

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorCustomField2()

        Gets the operator to be applied to custom field 2

        Returns:

        the operator

    -   ### setOperatorCustomField2

        public void setOperatorCustomField2([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField2\_)

        Sets the operator to be applied to custom field 2

        Parameters:

        `operatorCustomField2_` - the operator

    -   ### getOperatorCustomField3

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorCustomField3()

        Gets the operator to be applied to custom field 3

        Returns:

        the operator

    -   ### setOperatorCustomField3

        public void setOperatorCustomField3([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField3\_)

        Sets the operator to be applied to custom field 3

        Parameters:

        `operatorCustomField3_` - the operator

    -   ### getOperatorCustomField4

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorCustomField4()

        Gets the operator to be applied to custom field 4

        Returns:

        the operator

    -   ### setOperatorCustomField4

        public void setOperatorCustomField4([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField4\_)

        Sets the operator to be applied to custom field 4

        Parameters:

        `operatorCustomField4_` - the operator

    -   ### getOperatorCustomField5

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorCustomField5()

        Gets the operator to be applied to custom field 5

        Returns:

        the operator

    -   ### setOperatorCustomField5

        public void setOperatorCustomField5([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField5\_)

        Sets the operator to be applied to custom field 5

        Parameters:

        `operatorCustomField5_` - the operator

    -   ### getOperatorCustomField6

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorCustomField6()

        Gets the operator to be applied to custom field 6

        Returns:

        the operator

    -   ### setOperatorCustomField6

        public void setOperatorCustomField6([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField6\_)

        Sets the operator to be applied to custom field 6

        Parameters:

        `operatorCustomField6_` - the operator

    -   ### getOperatorCustomField7

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorCustomField7()

        Gets the operator to be applied to custom field 7

        Returns:

        the operator

    -   ### setOperatorCustomField7

        public void setOperatorCustomField7([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField7\_)

        Sets the operator to be applied to custom field 7

        Parameters:

        `operatorCustomField7_` - the operator

    -   ### getOperatorCustomField8

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorCustomField8()

        Gets the operator to be applied to custom field 8

        Returns:

        the operator

    -   ### setOperatorCustomField8

        public void setOperatorCustomField8([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField8\_)

        Sets the operator to be applied to custom field 8

        Parameters:

        `operatorCustomField8_` - the operator

    -   ### getOperatorCustomField9

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorCustomField9()

        Gets the operator to be applied to custom field 9

        Returns:

        the operator

    -   ### setOperatorCustomField9

        public void setOperatorCustomField9([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorCustomField9\_)

        Sets the operator to be applied to custom field 9

        Parameters:

        `operatorCustomField9_` - the operator

    -   ### getOperatorGroupName

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorGroupName()

        Gets the operator to be applied to the group name

        Returns:

        the operator

    -   ### setOperatorGroupName

        public void setOperatorGroupName([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorGroupName\_)

        Sets the operator to be applied to the group name

        Parameters:

        `operatorGroupName_` - the operator

    -   ### getOperatorSupervisorName

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorSupervisorName()

        Gets the operator to be applied to the supervisor name

        Returns:

        the operator

    -   ### setOperatorSupervisorName

        public void setOperatorSupervisorName([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorSupervisorName\_)

        Sets the operator to be applied to the supervisor name

        Parameters:

        `operatorSupervisorName_` - the operator

    -   ### getOperatorTitleName

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorTitleName()

        Gets the operator to be applied to the title name

        Returns:

        the operator

    -   ### setOperatorTitleName

        public void setOperatorTitleName([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorTitleName\_)

        Sets the operator to be applied to the title name

        Parameters:

        `operatorTitleName_` - the operator