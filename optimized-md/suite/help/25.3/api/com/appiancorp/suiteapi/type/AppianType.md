---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/AppianType.html
original_path: api/com/appiancorp/suiteapi/type/AppianType.html
version: "25.3"
title: "Interface AppianType"
page_id: "api/com/appiancorp/suiteapi/type/AppianType"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type](package-summary.html)

# Interface AppianType

All Known Subinterfaces:

`[TypedVariableTypes](../process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")`

All Known Implementing Classes:

`[ActivityClassParameter](../process/ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")`, `[ActivityClassParameterSchema](../process/ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")`, `[ActivityReturnVariable](../process/ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")`, `[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")`, `[DatatypeProperties](DatatypeProperties.html "class in com.appiancorp.suiteapi.type")`, `[GenericTypedVariable](../process/GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")`, `[Mapping](../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")`, `[MessagePropertySchema](../messaging/MessagePropertySchema.html "class in com.appiancorp.suiteapi.messaging")`, `[ProcessVariable](../process/ProcessVariable.html "class in com.appiancorp.suiteapi.process")`, `[ProcessVariableInstance](../process/ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")`, `[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")`

* * *

public interface AppianType

AppianType List of built-in System Type constants. While the built-in Types are enumerated as constants, this does not imply that these are the only Types, nor does it imply that one can build a list of Types using only these constants. Rather, the service methods in [`TypeService`](TypeService.html "interface in com.appiancorp.suiteapi.type") must be used to determine types dynamically at runtime. (This interface is preferred over the legacy TypedVariableTypes.)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[ADMINISTERED_PROPERTY](#ADMINISTERED_PROPERTY)`

    `static final int`

    `[ALIAS](#ALIAS)`

    Deprecated.

    `static final int`

    `[APPLICATION](#APPLICATION)`

    `static final int`

    `[ARRAY](#ARRAY)`

    Deprecated.

    `static final int`

    `[ATTACHMENT](#ATTACHMENT)`

    `static final int`

    `[BEAN](#BEAN)`

    `static final int`

    `[BIG_RATIONAL](#BIG_RATIONAL)`

    `static final int`

    `[BINARY](#BINARY)`

    Deprecated.

    `static final int`

    `[BOOLEAN](#BOOLEAN)`

    `static final int`

    `[CHART_COLOR](#CHART_COLOR)`

    `static final int`

    `[COMMUNITY](#COMMUNITY)`

    `static final int`

    `[CONNECTED_SYSTEM](#CONNECTED_SYSTEM)`

    `static final int`

    `[CONTENT_COMMUNITY](#CONTENT_COMMUNITY)`

    `static final int`

    `[CONTENT_CONSTANT](#CONTENT_CONSTANT)`

    `static final int`

    `[CONTENT_CUSTOM](#CONTENT_CUSTOM)`

    `static final int`

    `[CONTENT_DOCUMENT](#CONTENT_DOCUMENT)`

    `static final int`

    `[CONTENT_FOLDER](#CONTENT_FOLDER)`

    `static final int`

    `[CONTENT_FREEFORM_RULE](#CONTENT_FREEFORM_RULE)`

    `static final int`

    `[CONTENT_ITEM](#CONTENT_ITEM)`

    `static final int`

    `[CONTENT_KNOWLEDGE_CENTER](#CONTENT_KNOWLEDGE_CENTER)`

    `static final int`

    `[CONTENT_RULE](#CONTENT_RULE)`

    `static final int`

    `[CURRENCY](#CURRENCY)`

    Deprecated.

    `static final int`

    `[DATA_SOURCE](#DATA_SOURCE)`

    `static final int`

    `[DATA_STORE](#DATA_STORE)`

    `static final int`

    `[DATA_STORE_ENTITY](#DATA_STORE_ENTITY)`

    `static final int`

    `[DATATYPE](#DATATYPE)`

    `static final int`

    `[DATE](#DATE)`

    `static final int`

    `[DECISION](#DECISION)`

    `static final int`

    `[DECISION_TABLE](#DECISION_TABLE)`

    Deprecated.

    `static final int`

    `[DECRYPTED_TEXT](#DECRYPTED_TEXT)`

    `static final int`

    `[DEFERRED](#DEFERRED)`

    `static final int`

    `[DICTIONARY](#DICTIONARY)`

    `static final int`

    `[DISCUSSION_THREAD](#DISCUSSION_THREAD)`

    `static final int`

    `[DOCUMENT](#DOCUMENT)`

    `static final int`

    `[DOCUMENT_OR_FOLDER](#DOCUMENT_OR_FOLDER)`

    `static final int`

    `[DOUBLE](#DOUBLE)`

    `static final int`

    `[EMAIL_ADDRESS](#EMAIL_ADDRESS)`

    `static final int`

    `[EMAIL_RECIPIENT](#EMAIL_RECIPIENT)`

    `static final int`

    `[EMBEDDED_SAIL_THEME_ID](#EMBEDDED_SAIL_THEME_ID)`

    `static final int`

    `[ENCRYPTED_TEXT](#ENCRYPTED_TEXT)`

    `static final int`

    `[EVENT](#EVENT)`

    `static final int`

    `[EXPRESSION](#EXPRESSION)`

    `static final int`

    `[EXTERNAL_REFERENCE](#EXTERNAL_REFERENCE)`

    `static final int`

    `[EXTERNAL_REFERENCE_WITH_INDICES](#EXTERNAL_REFERENCE_WITH_INDICES)`

    `static final int`

    `[EXTERNAL_SYSTEM_ID](#EXTERNAL_SYSTEM_ID)`

    `static final int`

    `[FIXED](#FIXED)`

    Deprecated.

    `static final int`

    `[FOLDER](#FOLDER)`

    `static final int`

    `[FORUM](#FORUM)`

    `static final int`

    `[GROUP](#GROUP)`

    `static final int`

    `[GROUP_TYPE](#GROUP_TYPE)`

    `static final int`

    `[ID_REFERENCE](#ID_REFERENCE)`

    `static final int`

    `[INITIAL_CUSTOM_TYPE](#INITIAL_CUSTOM_TYPE)`

    `static final int`

    `[INTEGER](#INTEGER)`

    `static final int`

    `[INTEGER_KEY](#INTEGER_KEY)`

    `static final int`

    `[INTERFACE](#INTERFACE)`

    `static final int`

    `[INTERVAL_D_S](#INTERVAL_D_S)`

    `static final int`

    `[KNOWLEDGE_CENTER](#KNOWLEDGE_CENTER)`

    `static final int`

    `[LINKS_CHANNEL_FOLDER](#LINKS_CHANNEL_FOLDER)`

    `static final int`

    `[LIST](#LIST)`

    `static final int`

    `[LIST_OF_ADMINISTERED_PROPERTY](#LIST_OF_ADMINISTERED_PROPERTY)`

    `static final int`

    `[LIST_OF_APPLICATION](#LIST_OF_APPLICATION)`

    `static final int`

    `[LIST_OF_ATTACHMENT](#LIST_OF_ATTACHMENT)`

    `static final int`

    `[LIST_OF_BEAN](#LIST_OF_BEAN)`

    `static final int`

    `[LIST_OF_BIG_RATIONAL](#LIST_OF_BIG_RATIONAL)`

    `static final int`

    `[LIST_OF_BINARY](#LIST_OF_BINARY)`

    Deprecated.

    `static final int`

    `[LIST_OF_BOOLEAN](#LIST_OF_BOOLEAN)`

    `static final int`

    `[LIST_OF_CHART_COLOR](#LIST_OF_CHART_COLOR)`

    `static final int`

    `[LIST_OF_COMMUNITY](#LIST_OF_COMMUNITY)`

    `static final int`

    `[LIST_OF_CONNECTED_SYSTEM](#LIST_OF_CONNECTED_SYSTEM)`

    `static final int`

    `[LIST_OF_CONTENT_COMMUNITY](#LIST_OF_CONTENT_COMMUNITY)`

    `static final int`

    `[LIST_OF_CONTENT_CONSTANT](#LIST_OF_CONTENT_CONSTANT)`

    `static final int`

    `[LIST_OF_CONTENT_CUSTOM](#LIST_OF_CONTENT_CUSTOM)`

    `static final int`

    `[LIST_OF_CONTENT_DOCUMENT](#LIST_OF_CONTENT_DOCUMENT)`

    `static final int`

    `[LIST_OF_CONTENT_FOLDER](#LIST_OF_CONTENT_FOLDER)`

    `static final int`

    `[LIST_OF_CONTENT_FREEFORM_RULE](#LIST_OF_CONTENT_FREEFORM_RULE)`

    `static final int`

    `[LIST_OF_CONTENT_ITEM](#LIST_OF_CONTENT_ITEM)`

    `static final int`

    `[LIST_OF_CONTENT_KNOWLEDGE_CENTER](#LIST_OF_CONTENT_KNOWLEDGE_CENTER)`

    `static final int`

    `[LIST_OF_CONTENT_RULE](#LIST_OF_CONTENT_RULE)`

    `static final int`

    `[LIST_OF_CURRENCY](#LIST_OF_CURRENCY)`

    Deprecated.

    `static final int`

    `[LIST_OF_DATA_SOURCE](#LIST_OF_DATA_SOURCE)`

    `static final int`

    `[LIST_OF_DATA_STORE](#LIST_OF_DATA_STORE)`

    `static final int`

    `[LIST_OF_DATA_STORE_ENTITY](#LIST_OF_DATA_STORE_ENTITY)`

    `static final int`

    `[LIST_OF_DATATYPE](#LIST_OF_DATATYPE)`

    `static final int`

    `[LIST_OF_DATE](#LIST_OF_DATE)`

    `static final int`

    `[LIST_OF_DECISION](#LIST_OF_DECISION)`

    `static final int`

    `[LIST_OF_DECISION_TABLE](#LIST_OF_DECISION_TABLE)`

    Deprecated.

    `static final int`

    `[LIST_OF_DECRYPTED_TEXT](#LIST_OF_DECRYPTED_TEXT)`

    `static final int`

    `[LIST_OF_DEFERRED](#LIST_OF_DEFERRED)`

    `static final int`

    `[LIST_OF_DICTIONARY](#LIST_OF_DICTIONARY)`

    `static final int`

    `[LIST_OF_DISCUSSION_THREAD](#LIST_OF_DISCUSSION_THREAD)`

    `static final int`

    `[LIST_OF_DOCUMENT](#LIST_OF_DOCUMENT)`

    `static final int`

    `[LIST_OF_DOCUMENT_OR_FOLDER](#LIST_OF_DOCUMENT_OR_FOLDER)`

    `static final int`

    `[LIST_OF_DOUBLE](#LIST_OF_DOUBLE)`

    `static final int`

    `[LIST_OF_EMAIL_ADDRESS](#LIST_OF_EMAIL_ADDRESS)`

    `static final int`

    `[LIST_OF_EMAIL_RECIPIENT](#LIST_OF_EMAIL_RECIPIENT)`

    `static final int`

    `[LIST_OF_EMBEDDED_SAIL_THEME_ID](#LIST_OF_EMBEDDED_SAIL_THEME_ID)`

    `static final int`

    `[LIST_OF_ENCRYPTED_TEXT](#LIST_OF_ENCRYPTED_TEXT)`

    `static final int`

    `[LIST_OF_EVENT](#LIST_OF_EVENT)`

    `static final int`

    `[LIST_OF_EXPRESSION](#LIST_OF_EXPRESSION)`

    `static final int`

    `[LIST_OF_EXTERNAL_REFERENCE](#LIST_OF_EXTERNAL_REFERENCE)`

    `static final int`

    `[LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES](#LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES)`

    `static final int`

    `[LIST_OF_EXTERNAL_SYSTEM_ID](#LIST_OF_EXTERNAL_SYSTEM_ID)`

    `static final int`

    `[LIST_OF_FIXED](#LIST_OF_FIXED)`

    Deprecated.

    `static final int`

    `[LIST_OF_FOLDER](#LIST_OF_FOLDER)`

    `static final int`

    `[LIST_OF_FORUM](#LIST_OF_FORUM)`

    `static final int`

    `[LIST_OF_GROUP](#LIST_OF_GROUP)`

    `static final int`

    `[LIST_OF_GROUP_TYPE](#LIST_OF_GROUP_TYPE)`

    `static final int`

    `[LIST_OF_ID_REFERENCE](#LIST_OF_ID_REFERENCE)`

    `static final int`

    `[LIST_OF_INTEGER](#LIST_OF_INTEGER)`

    `static final int`

    `[LIST_OF_INTEGER_KEY](#LIST_OF_INTEGER_KEY)`

    `static final int`

    `[LIST_OF_INTERFACE](#LIST_OF_INTERFACE)`

    `static final int`

    `[LIST_OF_INTERVAL_D_S](#LIST_OF_INTERVAL_D_S)`

    `static final int`

    `[LIST_OF_KNOWLEDGE_CENTER](#LIST_OF_KNOWLEDGE_CENTER)`

    `static final int`

    `[LIST_OF_LINKS_CHANNEL_FOLDER](#LIST_OF_LINKS_CHANNEL_FOLDER)`

    `static final int`

    `[LIST_OF_MAP](#LIST_OF_MAP)`

    `static final int`

    `[LIST_OF_MESSAGE](#LIST_OF_MESSAGE)`

    `static final int`

    `[LIST_OF_NOTE](#LIST_OF_NOTE)`

    `static final int`

    `[LIST_OF_NULL](#LIST_OF_NULL)`

    `static final int`

    `[LIST_OF_OUTBOUND_INTEGRATION](#LIST_OF_OUTBOUND_INTEGRATION)`

    `static final int`

    `[LIST_OF_PAGE](#LIST_OF_PAGE)`

    `static final int`

    `[LIST_OF_PASSWORD](#LIST_OF_PASSWORD)`

    `static final int`

    `[LIST_OF_PORTLET](#LIST_OF_PORTLET)`

    `static final int`

    `[LIST_OF_PROCESS](#LIST_OF_PROCESS)`

    `static final int`

    `[LIST_OF_PROCESS_ERROR](#LIST_OF_PROCESS_ERROR)`

    `static final int`

    `[LIST_OF_PROCESS_MODEL](#LIST_OF_PROCESS_MODEL)`

    `static final int`

    `[LIST_OF_PROCESS_MODEL_FOLDER](#LIST_OF_PROCESS_MODEL_FOLDER)`

    `static final int`

    `[LIST_OF_QUERY_RULE](#LIST_OF_QUERY_RULE)`

    `static final int`

    `[LIST_OF_QUICK_APP](#LIST_OF_QUICK_APP)`

    `static final int`

    `[LIST_OF_RANGE](#LIST_OF_RANGE)`

    Deprecated.

    `static final int`

    `[LIST_OF_RECORD](#LIST_OF_RECORD)`

    `static final int`

    `[LIST_OF_RECORD_REFERENCE](#LIST_OF_RECORD_REFERENCE)`

    `static final int`

    `[LIST_OF_RECORD_TYPE_ID](#LIST_OF_RECORD_TYPE_ID)`

    `static final int`

    `[LIST_OF_RICH_TEXT](#LIST_OF_RICH_TEXT)`

    `static final int`

    `[LIST_OF_RULE_FOLDER](#LIST_OF_RULE_FOLDER)`

    `static final int`

    `[LIST_OF_SAFE_URI](#LIST_OF_SAFE_URI)`

    `static final int`

    `[LIST_OF_SITE](#LIST_OF_SITE)`

    `static final int`

    `[LIST_OF_STRING](#LIST_OF_STRING)`

    `static final int`

    `[LIST_OF_STRING_KEY](#LIST_OF_STRING_KEY)`

    `static final int`

    `[LIST_OF_TASK](#LIST_OF_TASK)`

    `static final int`

    `[LIST_OF_TASK_REPORT](#LIST_OF_TASK_REPORT)`

    `static final int`

    `[LIST_OF_TEMPO_FEED](#LIST_OF_TEMPO_FEED)`

    `static final int`

    `[LIST_OF_TEMPO_REPORT](#LIST_OF_TEMPO_REPORT)`

    `static final int`

    `[LIST_OF_TIME](#LIST_OF_TIME)`

    `static final int`

    `[LIST_OF_TIMESTAMP](#LIST_OF_TIMESTAMP)`

    `static final int`

    `[LIST_OF_TYPE](#LIST_OF_TYPE)`

    `static final int`

    `[LIST_OF_UNIFORM_FOLDER](#LIST_OF_UNIFORM_FOLDER)`

    `static final int`

    `[LIST_OF_UNION](#LIST_OF_UNION)`

    `static final int`

    `[LIST_OF_USER_OR_GROUP](#LIST_OF_USER_OR_GROUP)`

    `static final int`

    `[LIST_OF_USERNAME](#LIST_OF_USERNAME)`

    `static final int`

    `[LIST_OF_VARIANT](#LIST_OF_VARIANT)`

    `static final int`

    `[LIST_OF_WEB_API](#LIST_OF_WEB_API)`

    `static final int`

    `[MAP](#MAP)`

    `static final int`

    `[MESSAGE](#MESSAGE)`

    `static final int`

    `[NOTE](#NOTE)`

    `static final int`

    `[NULL](#NULL)`

    `static final int`

    `[OUTBOUND_INTEGRATION](#OUTBOUND_INTEGRATION)`

    `static final int`

    `[PAGE](#PAGE)`

    `static final int`

    `[PASSWORD](#PASSWORD)`

    `static final int`

    `[PORTLET](#PORTLET)`

    `static final int`

    `[PROCESS](#PROCESS)`

    `static final int`

    `[PROCESS_ERROR](#PROCESS_ERROR)`

    `static final int`

    `[PROCESS_MODEL](#PROCESS_MODEL)`

    `static final int`

    `[PROCESS_MODEL_FOLDER](#PROCESS_MODEL_FOLDER)`

    `static final int`

    `[QUERY_RULE](#QUERY_RULE)`

    `static final int`

    `[QUICK_APP](#QUICK_APP)`

    `static final int`

    `[RANGE](#RANGE)`

    Deprecated.

    `static final int`

    `[RECORD](#RECORD)`

    `static final int`

    `[RECORD_REFERENCE](#RECORD_REFERENCE)`

    `static final int`

    `[RECORD_TYPE_ID](#RECORD_TYPE_ID)`

    `static final int`

    `[RICH_TEXT](#RICH_TEXT)`

    `static final int`

    `[RULE_FOLDER](#RULE_FOLDER)`

    `static final int`

    `[SAFE_URI](#SAFE_URI)`

    `static final int`

    `[SITE](#SITE)`

    `static final int`

    `[STRING](#STRING)`

    `static final int`

    `[STRING_KEY](#STRING_KEY)`

    `static final int`

    `[TASK](#TASK)`

    `static final int`

    `[TASK_REPORT](#TASK_REPORT)`

    `static final int`

    `[TEMPO_FEED](#TEMPO_FEED)`

    `static final int`

    `[TEMPO_REPORT](#TEMPO_REPORT)`

    `static final int`

    `[TIME](#TIME)`

    `static final int`

    `[TIMESTAMP](#TIMESTAMP)`

    `static final int`

    `[TYPE](#TYPE)`

    `static final int`

    `[UI_CONTAINER](#UI_CONTAINER)`

    `static final int`

    `[UNIFORM_FOLDER](#UNIFORM_FOLDER)`

    `static final int`

    `[UNION](#UNION)`

    `static final int`

    `[USER_OR_GROUP](#USER_OR_GROUP)`

    `static final int`

    `[USERNAME](#USERNAME)`

    `static final int`

    `[VARIANT](#VARIANT)`

    `static final int`

    `[WEB_API](#WEB_API)`

-   ## Field Details

    -   ### DEFERRED

        static final int DEFERRED

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DEFERRED)

    -   ### INTEGER

        static final int INTEGER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.INTEGER)

    -   ### DOUBLE

        static final int DOUBLE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DOUBLE)

    -   ### STRING

        static final int STRING

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.STRING)

    -   ### USERNAME

        static final int USERNAME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.USERNAME)

    -   ### GROUP

        static final int GROUP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.GROUP)

    -   ### CURRENCY

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int CURRENCY

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CURRENCY)

    -   ### DATE

        static final int DATE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DATE)

    -   ### TIME

        static final int TIME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.TIME)

    -   ### TIMESTAMP

        static final int TIMESTAMP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.TIMESTAMP)

    -   ### BINARY

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int BINARY

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.BINARY)

    -   ### FOLDER

        static final int FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.FOLDER)

    -   ### DOCUMENT

        static final int DOCUMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DOCUMENT)

    -   ### PORTLET

        static final int PORTLET

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.PORTLET)

    -   ### PAGE

        static final int PAGE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.PAGE)

    -   ### FORUM

        static final int FORUM

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.FORUM)

    -   ### DISCUSSION\_THREAD

        static final int DISCUSSION\_THREAD

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DISCUSSION_THREAD)

    -   ### MESSAGE

        static final int MESSAGE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.MESSAGE)

    -   ### KNOWLEDGE\_CENTER

        static final int KNOWLEDGE\_CENTER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.KNOWLEDGE_CENTER)

    -   ### COMMUNITY

        static final int COMMUNITY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.COMMUNITY)

    -   ### TASK

        static final int TASK

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.TASK)

    -   ### PROCESS

        static final int PROCESS

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.PROCESS)

    -   ### PROCESS\_MODEL

        static final int PROCESS\_MODEL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.PROCESS_MODEL)

    -   ### ATTACHMENT

        static final int ATTACHMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.ATTACHMENT)

    -   ### BOOLEAN

        static final int BOOLEAN

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.BOOLEAN)

    -   ### USER\_OR\_GROUP

        static final int USER\_OR\_GROUP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.USER_OR_GROUP)

    -   ### DOCUMENT\_OR\_FOLDER

        static final int DOCUMENT\_OR\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DOCUMENT_OR_FOLDER)

    -   ### INTERVAL\_D\_S

        static final int INTERVAL\_D\_S

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.INTERVAL_D_S)

    -   ### NOTE

        static final int NOTE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.NOTE)

    -   ### PASSWORD

        static final int PASSWORD

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.PASSWORD)

    -   ### EVENT

        static final int EVENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.EVENT)

    -   ### EMAIL\_ADDRESS

        static final int EMAIL\_ADDRESS

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.EMAIL_ADDRESS)

    -   ### EMAIL\_RECIPIENT

        static final int EMAIL\_RECIPIENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.EMAIL_RECIPIENT)

    -   ### CONTENT\_RULE

        static final int CONTENT\_RULE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CONTENT_RULE)

    -   ### CONTENT\_ITEM

        static final int CONTENT\_ITEM

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CONTENT_ITEM)

    -   ### CONTENT\_CUSTOM

        static final int CONTENT\_CUSTOM

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CONTENT_CUSTOM)

    -   ### CONTENT\_FREEFORM\_RULE

        static final int CONTENT\_FREEFORM\_RULE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CONTENT_FREEFORM_RULE)

    -   ### CONTENT\_CONSTANT

        static final int CONTENT\_CONSTANT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CONTENT_CONSTANT)

    -   ### GROUP\_TYPE

        static final int GROUP\_TYPE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.GROUP_TYPE)

    -   ### FIXED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int FIXED

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.FIXED)

    -   ### INTEGER\_KEY

        static final int INTEGER\_KEY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.INTEGER_KEY)

    -   ### STRING\_KEY

        static final int STRING\_KEY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.STRING_KEY)

    -   ### NULL

        static final int NULL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.NULL)

    -   ### CONTENT\_DOCUMENT

        static final int CONTENT\_DOCUMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CONTENT_DOCUMENT)

    -   ### CONTENT\_FOLDER

        static final int CONTENT\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CONTENT_FOLDER)

    -   ### CONTENT\_KNOWLEDGE\_CENTER

        static final int CONTENT\_KNOWLEDGE\_CENTER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CONTENT_KNOWLEDGE_CENTER)

    -   ### CONTENT\_COMMUNITY

        static final int CONTENT\_COMMUNITY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CONTENT_COMMUNITY)

    -   ### RANGE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int RANGE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.RANGE)

    -   ### PROCESS\_MODEL\_FOLDER

        static final int PROCESS\_MODEL\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.PROCESS_MODEL_FOLDER)

    -   ### LINKS\_CHANNEL\_FOLDER

        static final int LINKS\_CHANNEL\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LINKS_CHANNEL_FOLDER)

    -   ### TYPE

        static final int TYPE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.TYPE)

    -   ### LIST\_OF\_DEFERRED

        static final int LIST\_OF\_DEFERRED

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DEFERRED)

    -   ### LIST\_OF\_INTEGER

        static final int LIST\_OF\_INTEGER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_INTEGER)

    -   ### LIST\_OF\_DOUBLE

        static final int LIST\_OF\_DOUBLE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DOUBLE)

    -   ### LIST\_OF\_STRING

        static final int LIST\_OF\_STRING

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_STRING)

    -   ### LIST\_OF\_USERNAME

        static final int LIST\_OF\_USERNAME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_USERNAME)

    -   ### LIST\_OF\_GROUP

        static final int LIST\_OF\_GROUP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_GROUP)

    -   ### LIST\_OF\_CURRENCY

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int LIST\_OF\_CURRENCY

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CURRENCY)

    -   ### LIST\_OF\_DATE

        static final int LIST\_OF\_DATE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DATE)

    -   ### LIST\_OF\_TIME

        static final int LIST\_OF\_TIME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_TIME)

    -   ### LIST\_OF\_TIMESTAMP

        static final int LIST\_OF\_TIMESTAMP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_TIMESTAMP)

    -   ### LIST\_OF\_BINARY

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int LIST\_OF\_BINARY

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_BINARY)

    -   ### LIST\_OF\_FOLDER

        static final int LIST\_OF\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_FOLDER)

    -   ### LIST\_OF\_DOCUMENT

        static final int LIST\_OF\_DOCUMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DOCUMENT)

    -   ### LIST\_OF\_PORTLET

        static final int LIST\_OF\_PORTLET

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_PORTLET)

    -   ### LIST\_OF\_PAGE

        static final int LIST\_OF\_PAGE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_PAGE)

    -   ### LIST\_OF\_FORUM

        static final int LIST\_OF\_FORUM

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_FORUM)

    -   ### LIST\_OF\_DISCUSSION\_THREAD

        static final int LIST\_OF\_DISCUSSION\_THREAD

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DISCUSSION_THREAD)

    -   ### LIST\_OF\_MESSAGE

        static final int LIST\_OF\_MESSAGE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_MESSAGE)

    -   ### LIST\_OF\_KNOWLEDGE\_CENTER

        static final int LIST\_OF\_KNOWLEDGE\_CENTER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_KNOWLEDGE_CENTER)

    -   ### LIST\_OF\_COMMUNITY

        static final int LIST\_OF\_COMMUNITY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_COMMUNITY)

    -   ### LIST\_OF\_TASK

        static final int LIST\_OF\_TASK

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_TASK)

    -   ### LIST\_OF\_PROCESS

        static final int LIST\_OF\_PROCESS

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_PROCESS)

    -   ### LIST\_OF\_PROCESS\_MODEL

        static final int LIST\_OF\_PROCESS\_MODEL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_PROCESS_MODEL)

    -   ### LIST\_OF\_ATTACHMENT

        static final int LIST\_OF\_ATTACHMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_ATTACHMENT)

    -   ### LIST\_OF\_BOOLEAN

        static final int LIST\_OF\_BOOLEAN

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_BOOLEAN)

    -   ### LIST\_OF\_USER\_OR\_GROUP

        static final int LIST\_OF\_USER\_OR\_GROUP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_USER_OR_GROUP)

    -   ### LIST\_OF\_DOCUMENT\_OR\_FOLDER

        static final int LIST\_OF\_DOCUMENT\_OR\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DOCUMENT_OR_FOLDER)

    -   ### LIST\_OF\_INTERVAL\_D\_S

        static final int LIST\_OF\_INTERVAL\_D\_S

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_INTERVAL_D_S)

    -   ### LIST\_OF\_NOTE

        static final int LIST\_OF\_NOTE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_NOTE)

    -   ### LIST\_OF\_PASSWORD

        static final int LIST\_OF\_PASSWORD

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_PASSWORD)

    -   ### LIST\_OF\_EVENT

        static final int LIST\_OF\_EVENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_EVENT)

    -   ### LIST\_OF\_EMAIL\_ADDRESS

        static final int LIST\_OF\_EMAIL\_ADDRESS

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_EMAIL_ADDRESS)

    -   ### LIST\_OF\_EMAIL\_RECIPIENT

        static final int LIST\_OF\_EMAIL\_RECIPIENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_EMAIL_RECIPIENT)

    -   ### LIST\_OF\_CONTENT\_RULE

        static final int LIST\_OF\_CONTENT\_RULE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CONTENT_RULE)

    -   ### LIST\_OF\_CONTENT\_ITEM

        static final int LIST\_OF\_CONTENT\_ITEM

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CONTENT_ITEM)

    -   ### LIST\_OF\_CONTENT\_CUSTOM

        static final int LIST\_OF\_CONTENT\_CUSTOM

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CONTENT_CUSTOM)

    -   ### LIST\_OF\_CONTENT\_FREEFORM\_RULE

        static final int LIST\_OF\_CONTENT\_FREEFORM\_RULE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CONTENT_FREEFORM_RULE)

    -   ### LIST\_OF\_CONTENT\_CONSTANT

        static final int LIST\_OF\_CONTENT\_CONSTANT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CONTENT_CONSTANT)

    -   ### LIST\_OF\_GROUP\_TYPE

        static final int LIST\_OF\_GROUP\_TYPE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_GROUP_TYPE)

    -   ### LIST\_OF\_FIXED

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int LIST\_OF\_FIXED

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_FIXED)

    -   ### LIST\_OF\_INTEGER\_KEY

        static final int LIST\_OF\_INTEGER\_KEY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_INTEGER_KEY)

    -   ### LIST\_OF\_STRING\_KEY

        static final int LIST\_OF\_STRING\_KEY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_STRING_KEY)

    -   ### LIST\_OF\_NULL

        static final int LIST\_OF\_NULL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_NULL)

    -   ### LIST\_OF\_CONTENT\_DOCUMENT

        static final int LIST\_OF\_CONTENT\_DOCUMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CONTENT_DOCUMENT)

    -   ### LIST\_OF\_CONTENT\_FOLDER

        static final int LIST\_OF\_CONTENT\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CONTENT_FOLDER)

    -   ### LIST\_OF\_CONTENT\_KNOWLEDGE\_CENTER

        static final int LIST\_OF\_CONTENT\_KNOWLEDGE\_CENTER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CONTENT_KNOWLEDGE_CENTER)

    -   ### LIST\_OF\_CONTENT\_COMMUNITY

        static final int LIST\_OF\_CONTENT\_COMMUNITY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CONTENT_COMMUNITY)

    -   ### LIST\_OF\_RANGE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int LIST\_OF\_RANGE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_RANGE)

    -   ### LIST\_OF\_PROCESS\_MODEL\_FOLDER

        static final int LIST\_OF\_PROCESS\_MODEL\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_PROCESS_MODEL_FOLDER)

    -   ### LIST\_OF\_LINKS\_CHANNEL\_FOLDER

        static final int LIST\_OF\_LINKS\_CHANNEL\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_LINKS_CHANNEL_FOLDER)

    -   ### BEAN

        static final int BEAN

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.BEAN)

    -   ### EXTERNAL\_REFERENCE

        static final int EXTERNAL\_REFERENCE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.EXTERNAL_REFERENCE)

    -   ### EXTERNAL\_REFERENCE\_WITH\_INDICES

        static final int EXTERNAL\_REFERENCE\_WITH\_INDICES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.EXTERNAL_REFERENCE_WITH_INDICES)

    -   ### ALIAS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int ALIAS

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.ALIAS)

    -   ### ARRAY

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int ARRAY

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.ARRAY)

    -   ### LIST

        static final int LIST

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST)

    -   ### DICTIONARY

        static final int DICTIONARY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DICTIONARY)

    -   ### RECORD

        static final int RECORD

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.RECORD)

    -   ### UNION

        static final int UNION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.UNION)

    -   ### VARIANT

        static final int VARIANT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.VARIANT)

    -   ### LIST\_OF\_EXTERNAL\_REFERENCE

        static final int LIST\_OF\_EXTERNAL\_REFERENCE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_EXTERNAL_REFERENCE)

    -   ### LIST\_OF\_EXTERNAL\_REFERENCE\_WITH\_INDICES

        static final int LIST\_OF\_EXTERNAL\_REFERENCE\_WITH\_INDICES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES)

    -   ### LIST\_OF\_UNION

        static final int LIST\_OF\_UNION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_UNION)

    -   ### LIST\_OF\_VARIANT

        static final int LIST\_OF\_VARIANT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_VARIANT)

    -   ### LIST\_OF\_BEAN

        static final int LIST\_OF\_BEAN

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_BEAN)

    -   ### LIST\_OF\_RECORD

        static final int LIST\_OF\_RECORD

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_RECORD)

    -   ### LIST\_OF\_DICTIONARY

        static final int LIST\_OF\_DICTIONARY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DICTIONARY)

    -   ### INITIAL\_CUSTOM\_TYPE

        static final int INITIAL\_CUSTOM\_TYPE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.INITIAL_CUSTOM_TYPE)

    -   ### DATATYPE

        static final int DATATYPE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DATATYPE)

    -   ### DATA\_STORE\_ENTITY

        static final int DATA\_STORE\_ENTITY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DATA_STORE_ENTITY)

    -   ### DATA\_STORE

        static final int DATA\_STORE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DATA_STORE)

    -   ### QUERY\_RULE

        static final int QUERY\_RULE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.QUERY_RULE)

    -   ### DECISION\_TABLE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int DECISION\_TABLE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DECISION_TABLE)

    -   ### RULE\_FOLDER

        static final int RULE\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.RULE_FOLDER)

    -   ### APPLICATION

        static final int APPLICATION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.APPLICATION)

    -   ### TEMPO\_FEED

        static final int TEMPO\_FEED

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.TEMPO_FEED)

    -   ### ID\_REFERENCE

        static final int ID\_REFERENCE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.ID_REFERENCE)

    -   ### UI\_CONTAINER

        static final int UI\_CONTAINER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.UI_CONTAINER)

    -   ### LIST\_OF\_DATATYPE

        static final int LIST\_OF\_DATATYPE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DATATYPE)

    -   ### LIST\_OF\_DATA\_STORE\_ENTITY

        static final int LIST\_OF\_DATA\_STORE\_ENTITY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DATA_STORE_ENTITY)

    -   ### LIST\_OF\_DATA\_STORE

        static final int LIST\_OF\_DATA\_STORE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DATA_STORE)

    -   ### LIST\_OF\_QUERY\_RULE

        static final int LIST\_OF\_QUERY\_RULE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_QUERY_RULE)

    -   ### LIST\_OF\_DECISION\_TABLE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") static final int LIST\_OF\_DECISION\_TABLE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DECISION_TABLE)

    -   ### LIST\_OF\_RULE\_FOLDER

        static final int LIST\_OF\_RULE\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_RULE_FOLDER)

    -   ### LIST\_OF\_APPLICATION

        static final int LIST\_OF\_APPLICATION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_APPLICATION)

    -   ### LIST\_OF\_TEMPO\_FEED

        static final int LIST\_OF\_TEMPO\_FEED

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_TEMPO_FEED)

    -   ### LIST\_OF\_ID\_REFERENCE

        static final int LIST\_OF\_ID\_REFERENCE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_ID_REFERENCE)

    -   ### LIST\_OF\_TYPE

        static final int LIST\_OF\_TYPE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_TYPE)

    -   ### SAFE\_URI

        static final int SAFE\_URI

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.SAFE_URI)

    -   ### LIST\_OF\_SAFE\_URI

        static final int LIST\_OF\_SAFE\_URI

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_SAFE_URI)

    -   ### CHART\_COLOR

        static final int CHART\_COLOR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CHART_COLOR)

    -   ### LIST\_OF\_CHART\_COLOR

        static final int LIST\_OF\_CHART\_COLOR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CHART_COLOR)

    -   ### RECORD\_REFERENCE

        static final int RECORD\_REFERENCE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.RECORD_REFERENCE)

    -   ### LIST\_OF\_RECORD\_REFERENCE

        static final int LIST\_OF\_RECORD\_REFERENCE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_RECORD_REFERENCE)

    -   ### TASK\_REPORT

        static final int TASK\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.TASK_REPORT)

    -   ### LIST\_OF\_TASK\_REPORT

        static final int LIST\_OF\_TASK\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_TASK_REPORT)

    -   ### TEMPO\_REPORT

        static final int TEMPO\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.TEMPO_REPORT)

    -   ### LIST\_OF\_TEMPO\_REPORT

        static final int LIST\_OF\_TEMPO\_REPORT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_TEMPO_REPORT)

    -   ### ENCRYPTED\_TEXT

        static final int ENCRYPTED\_TEXT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.ENCRYPTED_TEXT)

    -   ### LIST\_OF\_ENCRYPTED\_TEXT

        static final int LIST\_OF\_ENCRYPTED\_TEXT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_ENCRYPTED_TEXT)

    -   ### DECRYPTED\_TEXT

        static final int DECRYPTED\_TEXT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DECRYPTED_TEXT)

    -   ### LIST\_OF\_DECRYPTED\_TEXT

        static final int LIST\_OF\_DECRYPTED\_TEXT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DECRYPTED_TEXT)

    -   ### RECORD\_TYPE\_ID

        static final int RECORD\_TYPE\_ID

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.RECORD_TYPE_ID)

    -   ### LIST\_OF\_RECORD\_TYPE\_ID

        static final int LIST\_OF\_RECORD\_TYPE\_ID

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_RECORD_TYPE_ID)

    -   ### BIG\_RATIONAL

        static final int BIG\_RATIONAL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.BIG_RATIONAL)

    -   ### LIST\_OF\_BIG\_RATIONAL

        static final int LIST\_OF\_BIG\_RATIONAL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_BIG_RATIONAL)

    -   ### WEB\_API

        static final int WEB\_API

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.WEB_API)

    -   ### LIST\_OF\_WEB\_API

        static final int LIST\_OF\_WEB\_API

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_WEB_API)

    -   ### SITE

        static final int SITE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.SITE)

    -   ### LIST\_OF\_SITE

        static final int LIST\_OF\_SITE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_SITE)

    -   ### EXPRESSION

        static final int EXPRESSION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.EXPRESSION)

    -   ### LIST\_OF\_EXPRESSION

        static final int LIST\_OF\_EXPRESSION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_EXPRESSION)

    -   ### ADMINISTERED\_PROPERTY

        static final int ADMINISTERED\_PROPERTY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.ADMINISTERED_PROPERTY)

    -   ### LIST\_OF\_ADMINISTERED\_PROPERTY

        static final int LIST\_OF\_ADMINISTERED\_PROPERTY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_ADMINISTERED_PROPERTY)

    -   ### QUICK\_APP

        static final int QUICK\_APP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.QUICK_APP)

    -   ### LIST\_OF\_QUICK\_APP

        static final int LIST\_OF\_QUICK\_APP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_QUICK_APP)

    -   ### EXTERNAL\_SYSTEM\_ID

        static final int EXTERNAL\_SYSTEM\_ID

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.EXTERNAL_SYSTEM_ID)

    -   ### LIST\_OF\_EXTERNAL\_SYSTEM\_ID

        static final int LIST\_OF\_EXTERNAL\_SYSTEM\_ID

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_EXTERNAL_SYSTEM_ID)

    -   ### DATA\_SOURCE

        static final int DATA\_SOURCE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DATA_SOURCE)

    -   ### LIST\_OF\_DATA\_SOURCE

        static final int LIST\_OF\_DATA\_SOURCE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DATA_SOURCE)

    -   ### DECISION

        static final int DECISION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.DECISION)

    -   ### LIST\_OF\_DECISION

        static final int LIST\_OF\_DECISION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_DECISION)

    -   ### OUTBOUND\_INTEGRATION

        static final int OUTBOUND\_INTEGRATION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.OUTBOUND_INTEGRATION)

    -   ### LIST\_OF\_OUTBOUND\_INTEGRATION

        static final int LIST\_OF\_OUTBOUND\_INTEGRATION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_OUTBOUND_INTEGRATION)

    -   ### MAP

        static final int MAP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.MAP)

    -   ### LIST\_OF\_MAP

        static final int LIST\_OF\_MAP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_MAP)

    -   ### EMBEDDED\_SAIL\_THEME\_ID

        static final int EMBEDDED\_SAIL\_THEME\_ID

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.EMBEDDED_SAIL_THEME_ID)

    -   ### LIST\_OF\_EMBEDDED\_SAIL\_THEME\_ID

        static final int LIST\_OF\_EMBEDDED\_SAIL\_THEME\_ID

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_EMBEDDED_SAIL_THEME_ID)

    -   ### CONNECTED\_SYSTEM

        static final int CONNECTED\_SYSTEM

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.CONNECTED_SYSTEM)

    -   ### LIST\_OF\_CONNECTED\_SYSTEM

        static final int LIST\_OF\_CONNECTED\_SYSTEM

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_CONNECTED_SYSTEM)

    -   ### PROCESS\_ERROR

        static final int PROCESS\_ERROR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.PROCESS_ERROR)

    -   ### LIST\_OF\_PROCESS\_ERROR

        static final int LIST\_OF\_PROCESS\_ERROR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_PROCESS_ERROR)

    -   ### INTERFACE

        static final int INTERFACE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.INTERFACE)

    -   ### LIST\_OF\_INTERFACE

        static final int LIST\_OF\_INTERFACE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_INTERFACE)

    -   ### UNIFORM\_FOLDER

        static final int UNIFORM\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.UNIFORM_FOLDER)

    -   ### LIST\_OF\_UNIFORM\_FOLDER

        static final int LIST\_OF\_UNIFORM\_FOLDER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_UNIFORM_FOLDER)

    -   ### RICH\_TEXT

        static final int RICH\_TEXT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.RICH_TEXT)

    -   ### LIST\_OF\_RICH\_TEXT

        static final int LIST\_OF\_RICH\_TEXT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.AppianType.LIST_OF_RICH_TEXT)