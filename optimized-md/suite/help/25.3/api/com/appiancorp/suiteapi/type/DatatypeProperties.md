---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/DatatypeProperties.html
original_path: api/com/appiancorp/suiteapi/type/DatatypeProperties.html
version: "25.3"
title: "Class DatatypeProperties"
page_id: "api/com/appiancorp/suiteapi/type/DatatypeProperties"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type](package-summary.html)

# Class DatatypeProperties

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.type.DatatypeProperties

All Implemented Interfaces:

`com.appiancorp.cache.CoupledValue`, `[AppianType](AppianType.html "interface in com.appiancorp.suiteapi.type")`, `com.appiancorp.type.DataTypeProperties`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")`

* * *

@GwtCompatible public class DatatypeProperties extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [AppianType](AppianType.html "interface in com.appiancorp.suiteapi.type"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), com.appiancorp.type.DataTypeProperties, com.appiancorp.cache.CoupledValue

Datatype Properties The Datatype Properties of a TypedValue. Types are immutable; once created, they never change on the backend. All builtin Datatypes have a parent of null (global). A Type number is constant once created in a given installation of the product, and thus a Type may be safely cached.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.type.DatatypeProperties)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[AUTO_GENERATE_LIST](#AUTO_GENERATE_LIST)`

    `static final int`

    `[DYNAMIC_TYPE_HAS_USERNAME](#DYNAMIC_TYPE_HAS_USERNAME)`

    Deprecated.

    For Appian internal use only.

    `static final int`

    `[DYNAMIC_TYPE_HAS_VARIANT](#DYNAMIC_TYPE_HAS_VARIANT)`

    Deprecated.

    For Appian internal use only.

    `static final org.slf4j.Logger`

    `[LOG](#LOG)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_BASE](#SORT_BY_BASE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATION_TIME](#SORT_BY_CREATION_TIME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_FOUNDATION](#SORT_BY_FOUNDATION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LIST](#SORT_BY_LIST)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAMESPACE](#SORT_BY_NAMESPACE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ORIGIN](#SORT_BY_ORIGIN)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TYPEOF](#SORT_BY_TYPEOF)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_VERSION_ID](#SORT_BY_VERSION_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_VERSIONS](#SORT_BY_VERSIONS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_VISIBILITY](#SORT_BY_VISIBILITY)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SUGGEST_PROPERTY_DESCRIPTION](#SUGGEST_PROPERTY_DESCRIPTION)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SUGGEST_PROPERTY_NAME](#SUGGEST_PROPERTY_NAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SUGGEST_PROPERTY_QUALIFIED_NAME](#SUGGEST_PROPERTY_QUALIFIED_NAME)`

    ### Fields inherited from interface com.appiancorp.suiteapi.type.[AppianType](AppianType.html "interface in com.appiancorp.suiteapi.type")

    `[ADMINISTERED_PROPERTY](AppianType.html#ADMINISTERED_PROPERTY), [ALIAS](AppianType.html#ALIAS), [APPLICATION](AppianType.html#APPLICATION), [ARRAY](AppianType.html#ARRAY), [ATTACHMENT](AppianType.html#ATTACHMENT), [BEAN](AppianType.html#BEAN), [BIG_RATIONAL](AppianType.html#BIG_RATIONAL), [BINARY](AppianType.html#BINARY), [BOOLEAN](AppianType.html#BOOLEAN), [CHART_COLOR](AppianType.html#CHART_COLOR), [COMMUNITY](AppianType.html#COMMUNITY), [CONNECTED_SYSTEM](AppianType.html#CONNECTED_SYSTEM), [CONTENT_COMMUNITY](AppianType.html#CONTENT_COMMUNITY), [CONTENT_CONSTANT](AppianType.html#CONTENT_CONSTANT), [CONTENT_CUSTOM](AppianType.html#CONTENT_CUSTOM), [CONTENT_DOCUMENT](AppianType.html#CONTENT_DOCUMENT), [CONTENT_FOLDER](AppianType.html#CONTENT_FOLDER), [CONTENT_FREEFORM_RULE](AppianType.html#CONTENT_FREEFORM_RULE), [CONTENT_ITEM](AppianType.html#CONTENT_ITEM), [CONTENT_KNOWLEDGE_CENTER](AppianType.html#CONTENT_KNOWLEDGE_CENTER), [CONTENT_RULE](AppianType.html#CONTENT_RULE), [CURRENCY](AppianType.html#CURRENCY), [DATA_SOURCE](AppianType.html#DATA_SOURCE), [DATA_STORE](AppianType.html#DATA_STORE), [DATA_STORE_ENTITY](AppianType.html#DATA_STORE_ENTITY), [DATATYPE](AppianType.html#DATATYPE), [DATE](AppianType.html#DATE), [DECISION](AppianType.html#DECISION), [DECISION_TABLE](AppianType.html#DECISION_TABLE), [DECRYPTED_TEXT](AppianType.html#DECRYPTED_TEXT), [DEFERRED](AppianType.html#DEFERRED), [DICTIONARY](AppianType.html#DICTIONARY), [DISCUSSION_THREAD](AppianType.html#DISCUSSION_THREAD), [DOCUMENT](AppianType.html#DOCUMENT), [DOCUMENT_OR_FOLDER](AppianType.html#DOCUMENT_OR_FOLDER), [DOUBLE](AppianType.html#DOUBLE), [EMAIL_ADDRESS](AppianType.html#EMAIL_ADDRESS), [EMAIL_RECIPIENT](AppianType.html#EMAIL_RECIPIENT), [EMBEDDED_SAIL_THEME_ID](AppianType.html#EMBEDDED_SAIL_THEME_ID), [ENCRYPTED_TEXT](AppianType.html#ENCRYPTED_TEXT), [EVENT](AppianType.html#EVENT), [EXPRESSION](AppianType.html#EXPRESSION), [EXTERNAL_REFERENCE](AppianType.html#EXTERNAL_REFERENCE), [EXTERNAL_REFERENCE_WITH_INDICES](AppianType.html#EXTERNAL_REFERENCE_WITH_INDICES), [EXTERNAL_SYSTEM_ID](AppianType.html#EXTERNAL_SYSTEM_ID), [FIXED](AppianType.html#FIXED), [FOLDER](AppianType.html#FOLDER), [FORUM](AppianType.html#FORUM), [GROUP](AppianType.html#GROUP), [GROUP_TYPE](AppianType.html#GROUP_TYPE), [ID_REFERENCE](AppianType.html#ID_REFERENCE), [INITIAL_CUSTOM_TYPE](AppianType.html#INITIAL_CUSTOM_TYPE), [INTEGER](AppianType.html#INTEGER), [INTEGER_KEY](AppianType.html#INTEGER_KEY), [INTERFACE](AppianType.html#INTERFACE), [INTERVAL_D_S](AppianType.html#INTERVAL_D_S), [KNOWLEDGE_CENTER](AppianType.html#KNOWLEDGE_CENTER), [LINKS_CHANNEL_FOLDER](AppianType.html#LINKS_CHANNEL_FOLDER), [LIST](AppianType.html#LIST), [LIST_OF_ADMINISTERED_PROPERTY](AppianType.html#LIST_OF_ADMINISTERED_PROPERTY), [LIST_OF_APPLICATION](AppianType.html#LIST_OF_APPLICATION), [LIST_OF_ATTACHMENT](AppianType.html#LIST_OF_ATTACHMENT), [LIST_OF_BEAN](AppianType.html#LIST_OF_BEAN), [LIST_OF_BIG_RATIONAL](AppianType.html#LIST_OF_BIG_RATIONAL), [LIST_OF_BINARY](AppianType.html#LIST_OF_BINARY), [LIST_OF_BOOLEAN](AppianType.html#LIST_OF_BOOLEAN), [LIST_OF_CHART_COLOR](AppianType.html#LIST_OF_CHART_COLOR), [LIST_OF_COMMUNITY](AppianType.html#LIST_OF_COMMUNITY), [LIST_OF_CONNECTED_SYSTEM](AppianType.html#LIST_OF_CONNECTED_SYSTEM), [LIST_OF_CONTENT_COMMUNITY](AppianType.html#LIST_OF_CONTENT_COMMUNITY), [LIST_OF_CONTENT_CONSTANT](AppianType.html#LIST_OF_CONTENT_CONSTANT), [LIST_OF_CONTENT_CUSTOM](AppianType.html#LIST_OF_CONTENT_CUSTOM), [LIST_OF_CONTENT_DOCUMENT](AppianType.html#LIST_OF_CONTENT_DOCUMENT), [LIST_OF_CONTENT_FOLDER](AppianType.html#LIST_OF_CONTENT_FOLDER), [LIST_OF_CONTENT_FREEFORM_RULE](AppianType.html#LIST_OF_CONTENT_FREEFORM_RULE), [LIST_OF_CONTENT_ITEM](AppianType.html#LIST_OF_CONTENT_ITEM), [LIST_OF_CONTENT_KNOWLEDGE_CENTER](AppianType.html#LIST_OF_CONTENT_KNOWLEDGE_CENTER), [LIST_OF_CONTENT_RULE](AppianType.html#LIST_OF_CONTENT_RULE), [LIST_OF_CURRENCY](AppianType.html#LIST_OF_CURRENCY), [LIST_OF_DATA_SOURCE](AppianType.html#LIST_OF_DATA_SOURCE), [LIST_OF_DATA_STORE](AppianType.html#LIST_OF_DATA_STORE), [LIST_OF_DATA_STORE_ENTITY](AppianType.html#LIST_OF_DATA_STORE_ENTITY), [LIST_OF_DATATYPE](AppianType.html#LIST_OF_DATATYPE), [LIST_OF_DATE](AppianType.html#LIST_OF_DATE), [LIST_OF_DECISION](AppianType.html#LIST_OF_DECISION), [LIST_OF_DECISION_TABLE](AppianType.html#LIST_OF_DECISION_TABLE), [LIST_OF_DECRYPTED_TEXT](AppianType.html#LIST_OF_DECRYPTED_TEXT), [LIST_OF_DEFERRED](AppianType.html#LIST_OF_DEFERRED), [LIST_OF_DICTIONARY](AppianType.html#LIST_OF_DICTIONARY), [LIST_OF_DISCUSSION_THREAD](AppianType.html#LIST_OF_DISCUSSION_THREAD), [LIST_OF_DOCUMENT](AppianType.html#LIST_OF_DOCUMENT), [LIST_OF_DOCUMENT_OR_FOLDER](AppianType.html#LIST_OF_DOCUMENT_OR_FOLDER), [LIST_OF_DOUBLE](AppianType.html#LIST_OF_DOUBLE), [LIST_OF_EMAIL_ADDRESS](AppianType.html#LIST_OF_EMAIL_ADDRESS), [LIST_OF_EMAIL_RECIPIENT](AppianType.html#LIST_OF_EMAIL_RECIPIENT), [LIST_OF_EMBEDDED_SAIL_THEME_ID](AppianType.html#LIST_OF_EMBEDDED_SAIL_THEME_ID), [LIST_OF_ENCRYPTED_TEXT](AppianType.html#LIST_OF_ENCRYPTED_TEXT), [LIST_OF_EVENT](AppianType.html#LIST_OF_EVENT), [LIST_OF_EXPRESSION](AppianType.html#LIST_OF_EXPRESSION), [LIST_OF_EXTERNAL_REFERENCE](AppianType.html#LIST_OF_EXTERNAL_REFERENCE), [LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES](AppianType.html#LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES), [LIST_OF_EXTERNAL_SYSTEM_ID](AppianType.html#LIST_OF_EXTERNAL_SYSTEM_ID), [LIST_OF_FIXED](AppianType.html#LIST_OF_FIXED), [LIST_OF_FOLDER](AppianType.html#LIST_OF_FOLDER), [LIST_OF_FORUM](AppianType.html#LIST_OF_FORUM), [LIST_OF_GROUP](AppianType.html#LIST_OF_GROUP), [LIST_OF_GROUP_TYPE](AppianType.html#LIST_OF_GROUP_TYPE), [LIST_OF_ID_REFERENCE](AppianType.html#LIST_OF_ID_REFERENCE), [LIST_OF_INTEGER](AppianType.html#LIST_OF_INTEGER), [LIST_OF_INTEGER_KEY](AppianType.html#LIST_OF_INTEGER_KEY), [LIST_OF_INTERFACE](AppianType.html#LIST_OF_INTERFACE), [LIST_OF_INTERVAL_D_S](AppianType.html#LIST_OF_INTERVAL_D_S), [LIST_OF_KNOWLEDGE_CENTER](AppianType.html#LIST_OF_KNOWLEDGE_CENTER), [LIST_OF_LINKS_CHANNEL_FOLDER](AppianType.html#LIST_OF_LINKS_CHANNEL_FOLDER), [LIST_OF_MAP](AppianType.html#LIST_OF_MAP), [LIST_OF_MESSAGE](AppianType.html#LIST_OF_MESSAGE), [LIST_OF_NOTE](AppianType.html#LIST_OF_NOTE), [LIST_OF_NULL](AppianType.html#LIST_OF_NULL), [LIST_OF_OUTBOUND_INTEGRATION](AppianType.html#LIST_OF_OUTBOUND_INTEGRATION), [LIST_OF_PAGE](AppianType.html#LIST_OF_PAGE), [LIST_OF_PASSWORD](AppianType.html#LIST_OF_PASSWORD), [LIST_OF_PORTLET](AppianType.html#LIST_OF_PORTLET), [LIST_OF_PROCESS](AppianType.html#LIST_OF_PROCESS), [LIST_OF_PROCESS_ERROR](AppianType.html#LIST_OF_PROCESS_ERROR), [LIST_OF_PROCESS_MODEL](AppianType.html#LIST_OF_PROCESS_MODEL), [LIST_OF_PROCESS_MODEL_FOLDER](AppianType.html#LIST_OF_PROCESS_MODEL_FOLDER), [LIST_OF_QUERY_RULE](AppianType.html#LIST_OF_QUERY_RULE), [LIST_OF_QUICK_APP](AppianType.html#LIST_OF_QUICK_APP), [LIST_OF_RANGE](AppianType.html#LIST_OF_RANGE), [LIST_OF_RECORD](AppianType.html#LIST_OF_RECORD), [LIST_OF_RECORD_REFERENCE](AppianType.html#LIST_OF_RECORD_REFERENCE), [LIST_OF_RECORD_TYPE_ID](AppianType.html#LIST_OF_RECORD_TYPE_ID), [LIST_OF_RICH_TEXT](AppianType.html#LIST_OF_RICH_TEXT), [LIST_OF_RULE_FOLDER](AppianType.html#LIST_OF_RULE_FOLDER), [LIST_OF_SAFE_URI](AppianType.html#LIST_OF_SAFE_URI), [LIST_OF_SITE](AppianType.html#LIST_OF_SITE), [LIST_OF_STRING](AppianType.html#LIST_OF_STRING), [LIST_OF_STRING_KEY](AppianType.html#LIST_OF_STRING_KEY), [LIST_OF_TASK](AppianType.html#LIST_OF_TASK), [LIST_OF_TASK_REPORT](AppianType.html#LIST_OF_TASK_REPORT), [LIST_OF_TEMPO_FEED](AppianType.html#LIST_OF_TEMPO_FEED), [LIST_OF_TEMPO_REPORT](AppianType.html#LIST_OF_TEMPO_REPORT), [LIST_OF_TIME](AppianType.html#LIST_OF_TIME), [LIST_OF_TIMESTAMP](AppianType.html#LIST_OF_TIMESTAMP), [LIST_OF_TYPE](AppianType.html#LIST_OF_TYPE), [LIST_OF_UNIFORM_FOLDER](AppianType.html#LIST_OF_UNIFORM_FOLDER), [LIST_OF_UNION](AppianType.html#LIST_OF_UNION), [LIST_OF_USER_OR_GROUP](AppianType.html#LIST_OF_USER_OR_GROUP), [LIST_OF_USERNAME](AppianType.html#LIST_OF_USERNAME), [LIST_OF_VARIANT](AppianType.html#LIST_OF_VARIANT), [LIST_OF_WEB_API](AppianType.html#LIST_OF_WEB_API), [MAP](AppianType.html#MAP), [MESSAGE](AppianType.html#MESSAGE), [NOTE](AppianType.html#NOTE), [NULL](AppianType.html#NULL), [OUTBOUND_INTEGRATION](AppianType.html#OUTBOUND_INTEGRATION), [PAGE](AppianType.html#PAGE), [PASSWORD](AppianType.html#PASSWORD), [PORTLET](AppianType.html#PORTLET), [PROCESS](AppianType.html#PROCESS), [PROCESS_ERROR](AppianType.html#PROCESS_ERROR), [PROCESS_MODEL](AppianType.html#PROCESS_MODEL), [PROCESS_MODEL_FOLDER](AppianType.html#PROCESS_MODEL_FOLDER), [QUERY_RULE](AppianType.html#QUERY_RULE), [QUICK_APP](AppianType.html#QUICK_APP), [RANGE](AppianType.html#RANGE), [RECORD](AppianType.html#RECORD), [RECORD_REFERENCE](AppianType.html#RECORD_REFERENCE), [RECORD_TYPE_ID](AppianType.html#RECORD_TYPE_ID), [RICH_TEXT](AppianType.html#RICH_TEXT), [RULE_FOLDER](AppianType.html#RULE_FOLDER), [SAFE_URI](AppianType.html#SAFE_URI), [SITE](AppianType.html#SITE), [STRING](AppianType.html#STRING), [STRING_KEY](AppianType.html#STRING_KEY), [TASK](AppianType.html#TASK), [TASK_REPORT](AppianType.html#TASK_REPORT), [TEMPO_FEED](AppianType.html#TEMPO_FEED), [TEMPO_REPORT](AppianType.html#TEMPO_REPORT), [TIME](AppianType.html#TIME), [TIMESTAMP](AppianType.html#TIMESTAMP), [TYPE](AppianType.html#TYPE), [UI_CONTAINER](AppianType.html#UI_CONTAINER), [UNIFORM_FOLDER](AppianType.html#UNIFORM_FOLDER), [UNION](AppianType.html#UNION), [USER_OR_GROUP](AppianType.html#USER_OR_GROUP), [USERNAME](AppianType.html#USERNAME), [VARIANT](AppianType.html#VARIANT), [WEB_API](AppianType.html#WEB_API)`

    ### Fields inherited from interface com.appiancorp.type.DataTypeProperties

    `CURRENT_VERSION, FLAG_DEACTIVATE_ON_IMPORT, FLAG_DEACTIVATED, FLAG_HIDDEN, FLAG_IMPORTING, FLAG_LOCKED, FLAG_SECURED, FLAG_STRUCTURALLY_IDENTICAL, FLAG_SYSTEM, FLAG_TEMPORARY, FLAG_TYPE_DESIGNER, FLAG_WEB_SERVICES`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[DatatypeProperties](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addFlag](#addFlag\(int\))(int flag_)`

    `void`

    `[addToCache](#addToCache\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") cache)`

    INTERNAL: NOT API

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o_)`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getBase](#getBase\(\))()`

    The base of a Type is what it's based on.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getBoundType](#getBoundType\(\))()`

    If this type represents an external key, then the boundType is the type to which this external key is bound.

    `int`

    `[getCoupledValueType](#getCoupledValueType\(\))()`

    INTERNAL: NOT API

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getCreationTime](#getCreationTime\(\))()`

    The creation time is the time at which a type was created.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreator](#getCreator\(\))()`

    The user who created the datatype

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    The description of the type.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getDynamic](#getDynamic\(\))()`

    Deprecated.

    For Appian internal use only.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExternalTypeId](#getExternalTypeId\(\))()`

    `int`

    `[getFlags](#getFlags\(\))()`

    Returns the flag that has been set on this datatype.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getFoundation](#getFoundation\(\))()`

    The foundation is the ultimate base of a Type.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    The id of the type.

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getIds](#getIds\(com.appiancorp.suiteapi.type.Datatype%5B%5D\))([Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")[] dts_)`

    Get the ids (as a Long array) from an array of Datatype objects.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getList](#getList\(\))()`

    Returns the list of this type.

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getLocalDescription](#getLocalDescription\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedDescription](#getLocalizedDescription\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Returns the description of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedName](#getLocalizedName\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Returns the name of the object.

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getLocalName](#getLocalName\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMask](#getMask\(\))()`

    The mask determines the methodology used for converting to String on the backend.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    The name of the type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getNamespace](#getNamespace\(\))()`

    The namespace that the type is a part of.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getNameWithinNamespace](#getNameWithinNamespace\(\))()`

    The name of the type within its namespace.

    `[QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[getQualifiedName](#getQualifiedName\(\))()`

    The qualified name of the type.

    `[TypeResource](TypeResource.html "class in com.appiancorp.suiteapi.type")`

    `[getResource](#getResource\(\))()`

    This is arbitrary resource that may be stored with the Type.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getStableVersionNumber](#getStableVersionNumber\(\))()`

    Deprecated.

    Do not call this method.

    `protected static [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")`

    `[getType](#getType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getTypeof](#getTypeof\(\))()`

    The typeof the data inside the type.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getVersionId](#getVersionId\(\))()`

    Deprecated.

    Do not call this method.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getVersions](#getVersions\(\))()`

    Deprecated.

    Do not call this method.

    `boolean`

    `[hasFlag](#hasFlag\(int\))(int flag_)`

    `int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[isExternal](#isExternal\(\))()`

    Is this a key type bound to another type?

    `boolean`

    `[isFoundationType](#isFoundationType\(\))()`

    Returns whether this type is a foundation type.

    `boolean`

    `[isHidden](#isHidden\(\))()`

    `boolean`

    `[isKeyedBy](#isKeyedBy\(com.appiancorp.cache.CoupledKey\))(com.appiancorp.cache.CoupledKey coupledKey)`

    INTERNAL: NOT API

    `boolean`

    `[isLatestVersionModeOnForDataStores](#isLatestVersionModeOnForDataStores\(\))()`

    Gets latestVersionModeOnForDataStores flag, which determines whether references to this DatatypeProperties should be updated to the latest version before use.

    `boolean`

    `[isLatestVersionModeOnForProcessModels](#isLatestVersionModeOnForProcessModels\(\))()`

    Gets latestVersionModeOnForProcessModels flag, which determines whether references to this DatatypeProperties should be updated to the latest version before use.

    `boolean`

    `[isLatestVersionModeOnForRules](#isLatestVersionModeOnForRules\(\))()`

    Gets latestVersionModeOnForRules flag, which determines whether references to this DatatypeProperties should be updated to the latest version before use.

    `boolean`

    `[isListType](#isListType\(\))()`

    Returns whether this type is a list type.

    `boolean`

    `[isRecordProxyType](#isRecordProxyType\(\))()`

    Returns whether this type is a record proxy type.

    `boolean`

    `[isRecordType](#isRecordType\(\))()`

    Returns whether this type is a record type.

    `boolean`

    `[isRecordTypeOrProxyType](#isRecordTypeOrProxyType\(\))()`

    Returns whether this type is a record proxy type or a record type.

    `boolean`

    `[isSystemType](#isSystemType\(\))()`

    Returns whether this type is a system type.

    `boolean`

    `[isUnionType](#isUnionType\(\))()`

    Returns whether this type is a union type.

    `protected boolean`

    `[isValidToCache](#isValidToCache\(\))()`

    INTERNAL: NOT API

    `com.appiancorp.cache.CoupledElements`

    `[newCoupledKeys](#newCoupledKeys\(\))()`

    INTERNAL: NOT API

    `com.appiancorp.cache.CoupledElements`

    `[newCoupledValues](#newCoupledValues\(\))()`

    INTERNAL: NOT API

    `boolean`

    `[putAtCoupledKeys](#putAtCoupledKeys\(com.appiancorp.cache.CoupledElements,com.appiancorp.cache.CoupledElements,java.util.concurrent.ConcurrentMap\))(com.appiancorp.cache.CoupledElements coupledKeys, com.appiancorp.cache.CoupledElements currentCoupledValues, [ConcurrentMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/ConcurrentMap.html "class or interface in java.util.concurrent") intoCacheMap)`

    Deprecated. 

    `void`

    `[removeFlag](#removeFlag\(int\))(int flag_)`

    `void`

    `[setBase](#setBase\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") base)`

    `void`

    `[setBoundType](#setBoundType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") boundType)`

    `void`

    `[setCreationTime](#setCreationTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") creationTime)`

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator)`

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    `void`

    `[setDynamic](#setDynamic\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dynamic)`

    Deprecated.

    For Appian internal use only.

    `void`

    `[setExternalTypeId](#setExternalTypeId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalTypeId_)`

    `void`

    `[setFlags](#setFlags\(int\))(int flags_)`

    `void`

    `[setFoundation](#setFoundation\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foundation)`

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    `void`

    `[setLatestVersionModeOnForDataStores](#setLatestVersionModeOnForDataStores\(boolean\))(boolean latestVersionModeOnForDataStores)`

    Sets latestVersionModeOnForDataStores flag, which does not propagate to K.

    `void`

    `[setLatestVersionModeOnForProcessModels](#setLatestVersionModeOnForProcessModels\(boolean\))(boolean latestVersionModeOnForProcessModels)`

    Sets latestVersionModeOnForProcessModels flag, which does not propagate to K.

    `void`

    `[setLatestVersionModeOnForRules](#setLatestVersionModeOnForRules\(boolean\))(boolean latestVersionModeOnForRules)`

    Sets latestVersionModeOnForRules flag, which does not propagate to K.

    `void`

    `[setList](#setList\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") list_)`

    `void`

    `[setLocalDescription](#setLocalDescription\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") localDescription_)`

    `void`

    `[setLocalName](#setLocalName\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") localName_)`

    `void`

    `[setMask](#setMask\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") mask)`

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    `void`

    `[setQualifiedName](#setQualifiedName\(javax.xml.namespace.QName\))([QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") qualifiedName)`

    `void`

    `[setResource](#setResource\(com.appiancorp.suiteapi.type.TypeResource\))([TypeResource](TypeResource.html "class in com.appiancorp.suiteapi.type") resource)`

    `void`

    `[setStableVersionNumber](#setStableVersionNumber\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") stableVersionNumber)`

    Deprecated.

    Do not call this method.

    `void`

    `[setTypeof](#setTypeof\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeof)`

    `void`

    `[setVersionId](#setVersionId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") versionId)`

    Deprecated.

    see [`getVersionId()`](#getVersionId\(\))

    `void`

    `[setVersions](#setVersions\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] versions)`

    Deprecated.

    see `#setVersions()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        public static final org.slf4j.Logger LOG

    -   ### AUTO\_GENERATE\_LIST

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") AUTO\_GENERATE\_LIST

    -   ### SUGGEST\_PROPERTY\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SUGGEST\_PROPERTY\_NAME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.DatatypeProperties.SUGGEST_PROPERTY_NAME)

    -   ### SUGGEST\_PROPERTY\_DESCRIPTION

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SUGGEST\_PROPERTY\_DESCRIPTION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.DatatypeProperties.SUGGEST_PROPERTY_DESCRIPTION)

    -   ### SUGGEST\_PROPERTY\_QUALIFIED\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SUGGEST\_PROPERTY\_QUALIFIED\_NAME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.DatatypeProperties.SUGGEST_PROPERTY_QUALIFIED_NAME)

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

    -   ### SORT\_BY\_NAMESPACE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAMESPACE

    -   ### SORT\_BY\_CREATION\_TIME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATION\_TIME

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

    -   ### SORT\_BY\_VISIBILITY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_VISIBILITY

    -   ### SORT\_BY\_ORIGIN

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ORIGIN

    -   ### SORT\_BY\_FOUNDATION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_FOUNDATION

    -   ### SORT\_BY\_BASE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_BASE

    -   ### SORT\_BY\_TYPEOF

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TYPEOF

    -   ### SORT\_BY\_LIST

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LIST

    -   ### SORT\_BY\_VERSIONS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_VERSIONS

    -   ### SORT\_BY\_VERSION\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_VERSION\_ID

    -   ### DYNAMIC\_TYPE\_HAS\_VARIANT

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final int DYNAMIC\_TYPE\_HAS\_VARIANT

        Deprecated.

        For Appian internal use only.

        DYNAMIC\_TYPE\_HAS\_VARIANT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.DatatypeProperties.DYNAMIC_TYPE_HAS_VARIANT)

    -   ### DYNAMIC\_TYPE\_HAS\_USERNAME

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final int DYNAMIC\_TYPE\_HAS\_USERNAME

        Deprecated.

        For Appian internal use only.

        DYNAMIC\_TYPE\_HAS\_USERNAME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.DatatypeProperties.DYNAMIC_TYPE_HAS_USERNAME)

-   ## Constructor Details

    -   ### DatatypeProperties

        public DatatypeProperties()

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        The id of the type.

        Specified by:

        `getId` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        the id

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

    -   ### getBoundType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getBoundType()

        If this type represents an external key, then the boundType is the type to which this external key is bound. All data being stored externally will be cast to this type before being passed to the external data handler. As an example, if a Person has a SocialSecurity external key that extends AppianType.STRING, then the boundType would be Person. Storing an Employee onto the SocialSecurity external key would first cast the Employee to Person, then send the Person to the external key handler.

        Returns:

    -   ### setBoundType

        public void setBoundType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") boundType)

    -   ### isExternal

        public boolean isExternal()

        Is this a key type bound to another type?

        Returns:

    -   ### getExternalTypeId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExternalTypeId()

        Returns:

        the externalTypeId

    -   ### setExternalTypeId

        public void setExternalTypeId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalTypeId\_)

        Parameters:

        `externalTypeId_` - the externalTypeId to set

    -   ### getDynamic

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getDynamic()

        Deprecated.

        For Appian internal use only.

        Gets the value of the dynamic flag. This flag determines whether this type has children at depth that hold Variants, Usernames, or both. The Design Engine does the calculation which determines the value of this field. That value is then propagated to the Execution and Content Engines.

        Returns:

        the dynamic flag, a bit vector holding DYNAMIC\_TYPE\_HAS\_VARIANT, DYNAMIC\_TYPE\_HAS\_USERNAME or both, or 0 (not dynamic) within it

    -   ### setDynamic

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setDynamic([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dynamic)

        Deprecated.

        For Appian internal use only.

        Sets the value of the dynamic flag. This flag is ignored during Datatype creation.

        Parameters:

        `dynamic` - the dynamic flag to set.

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        The name of the type. This may be any text string, but null names and those names beginning with $ are considered private.

        Specified by:

        `getName` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        the name

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

    -   ### getNamespace

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getNamespace()

        The namespace that the type is a part of. This may be any text string.

        Specified by:

        `getNamespace` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        the namespace

    -   ### getNameWithinNamespace

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getNameWithinNamespace()

        The name of the type within its namespace. This may be any text string.

        Specified by:

        `getNameWithinNamespace` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        the name

    -   ### getQualifiedName

        public [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") getQualifiedName()

        The qualified name of the type. Namespace and local part are persisted, but prefix is not.

        Specified by:

        `getQualifiedName` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        the qualified name

    -   ### setQualifiedName

        public void setQualifiedName([QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") qualifiedName)

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        The description of the type. This may be any text string.

        Specified by:

        `getDescription` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        the description

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)

    -   ### getBase

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getBase()

        The base of a Type is what it's based on. Example: AppianType.TYPE\_LIST\_OF\_GROUP is based on AppianType.TYPE\_LIST\_OF\_INTEGER\_KEY is based on AppianType.TYPE\_LIST For a primitive (such as INTEGER), it's based on itself. For a list type, it's based on LIST. For a record type, it's based on RECORD, etc.

    -   ### setBase

        public void setBase([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") base)

    -   ### getFoundation

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getFoundation()

        The foundation is the ultimate base of a Type. Example: AppianType.TYPE\_LIST\_OF\_GROUP is based on AppianType.TYPE\_LIST\_OF\_INTEGER\_KEY is based on AppianType.TYPE\_LIST So, the foundation of AppianType.TYPE\_LIST\_OF\_GROUP is AppianType.TYPE\_LIST. For a primitive (such as INTEGER), it's based on itself. For a list type, it's based on LIST. For a record type, it's based on RECORD, etc. Read Only Property. (The setter is only used internally.)

        Specified by:

        `getFoundation` in interface `com.appiancorp.type.DataTypeProperties`

    -   ### setFoundation

        public void setFoundation([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foundation)

    -   ### getCreationTime

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getCreationTime()

        The creation time is the time at which a type was created.

        Returns:

        the time at which this type was created

    -   ### setCreationTime

        public void setCreationTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") creationTime)

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        The user who created the datatype

        Returns:

        the creator

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator)

    -   ### getTypeof

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getTypeof()

        The typeof the data inside the type. For a primitive (such as INTEGER), it's based on itself. For a list type, its typeof is the contained type; for example, the typeof LIST\_OF\_INTEGER is INTEGER.

        Specified by:

        `getTypeof` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        the type

    -   ### setTypeof

        public void setTypeof([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeof)

    -   ### isListType

        public boolean isListType()

        Returns whether this type is a list type. It will return true for any type that is based on the type LIST. Will also return true for the LIST datatype itself. If this type is a list type, the type of the contained items can be obtained using [`getTypeof()`](#getTypeof\(\)).

        Specified by:

        `isListType` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        a boolean specifying whether this datatype is a list type

    -   ### isRecordType

        public boolean isRecordType()

        Returns whether this type is a record type. It will return true for any type that is based on the type RECORD. Will also return true for the RECORD datatype itself.

        Specified by:

        `isRecordType` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        a boolean specifying whether this datatype is a record type

    -   ### isRecordProxyType

        public boolean isRecordProxyType()

        Returns whether this type is a record proxy type. It will return true for any type that is based on the type RECORD MAP.

        Returns:

        a boolean specifying whether this datatype is a record proxy type

    -   ### isRecordTypeOrProxyType

        public boolean isRecordTypeOrProxyType()

        Returns whether this type is a record proxy type or a record type. It will return true for any type that is based on either the type RECORD or RECORD MAP.

        Returns:

        a boolean specifying whether this datatype is a record type or a record proxy type

    -   ### isUnionType

        public boolean isUnionType()

        Returns whether this type is a union type. It will return true for any type that is based on the type UNION. Will also return true for the UNION datatype itself.

        Returns:

        a boolean specifying whether this datatype is a union type

    -   ### isFoundationType

        public boolean isFoundationType()

        Returns whether this type is a foundation type. For foundation types (such as INTEGER), returns true; otherwise returns false. If this type is NOT a foundation type, its direct base type can be obtained using [`getBase()`](#getBase\(\)), while its ultimate base type can be obtained using [`getFoundation()`](#getFoundation\(\)).

        Returns:

        a boolean specifying whether this datatype is a foundation type

    -   ### isSystemType

        public boolean isSystemType()

        Returns whether this type is a system type.

        Returns:

        a boolean specifying whether this datatype contains the `DataTypeProperties.FLAG_SYSTEM` flag

    -   ### getList

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getList()

        Returns the list of this type. Returns null if it does not exist. e.g. this would return LIST\_OF\_INTEGER for the INTEGER datatype

        Specified by:

        `getList` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        the id of the list type

    -   ### setList

        public void setList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") list\_)

    -   ### getMask

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMask()

        The mask determines the methodology used for converting to String on the backend. A null indicates the default methodology. Other masks supported include: Date/Time masks (Gregorian only): "mmmmm" J,F,M,A,M,J,J,A,S,O,N,D (this is NOT valid for input) "mmmm" January February March April May June July August September October November December "mmm" Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nev Dec "mm" 01 .. 12 "m" 1 .. 12 "MMMMM" J,F,M,A,M,J,J,A,S,O,N,D (this is NOT valid for input) "MMMM" January February March April May June July August September October November December "MMM" Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nev Dec "MM" 01 .. 12 "M" 1 .. 12 "yyyy" 1972 "yy" 72 "ddd" 1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th 11th 12th 13th 14th 15th 16th 17th 18th 19th 20th 21st 22nd 23rd 24th 25th 26th 27th 28th 29th 30th 31st "dd" 01 .. 31 "d" 1 .. 31 "hh" 01..12 (if AM/PM) or 00..23 (if no AM/PM) "h" 1..12 (if AM/PM) or 0..23 (if no AM/PM) "HH" 01..12 (if AM/PM) or 00..23 (if no AM/PM) "H" 1..12 (if AM/PM) or 0..23 (if no AM/PM) "kk" 01..12 (if AM/PM) or 01..24 (if no AM/PM) "k" 1..12 (if AM/PM) or 1..24 (if no AM/PM) "mm" minute 00..59 (IF hour already processed, i.e., h to left anywhere in format) "ss" second 00..59 "AM/PM" AM/PM in uppercase "am/pm" am/pm in lowercase "A/P" A/P in uppercase "a/p" a/p in lowercase "a" AM or PM in uppercase "aa" AM or PM in uppercase "\[h\]" the number of hours in the era "@" e.g., 26310.5426 (the serial date value) "dddd" Day of week name, Saturday, Sunday, Monday, etc. "EEEE" Day of week name, Saturday, Sunday, Monday, etc. "EEE" Day of week name, Sat, Sun, Mon, etc. "z" Timezone Name (EST) "zzz" Timezone Name (EST) "zzzz" Timezone Name (Eastern Standard Time) Example: "mmm dd, yyyy" Numeric masks: positive;negative;zero Mask separation for positive, negative and zero numbers. "%" Multply the number by 100.0 "?" same as # "\_" space "." decimal alignment "," grouping character "0" left of decimal, 0-filled or digit, right of decimal 0-filled or digit "#" left of decimal, space-filled or digit, right of decimal 0-filled or digit "-" left of decimal only, space or - depending on sign of number "+" left of decimal only, + or - depending on sign of number "\\" include next character directly "\*" left of decimal only, \*-filled or digit rather than 0-filled implicit places "$" left of decimal only, floating currency character Example: "$$$$,$$$,$$$.00" Boolean masks: true;false Specify true and false text. Example: "yes;no" Binary masks: x Hex Digits of Byte o Octal Digits of Byte d Decimal Digits of Byte c Character Representation of Byte Example: "x" might yield "000102030405060708090a0b0c0d0e0f101112" Null masks: text The text representing "null" Example: "nil" Record masks: 'field' The contents of the named field text The text itself \[mask\] Only present if all fields in mask are present Example: "'last', 'first'\[ 'middleInitial'.\]" or "'first' \['middleInitial'. \]'last'"

    -   ### setMask

        public void setMask([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") mask)

    -   ### getResource

        public [TypeResource](TypeResource.html "class in com.appiancorp.suiteapi.type") getResource()

        This is arbitrary resource that may be stored with the Type. Only use this for truly generate information, such as how a form should display the type, etc.

        Returns:

        the resource

    -   ### setResource

        public void setResource([TypeResource](TypeResource.html "class in com.appiancorp.suiteapi.type") resource)

    -   ### getVersionId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getVersionId()

        Deprecated.

        Do not call this method. The return value of this method cannot be relied on because it can become out of date as further data types are created.

        Version id, -1 is current.

        Returns:

        the version id

    -   ### setVersionId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setVersionId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") versionId)

        Deprecated.

        see [`getVersionId()`](#getVersionId\(\))

        Version id, -1 is current. (Read only from K.)

        Parameters:

        `versionId` - the value to set as the version id

    -   ### getStableVersionNumber

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getStableVersionNumber()

        Deprecated.

        Do not call this method.

        Returns:

        the stable version number of this type version in this version chain.

    -   ### setStableVersionNumber

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setStableVersionNumber([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") stableVersionNumber)

        Deprecated.

        Do not call this method.

        Parameters:

        `stableVersionNumber` - The stable version number of this type version.

    -   ### getVersions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getVersions()

        Deprecated.

        Do not call this method. The return value of this method cannot be relied on because it can become out of date as further data types are created.

        All ids of versions in this version chain if more than one version exists. If only one version exists, returns empty array.

        Returns:

        all ids of versions in this version chain if more than one version exists.

    -   ### setVersions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] versions)

        Deprecated.

        see `#setVersions()`

        All ids of versions in this version chain. (Read only from K.)

        Parameters:

        `versions` - All ids of versions in this version chain

    -   ### getFlags

        public int getFlags()

        Returns the flag that has been set on this datatype. FLAG\_HIDDEN indicates that this should be hidden from pickers FLAG\_SYSTEM indicates that this is a system datatype (not custom). FLAG\_IMPORTING indicates that the type is being imported and that a subsequent call to updateType may update all fields. FLAG\_NONE indicates that no flag has been set.

        Specified by:

        `getFlags` in interface `com.appiancorp.type.DataTypeProperties`

        Returns:

        one of the FLAG\_\* constants.

    -   ### setFlags

        public void setFlags(int flags\_)

    -   ### hasFlag

        public boolean hasFlag(int flag\_)

        Specified by:

        `hasFlag` in interface `com.appiancorp.type.DataTypeProperties`

    -   ### addFlag

        public void addFlag(int flag\_)

    -   ### removeFlag

        public void removeFlag(int flag\_)

    -   ### getLocalName

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getLocalName()

        Returns:

    -   ### setLocalName

        public void setLocalName([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") localName\_)

    -   ### getLocalizedName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedName([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Returns the name of the object. It will be localized if possible, otherwise the default name will be returned

        Parameters:

        `locale_` - the locale to use

        Returns:

        the name of the Datatype, localized if possible

    -   ### getLocalDescription

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getLocalDescription()

        Returns:

    -   ### setLocalDescription

        public void setLocalDescription([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") localDescription\_)

    -   ### getLocalizedDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedDescription([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Returns the description of the object. It will be localized if possible, otherwise the default description will be returned

        Parameters:

        `locale_` - the locale to use

        Returns:

        the description of the Datatype, localized if possible

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getIds

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getIds([Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\[\] dts\_)

        Get the ids (as a Long array) from an array of Datatype objects.

        Parameters:

        `dts_` - an array of datatypes

        Returns:

        an array of the same size as the given array, containing the ids of the given datatypes

    -   ### getType

        protected static [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type") getType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### isHidden

        public boolean isHidden()

        Specified by:

        `isHidden` in interface `com.appiancorp.type.DataTypeProperties`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o\_)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### isLatestVersionModeOnForDataStores

        public boolean isLatestVersionModeOnForDataStores()

        Gets latestVersionModeOnForDataStores flag, which determines whether references to this DatatypeProperties should be updated to the latest version before use.

        Returns:

        latestVersionModeOnForDataStores flag

    -   ### setLatestVersionModeOnForDataStores

        public void setLatestVersionModeOnForDataStores(boolean latestVersionModeOnForDataStores)

        Sets latestVersionModeOnForDataStores flag, which does not propagate to K.

        Parameters:

        `latestVersionModeOnForDataStores` - flag to be set.

    -   ### isLatestVersionModeOnForProcessModels

        public boolean isLatestVersionModeOnForProcessModels()

        Gets latestVersionModeOnForProcessModels flag, which determines whether references to this DatatypeProperties should be updated to the latest version before use.

        Returns:

        latestVersionModeOnForProcessModels flag

    -   ### setLatestVersionModeOnForProcessModels

        public void setLatestVersionModeOnForProcessModels(boolean latestVersionModeOnForProcessModels)

        Sets latestVersionModeOnForProcessModels flag, which does not propagate to K.

        Parameters:

        `latestVersionModeOnForProcessModels` - flag to be set.

    -   ### isLatestVersionModeOnForRules

        public boolean isLatestVersionModeOnForRules()

        Gets latestVersionModeOnForRules flag, which determines whether references to this DatatypeProperties should be updated to the latest version before use.

        Returns:

        latestVersionModeOnForRules flag

    -   ### setLatestVersionModeOnForRules

        public void setLatestVersionModeOnForRules(boolean latestVersionModeOnForRules)

        Sets latestVersionModeOnForRules flag, which does not propagate to K.

        Parameters:

        `latestVersionModeOnForRules` - flag to be set.

    -   ### putAtCoupledKeys

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public boolean putAtCoupledKeys(com.appiancorp.cache.CoupledElements coupledKeys, com.appiancorp.cache.CoupledElements currentCoupledValues, [ConcurrentMap](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/ConcurrentMap.html "class or interface in java.util.concurrent") intoCacheMap)

        Deprecated.

        INTERNAL

    -   ### newCoupledKeys

        public com.appiancorp.cache.CoupledElements newCoupledKeys()

        INTERNAL: NOT API

        Specified by:

        `newCoupledKeys` in interface `com.appiancorp.cache.CoupledValue`

    -   ### newCoupledValues

        public com.appiancorp.cache.CoupledElements newCoupledValues()

        INTERNAL: NOT API

        Specified by:

        `newCoupledValues` in interface `com.appiancorp.cache.CoupledValue`

    -   ### getCoupledValueType

        public int getCoupledValueType()

        INTERNAL: NOT API

        Specified by:

        `getCoupledValueType` in interface `com.appiancorp.cache.CoupledValue`

    -   ### isKeyedBy

        public boolean isKeyedBy(com.appiancorp.cache.CoupledKey coupledKey)

        INTERNAL: NOT API

        Specified by:

        `isKeyedBy` in interface `com.appiancorp.cache.CoupledValue`

    -   ### isValidToCache

        protected boolean isValidToCache()

        INTERNAL: NOT API

    -   ### addToCache

        public void addToCache([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") cache)

        INTERNAL: NOT API