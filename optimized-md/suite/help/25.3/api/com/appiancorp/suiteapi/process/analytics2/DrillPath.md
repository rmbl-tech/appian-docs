---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/DrillPath.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/DrillPath.html
version: "25.3"
title: "Class DrillPath"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/DrillPath"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class DrillPath

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.DrillPath

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class DrillPath extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

The `DrillPath` bean describes how data in a report `Column` links to more information.

The type of the link is given in the `linkType` field. The type can be any one of the `LINK_TYPE_XXX` constants found in this class.

Based on the `linkType`, the `expression` field specifies a value which defines the specific object to link to. For example, if the `linkType` is `LINK_TYPE_TASK`, then the `expression` field will determine the Id of the Task to link to. There are two exceptions to this rule. If the type is `LINK_TYPE_REPORT`, then the `otherReportId` field is used to link to another report, the `otherReportColumnLocalId` specifies a `Column` which can be used to filter the destination report based on a filter value, which is stored in the `expression` field. If the type is `LINK_TYPE_DASHBOARD_PAGE`, then the `dashboardId` field is used and the `expression` is ignored.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.DrillPath)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[LINK_TYPE_COMMUNITY](#LINK_TYPE_COMMUNITY)`

    A constant indicating that this `DrillPath` links to a [`Community`](../../collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration").

    `static final int`

    `[LINK_TYPE_CONTENT](#LINK_TYPE_CONTENT)`

    A constant indicating that this `DrillPath` links to Content.

    `static final int`

    `[LINK_TYPE_DASHBOARD_PAGE](#LINK_TYPE_DASHBOARD_PAGE)`

    A constant indicating that this `DrillPath` links to a Dashboard.

    `static final int`

    `[LINK_TYPE_DISCUSSION_THREAD](#LINK_TYPE_DISCUSSION_THREAD)`

    A constant indicating that this `DrillPath` links to a [`DiscussionThread`](../../forums/DiscussionThread.html "class in com.appiancorp.suiteapi.forums").

    `static final int`

    `[LINK_TYPE_DOCUMENT](#LINK_TYPE_DOCUMENT)`

    A constant indicating that this `DrillPath` links to a [`Document`](../../collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration").

    `static final int`

    `[LINK_TYPE_FOLDER](#LINK_TYPE_FOLDER)`

    A constant indicating that this `DrillPath` links to a [`Folder`](../../collaboration/Folder.html "class in com.appiancorp.suiteapi.collaboration").

    `static final int`

    `[LINK_TYPE_FORUM](#LINK_TYPE_FORUM)`

    A constant indicating that this `DrillPath` links to a [`Forum`](../../forums/Forum.html "class in com.appiancorp.suiteapi.forums").

    `static final int`

    `[LINK_TYPE_GROUP](#LINK_TYPE_GROUP)`

    A constant indicating that this `DrillPath` links to a [`Group`](../../personalization/Group.html "class in com.appiancorp.suiteapi.personalization").

    `static final int`

    `[LINK_TYPE_KNOWLEDGE_CENTER](#LINK_TYPE_KNOWLEDGE_CENTER)`

    A constant indicating that this `DrillPath` links to a [`KnowledgeCenter`](../../collaboration/KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

    `static final int`

    `[LINK_TYPE_MESSAGE](#LINK_TYPE_MESSAGE)`

    A constant indicating that this `DrillPath` links to a [`Message`](../../forums/Message.html "class in com.appiancorp.suiteapi.forums").

    `static final int`

    `[LINK_TYPE_PEOPLE](#LINK_TYPE_PEOPLE)`

    A constant indicating that this `DrillPath` links to [`TypedVariableUtils.People`](../TypedVariableUtils.People.html "class in com.appiancorp.suiteapi.process").

    `static final int`

    `[LINK_TYPE_PORTAL_PAGE](#LINK_TYPE_PORTAL_PAGE)`

    A constant indicating that this `DrillPath` links to a `PortalPage`.

    `static final int`

    `[LINK_TYPE_PROCESS_DASHBOARD](#LINK_TYPE_PROCESS_DASHBOARD)`

    A constant indicating that this `DrillPath` links to a Process Dashboard.

    `static final int`

    `[LINK_TYPE_PROCESS_DETAILS](#LINK_TYPE_PROCESS_DETAILS)`

    A constant indicating that this `DrillPath` links to Process Details.

    `static final int`

    `[LINK_TYPE_PROCESS_MODEL_DASHBOARD](#LINK_TYPE_PROCESS_MODEL_DASHBOARD)`

    A constant indicating that this `DrillPath` links to a Process Model Dashboard.

    `static final int`

    `[LINK_TYPE_PROCESS_MODEL_DETAILS](#LINK_TYPE_PROCESS_MODEL_DETAILS)`

    A constant indicating that this `DrillPath` links to [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process") Details.

    `static final int`

    `[LINK_TYPE_REPORT](#LINK_TYPE_REPORT)`

    A constant indicating that this `DrillPath` links to a Report.

    `static final int`

    `[LINK_TYPE_TASK](#LINK_TYPE_TASK)`

    A constant indicating that this `DrillPath`links to a Task.

    `static final int`

    `[LINK_TYPE_URL](#LINK_TYPE_URL)`

    A constant indicating that this `DrillPath` links to an external URL.

    `static final int`

    `[LINK_TYPE_USER](#LINK_TYPE_USER)`

    A constant indicating that this `DrillPath` links to a [`User`](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization").

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[DrillPath](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj_)`

    Is this DrillPath equal to the given object?

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDashboardId](#getDashboardId\(\))()`

    Gets the ID of the dashboard to which this `DrillPath` links.

    `boolean`

    `[getEnabled](#getEnabled\(\))()`

    Gets whether or not this `DrillPath` is enabled.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExpression](#getExpression\(\))()`

    Gets the expression which defines the value of the `DrillPath`.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getLinkType](#getLinkType\(\))()`

    Gets the type of link that this `DrillPath` represents.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getOtherReportColumnLocalId](#getOtherReportColumnLocalId\(\))()`

    Gets the `localId` of the [`Column`](Column.html "class in com.appiancorp.suiteapi.process.analytics2") by which the destination report will be filtered.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getOtherReportId](#getOtherReportId\(\))()`

    Gets the ID of the report to which this `DrillPath` links.

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setDashboardId](#setDashboardId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dashboardId_)`

    Sets the ID of the dashboard to which this `DrillPath` links.

    `void`

    `[setEnabled](#setEnabled\(boolean\))(boolean enabled_)`

    Sets whether or not this `DrillPath` is enabled.

    `void`

    `[setExpression](#setExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression_)`

    Sets the expression which defines the value of the `DrillPath`.

    `void`

    `[setLinkType](#setLinkType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") linkType_)`

    Sets the type of link that this `DrillPath` represents.

    `void`

    `[setOtherReportColumnLocalId](#setOtherReportColumnLocalId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") otherReportColumnLocalId_)`

    Sets the `localId` of the [`Column`](Column.html "class in com.appiancorp.suiteapi.process.analytics2") by which the destination report will be filtered.

    `void`

    `[setOtherReportId](#setOtherReportId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") otherReportId_)`

    Sets the ID of the report to which this `DrillPath` will link.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

    -   ### LINK\_TYPE\_PROCESS\_MODEL\_DETAILS

        public static final int LINK\_TYPE\_PROCESS\_MODEL\_DETAILS

        A constant indicating that this `DrillPath` links to [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process") Details.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_PROCESS_MODEL_DETAILS)

    -   ### LINK\_TYPE\_PROCESS\_DETAILS

        public static final int LINK\_TYPE\_PROCESS\_DETAILS

        A constant indicating that this `DrillPath` links to Process Details.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_PROCESS_DETAILS)

    -   ### LINK\_TYPE\_TASK

        public static final int LINK\_TYPE\_TASK

        A constant indicating that this `DrillPath`links to a Task.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_TASK)

    -   ### LINK\_TYPE\_REPORT

        public static final int LINK\_TYPE\_REPORT

        A constant indicating that this `DrillPath` links to a Report.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_REPORT)

    -   ### LINK\_TYPE\_DASHBOARD\_PAGE

        public static final int LINK\_TYPE\_DASHBOARD\_PAGE

        A constant indicating that this `DrillPath` links to a Dashboard.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_DASHBOARD_PAGE)

    -   ### LINK\_TYPE\_URL

        public static final int LINK\_TYPE\_URL

        A constant indicating that this `DrillPath` links to an external URL.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_URL)

    -   ### LINK\_TYPE\_PROCESS\_MODEL\_DASHBOARD

        public static final int LINK\_TYPE\_PROCESS\_MODEL\_DASHBOARD

        A constant indicating that this `DrillPath` links to a Process Model Dashboard.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_PROCESS_MODEL_DASHBOARD)

    -   ### LINK\_TYPE\_PROCESS\_DASHBOARD

        public static final int LINK\_TYPE\_PROCESS\_DASHBOARD

        A constant indicating that this `DrillPath` links to a Process Dashboard.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_PROCESS_DASHBOARD)

    -   ### LINK\_TYPE\_USER

        public static final int LINK\_TYPE\_USER

        A constant indicating that this `DrillPath` links to a [`User`](../../personalization/User.html "class in com.appiancorp.suiteapi.personalization").

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_USER)

    -   ### LINK\_TYPE\_GROUP

        public static final int LINK\_TYPE\_GROUP

        A constant indicating that this `DrillPath` links to a [`Group`](../../personalization/Group.html "class in com.appiancorp.suiteapi.personalization").

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_GROUP)

    -   ### LINK\_TYPE\_FORUM

        public static final int LINK\_TYPE\_FORUM

        A constant indicating that this `DrillPath` links to a [`Forum`](../../forums/Forum.html "class in com.appiancorp.suiteapi.forums").

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_FORUM)

    -   ### LINK\_TYPE\_DISCUSSION\_THREAD

        public static final int LINK\_TYPE\_DISCUSSION\_THREAD

        A constant indicating that this `DrillPath` links to a [`DiscussionThread`](../../forums/DiscussionThread.html "class in com.appiancorp.suiteapi.forums").

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_DISCUSSION_THREAD)

    -   ### LINK\_TYPE\_MESSAGE

        public static final int LINK\_TYPE\_MESSAGE

        A constant indicating that this `DrillPath` links to a [`Message`](../../forums/Message.html "class in com.appiancorp.suiteapi.forums").

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_MESSAGE)

    -   ### LINK\_TYPE\_DOCUMENT

        public static final int LINK\_TYPE\_DOCUMENT

        A constant indicating that this `DrillPath` links to a [`Document`](../../collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration").

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_DOCUMENT)

    -   ### LINK\_TYPE\_COMMUNITY

        public static final int LINK\_TYPE\_COMMUNITY

        A constant indicating that this `DrillPath` links to a [`Community`](../../collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration").

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_COMMUNITY)

    -   ### LINK\_TYPE\_KNOWLEDGE\_CENTER

        public static final int LINK\_TYPE\_KNOWLEDGE\_CENTER

        A constant indicating that this `DrillPath` links to a [`KnowledgeCenter`](../../collaboration/KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_KNOWLEDGE_CENTER)

    -   ### LINK\_TYPE\_FOLDER

        public static final int LINK\_TYPE\_FOLDER

        A constant indicating that this `DrillPath` links to a [`Folder`](../../collaboration/Folder.html "class in com.appiancorp.suiteapi.collaboration").

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_FOLDER)

    -   ### LINK\_TYPE\_CONTENT

        public static final int LINK\_TYPE\_CONTENT

        A constant indicating that this `DrillPath` links to Content.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_CONTENT)

    -   ### LINK\_TYPE\_PEOPLE

        public static final int LINK\_TYPE\_PEOPLE

        A constant indicating that this `DrillPath` links to [`TypedVariableUtils.People`](../TypedVariableUtils.People.html "class in com.appiancorp.suiteapi.process").

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_PEOPLE)

    -   ### LINK\_TYPE\_PORTAL\_PAGE

        public static final int LINK\_TYPE\_PORTAL\_PAGE

        A constant indicating that this `DrillPath` links to a `PortalPage`.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.DrillPath.LINK_TYPE_PORTAL_PAGE)

