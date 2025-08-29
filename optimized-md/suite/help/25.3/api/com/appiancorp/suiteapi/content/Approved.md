---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/Approved.html
original_path: api/com/appiancorp/suiteapi/content/Approved.html
version: "25.3"
title: "Class Approved"
page_id: "api/com/appiancorp/suiteapi/content/Approved"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class Approved

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.content.Approved

* * *

public class Approved extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This bean contains information about an approved action.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[APPROVED_TYPE_APPROVE](#APPROVED_TYPE_APPROVE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[APPROVED_TYPE_REJECT](#APPROVED_TYPE_REJECT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Approved](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getAction](#getAction\(\))()`

    Get the action which was approved/rejected

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getApprovedType](#getApprovedType\(\))()`

    Returns the approved type.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns the content id upon which the action was taken.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getLogId](#getLogId\(\))()`

    Get the log id.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUsername](#getUsername\(\))()`

    Returns the user that requested the action.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getVersionNumber](#getVersionNumber\(\))()`

    Gets the version number of the content being approved/rejected or `null` if the version is the current one ([`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT))

    `void`

    `[setAction](#setAction\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") action_)`

    Set the action approved/rejected.

    `void`

    `[setApprovedType](#setApprovedType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") approved)`

    Sets the approved type.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Set the content id upon which the action was taken.

    `void`

    `[setLogId](#setLogId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") logId_)`

    Set the log id.

    `void`

    `[setUsername](#setUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Set the user that requested the action.

    `void`

    `[setVersionNumber](#setVersionNumber\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber)`

    Sets the version number.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### APPROVED\_TYPE\_REJECT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") APPROVED\_TYPE\_REJECT

    -   ### APPROVED\_TYPE\_APPROVE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") APPROVED\_TYPE\_APPROVE

-   ## Constructor Details

    -   ### Approved

        public Approved()

-   ## Method Details

    -   ### getAction

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getAction()

        Get the action which was approved/rejected

        Returns:

        the action approved/rejected. One of [`ContentConstants.ACT_CREATE`](ContentConstants.html#ACT_CREATE), [`ContentConstants.ACT_DEACTIVATE`](ContentConstants.html#ACT_DEACTIVATE), or [`ContentConstants.ACT_DELETE`](ContentConstants.html#ACT_DELETE)

        See Also:

        -   [`setAction(Integer)`](#setAction\(java.lang.Integer\))

    -   ### setAction

        public void setAction([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") action\_)

        Set the action approved/rejected.

        Parameters:

        `action_` - One of [`ContentConstants.ACT_CREATE`](ContentConstants.html#ACT_CREATE), [`ContentConstants.ACT_DEACTIVATE`](ContentConstants.html#ACT_DEACTIVATE), or [`ContentConstants.ACT_DELETE`](ContentConstants.html#ACT_DELETE)

        See Also:

        -   [`getAction()`](#getAction\(\))

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Returns the content id upon which the action was taken.

        Returns:

        the content id

        See Also:

        -   [`setId(Long)`](#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Set the content id upon which the action was taken.

        Parameters:

        `id_` - content id

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### getLogId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getLogId()

        Get the log id.

        Returns:

        the log id

        See Also:

        -   [`setLogId(Long)`](#setLogId\(java.lang.Long\))

    -   ### setLogId

        public void setLogId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") logId\_)

        Set the log id.

        Parameters:

        `logId_` - the log id

        See Also:

        -   [`getLogId()`](#getLogId\(\))

    -   ### getUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUsername()

        Returns the user that requested the action.

        Returns:

        the username

        See Also:

        -   [`setUsername(String)`](#setUsername\(java.lang.String\))

    -   ### setUsername

        public void setUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_)

        Set the user that requested the action.

        Parameters:

        `username_` - the username

        See Also:

        -   [`getUsername()`](#getUsername\(\))

    -   ### getApprovedType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getApprovedType()

        Returns the approved type. One of `#approved_APPROVE` or [`APPROVED_TYPE_REJECT`](#APPROVED_TYPE_REJECT) constants

        Returns:

        approved type

    -   ### setApprovedType

        public void setApprovedType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") approved)

        Sets the approved type. See [`getApprovedType()`](#getApprovedType\(\))

        Parameters:

        `approved` - One of [`APPROVED_TYPE_APPROVE`](#APPROVED_TYPE_APPROVE) or [`APPROVED_TYPE_REJECT`](#APPROVED_TYPE_REJECT) constants

    -   ### getVersionNumber

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getVersionNumber()

        Gets the version number of the content being approved/rejected or `null` if the version is the current one ([`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT))

        Returns:

        version number or `null` if version is [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT)

    -   ### setVersionNumber

        public void setVersionNumber([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber)

        Sets the version number. See [`getVersionNumber()`](#getVersionNumber\(\))

        Parameters:

        `versionNumber` - version number of the content being approved/rejected

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`