-   ## Constructor Details

    -   ### DrillPath

        public DrillPath()

-   ## Method Details

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj\_)

        Is this DrillPath equal to the given object?

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Clone this object. Note that this will make a deep copy of the value.

        Specified by:

        `[clone](../../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

    -   ### getDashboardId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDashboardId()

        Gets the ID of the dashboard to which this `DrillPath` links. This only applies for DrillPaths of type [`LINK_TYPE_DASHBOARD_PAGE`](#LINK_TYPE_DASHBOARD_PAGE).

        Returns:

        The ID of the dashboard to which this `DrillPath` links.

        See Also:

        -   [`setDashboardId(java.lang.Long)`](#setDashboardId\(java.lang.Long\))

    -   ### setDashboardId

        public void setDashboardId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dashboardId\_)

        Sets the ID of the dashboard to which this `DrillPath` links.

        Parameters:

        `dashboardId_` - The ID of the dashboard to which this `DrillPath` will link.

        See Also:

        -   [`getDashboardId()`](#getDashboardId\(\))
        -   [`getDashboardId()`](#getDashboardId\(\))

    -   ### getEnabled

        public boolean getEnabled()

        Gets whether or not this `DrillPath` is enabled. Enabled `DrillPath`s are applied when rendering a column for a report; disabled ones are not.

        Returns:

        A value of `true` if the `DrillPath` is enabled.

        See Also:

        -   [`setEnabled(boolean)`](#setEnabled\(boolean\))

    -   ### setEnabled

        public void setEnabled(boolean enabled\_)

        Sets whether or not this `DrillPath` is enabled.

        Parameters:

        `enabled_` - A value of `true` will enable this `DrillPath`

        See Also:

        -   [`getEnabled()`](#getEnabled\(\))

    -   ### getLinkType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getLinkType()

        Gets the type of link that this `DrillPath` represents.

        Returns:

        A constant representing the link type. It will be one of the `LINK_TYPE_XXX` constants found in this class.

        See Also:

        -   [`setLinkType(java.lang.Integer)`](#setLinkType\(java.lang.Integer\))

    -   ### setLinkType

        public void setLinkType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") linkType\_)

        Sets the type of link that this `DrillPath` represents.

        Parameters:

        `linkType_` - The link type to be set, which must be one of the `LINK_TYPE_XXX` constants found in this class.

        See Also:

        -   [`getLinkType()`](#getLinkType\(\))

    -   ### getOtherReportId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getOtherReportId()

        Gets the ID of the report to which this `DrillPath` links. It is not the ID of the report to which this `DrillPath` belongs. This field only applies to `DrillPath`s of type [`LINK_TYPE_REPORT`](#LINK_TYPE_REPORT).

        Returns:

        The ID of the report to which this `DrillPath` links.

        See Also:

        -   [`setOtherReportId(java.lang.Long)`](#setOtherReportId\(java.lang.Long\))

    -   ### setOtherReportId

        public void setOtherReportId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") otherReportId\_)

        Sets the ID of the report to which this `DrillPath` will link.

        Parameters:

        `otherReportId_` - The ID of the report to which this `DrillPath` will link.

        See Also:

        -   [`getOtherReportId()`](#getOtherReportId\(\))
        -   [`getOtherReportId()`](#getOtherReportId\(\))

    -   ### getExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExpression()

        Gets the expression which defines the value of the `DrillPath`. For example, if this `DrillPath` links to a Task Details page the expression defines the Task ID.

        Returns:

        The expression defining the value of the `DrillPath`

        See Also:

        -   [`setExpression(java.lang.String)`](#setExpression\(java.lang.String\))

    -   ### setExpression

        public void setExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression\_)

        Sets the expression which defines the value of the `DrillPath`.

        Parameters:

        `expression_` - The expression defining the value of the `DrillPath` to set.

        See Also:

        -   [`getExpression()`](#getExpression\(\))
        -   [`getExpression()`](#getExpression\(\))

    -   ### getOtherReportColumnLocalId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getOtherReportColumnLocalId()

        Gets the `localId` of the [`Column`](Column.html "class in com.appiancorp.suiteapi.process.analytics2") by which the destination report will be filtered. The filter value will be stored in the `DrillPath`'s `expression` field.

        This field only applies to DrillPaths of type LINK\_TYPE\_REPORT.

        Returns:

        The `localId` of the `Column` by which the destination report will be filtered.

        See Also:

        -   [`setOtherReportColumnLocalId(java.lang.Long)`](#setOtherReportColumnLocalId\(java.lang.Long\))

    -   ### setOtherReportColumnLocalId

        public void setOtherReportColumnLocalId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") otherReportColumnLocalId\_)

        Sets the `localId` of the [`Column`](Column.html "class in com.appiancorp.suiteapi.process.analytics2") by which the destination report will be filtered.

        Parameters:

        `otherReportColumnLocalId_` - The `localId` of the `Column` by which the destination report will be filtered.

        See Also:

        -   [`getOtherReportColumnLocalId()`](#getOtherReportColumnLocalId\(\))