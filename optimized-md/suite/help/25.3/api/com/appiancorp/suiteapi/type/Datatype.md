---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/Datatype.html
original_path: api/com/appiancorp/suiteapi/type/Datatype.html
version: "25.3"
title: "Class Datatype"
page_id: "api/com/appiancorp/suiteapi/type/Datatype"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type](package-summary.html)

# Class Datatype

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.type.DatatypeProperties](DatatypeProperties.html "class in com.appiancorp.suiteapi.type")

com.appiancorp.suiteapi.type.Datatype

All Implemented Interfaces:

`com.appiancorp.cache.CoupledValue`, `[AppianType](AppianType.html "interface in com.appiancorp.suiteapi.type")`, `com.appiancorp.type.DataType`, `com.appiancorp.type.DataTypeProperties`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

@GwtCompatible public class Datatype extends [DatatypeProperties](DatatypeProperties.html "class in com.appiancorp.suiteapi.type") implements com.appiancorp.type.DataType, com.appiancorp.cache.CoupledValue

Datatype The Datatype of a TypedValue. Types are immutable; once created, they never change on the backend. All builtin Datatypes have a parent of null (global). A Type number is constant once created in a given installation of the product, and thus a Type may be safely cached.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.type.Datatype)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TYPE_PROPERTY_UNION_KEYS](#TYPE_PROPERTY_UNION_KEYS)`

    The name of the type property that holds the type keys used to identify the types that are part of a union (ie. for a type that has `AppianType.UNION` as its foundation type).

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TYPE_PROPERTY_UNION_TYPES](#TYPE_PROPERTY_UNION_TYPES)`

    The name of the type property that holds the type ids of the types that are part of a union (ie. for a type that has `AppianType.UNION` as its foundation type).

    ### Fields inherited from class com.appiancorp.suiteapi.type.[DatatypeProperties](DatatypeProperties.html "class in com.appiancorp.suiteapi.type")

    `[AUTO_GENERATE_LIST](DatatypeProperties.html#AUTO_GENERATE_LIST), [DYNAMIC_TYPE_HAS_USERNAME](DatatypeProperties.html#DYNAMIC_TYPE_HAS_USERNAME), [DYNAMIC_TYPE_HAS_VARIANT](DatatypeProperties.html#DYNAMIC_TYPE_HAS_VARIANT), [SORT_BY_BASE](DatatypeProperties.html#SORT_BY_BASE), [SORT_BY_CREATION_TIME](DatatypeProperties.html#SORT_BY_CREATION_TIME), [SORT_BY_CREATOR](DatatypeProperties.html#SORT_BY_CREATOR), [SORT_BY_DESCRIPTION](DatatypeProperties.html#SORT_BY_DESCRIPTION), [SORT_BY_FOUNDATION](DatatypeProperties.html#SORT_BY_FOUNDATION), [SORT_BY_ID](DatatypeProperties.html#SORT_BY_ID), [SORT_BY_LIST](DatatypeProperties.html#SORT_BY_LIST), [SORT_BY_NAME](DatatypeProperties.html#SORT_BY_NAME), [SORT_BY_NAMESPACE](DatatypeProperties.html#SORT_BY_NAMESPACE), [SORT_BY_ORIGIN](DatatypeProperties.html#SORT_BY_ORIGIN), [SORT_BY_TYPEOF](DatatypeProperties.html#SORT_BY_TYPEOF), [SORT_BY_VERSION_ID](DatatypeProperties.html#SORT_BY_VERSION_ID), [SORT_BY_VERSIONS](DatatypeProperties.html#SORT_BY_VERSIONS), [SORT_BY_VISIBILITY](DatatypeProperties.html#SORT_BY_VISIBILITY), [SUGGEST_PROPERTY_DESCRIPTION](DatatypeProperties.html#SUGGEST_PROPERTY_DESCRIPTION), [SUGGEST_PROPERTY_NAME](DatatypeProperties.html#SUGGEST_PROPERTY_NAME), [SUGGEST_PROPERTY_QUALIFIED_NAME](DatatypeProperties.html#SUGGEST_PROPERTY_QUALIFIED_NAME)`

    ### Fields inherited from interface com.appiancorp.suiteapi.type.[AppianType](AppianType.html "interface in com.appiancorp.suiteapi.type")

    `[ADMINISTERED_PROPERTY](AppianType.html#ADMINISTERED_PROPERTY), [ALIAS](AppianType.html#ALIAS), [APPLICATION](AppianType.html#APPLICATION), [ARRAY](AppianType.html#ARRAY), [ATTACHMENT](AppianType.html#ATTACHMENT), [BEAN](AppianType.html#BEAN), [BIG_RATIONAL](AppianType.html#BIG_RATIONAL), [BINARY](AppianType.html#BINARY), [BOOLEAN](AppianType.html#BOOLEAN), [CHART_COLOR](AppianType.html#CHART_COLOR), [COMMUNITY](AppianType.html#COMMUNITY), [CONNECTED_SYSTEM](AppianType.html#CONNECTED_SYSTEM), [CONTENT_COMMUNITY](AppianType.html#CONTENT_COMMUNITY), [CONTENT_CONSTANT](AppianType.html#CONTENT_CONSTANT), [CONTENT_CUSTOM](AppianType.html#CONTENT_CUSTOM), [CONTENT_DOCUMENT](AppianType.html#CONTENT_DOCUMENT), [CONTENT_FOLDER](AppianType.html#CONTENT_FOLDER), [CONTENT_FREEFORM_RULE](AppianType.html#CONTENT_FREEFORM_RULE), [CONTENT_ITEM](AppianType.html#CONTENT_ITEM), [CONTENT_KNOWLEDGE_CENTER](AppianType.html#CONTENT_KNOWLEDGE_CENTER), [CONTENT_RULE](AppianType.html#CONTENT_RULE), [CURRENCY](AppianType.html#CURRENCY), [DATA_SOURCE](AppianType.html#DATA_SOURCE), [DATA_STORE](AppianType.html#DATA_STORE), [DATA_STORE_ENTITY](AppianType.html#DATA_STORE_ENTITY), [DATATYPE](AppianType.html#DATATYPE), [DATE](AppianType.html#DATE), [DECISION](AppianType.html#DECISION), [DECISION_TABLE](AppianType.html#DECISION_TABLE), [DECRYPTED_TEXT](AppianType.html#DECRYPTED_TEXT), [DEFERRED](AppianType.html#DEFERRED), [DICTIONARY](AppianType.html#DICTIONARY), [DISCUSSION_THREAD](AppianType.html#DISCUSSION_THREAD), [DOCUMENT](AppianType.html#DOCUMENT), [DOCUMENT_OR_FOLDER](AppianType.html#DOCUMENT_OR_FOLDER), [DOUBLE](AppianType.html#DOUBLE), [EMAIL_ADDRESS](AppianType.html#EMAIL_ADDRESS), [EMAIL_RECIPIENT](AppianType.html#EMAIL_RECIPIENT), [EMBEDDED_SAIL_THEME_ID](AppianType.html#EMBEDDED_SAIL_THEME_ID), [ENCRYPTED_TEXT](AppianType.html#ENCRYPTED_TEXT), [EVENT](AppianType.html#EVENT), [EXPRESSION](AppianType.html#EXPRESSION), [EXTERNAL_REFERENCE](AppianType.html#EXTERNAL_REFERENCE), [EXTERNAL_REFERENCE_WITH_INDICES](AppianType.html#EXTERNAL_REFERENCE_WITH_INDICES), [EXTERNAL_SYSTEM_ID](AppianType.html#EXTERNAL_SYSTEM_ID), [FIXED](AppianType.html#FIXED), [FOLDER](AppianType.html#FOLDER), [FORUM](AppianType.html#FORUM), [GROUP](AppianType.html#GROUP), [GROUP_TYPE](AppianType.html#GROUP_TYPE), [ID_REFERENCE](AppianType.html#ID_REFERENCE), [INITIAL_CUSTOM_TYPE](AppianType.html#INITIAL_CUSTOM_TYPE), [INTEGER](AppianType.html#INTEGER), [INTEGER_KEY](AppianType.html#INTEGER_KEY), [INTERFACE](AppianType.html#INTERFACE), [INTERVAL_D_S](AppianType.html#INTERVAL_D_S), [KNOWLEDGE_CENTER](AppianType.html#KNOWLEDGE_CENTER), [LINKS_CHANNEL_FOLDER](AppianType.html#LINKS_CHANNEL_FOLDER), [LIST](AppianType.html#LIST), [LIST_OF_ADMINISTERED_PROPERTY](AppianType.html#LIST_OF_ADMINISTERED_PROPERTY), [LIST_OF_APPLICATION](AppianType.html#LIST_OF_APPLICATION), [LIST_OF_ATTACHMENT](AppianType.html#LIST_OF_ATTACHMENT), [LIST_OF_BEAN](AppianType.html#LIST_OF_BEAN), [LIST_OF_BIG_RATIONAL](AppianType.html#LIST_OF_BIG_RATIONAL), [LIST_OF_BINARY](AppianType.html#LIST_OF_BINARY), [LIST_OF_BOOLEAN](AppianType.html#LIST_OF_BOOLEAN), [LIST_OF_CHART_COLOR](AppianType.html#LIST_OF_CHART_COLOR), [LIST_OF_COMMUNITY](AppianType.html#LIST_OF_COMMUNITY), [LIST_OF_CONNECTED_SYSTEM](AppianType.html#LIST_OF_CONNECTED_SYSTEM), [LIST_OF_CONTENT_COMMUNITY](AppianType.html#LIST_OF_CONTENT_COMMUNITY), [LIST_OF_CONTENT_CONSTANT](AppianType.html#LIST_OF_CONTENT_CONSTANT), [LIST_OF_CONTENT_CUSTOM](AppianType.html#LIST_OF_CONTENT_CUSTOM), [LIST_OF_CONTENT_DOCUMENT](AppianType.html#LIST_OF_CONTENT_DOCUMENT), [LIST_OF_CONTENT_FOLDER](AppianType.html#LIST_OF_CONTENT_FOLDER), [LIST_OF_CONTENT_FREEFORM_RULE](AppianType.html#LIST_OF_CONTENT_FREEFORM_RULE), [LIST_OF_CONTENT_ITEM](AppianType.html#LIST_OF_CONTENT_ITEM), [LIST_OF_CONTENT_KNOWLEDGE_CENTER](AppianType.html#LIST_OF_CONTENT_KNOWLEDGE_CENTER), [LIST_OF_CONTENT_RULE](AppianType.html#LIST_OF_CONTENT_RULE), [LIST_OF_CURRENCY](AppianType.html#LIST_OF_CURRENCY), [LIST_OF_DATA_SOURCE](AppianType.html#LIST_OF_DATA_SOURCE), [LIST_OF_DATA_STORE](AppianType.html#LIST_OF_DATA_STORE), [LIST_OF_DATA_STORE_ENTITY](AppianType.html#LIST_OF_DATA_STORE_ENTITY), [LIST_OF_DATATYPE](AppianType.html#LIST_OF_DATATYPE), [LIST_OF_DATE](AppianType.html#LIST_OF_DATE), [LIST_OF_DECISION](AppianType.html#LIST_OF_DECISION), [LIST_OF_DECISION_TABLE](AppianType.html#LIST_OF_DECISION_TABLE), [LIST_OF_DECRYPTED_TEXT](AppianType.html#LIST_OF_DECRYPTED_TEXT), [LIST_OF_DEFERRED](AppianType.html#LIST_OF_DEFERRED), [LIST_OF_DICTIONARY](AppianType.html#LIST_OF_DICTIONARY), [LIST_OF_DISCUSSION_THREAD](AppianType.html#LIST_OF_DISCUSSION_THREAD), [LIST_OF_DOCUMENT](AppianType.html#LIST_OF_DOCUMENT), [LIST_OF_DOCUMENT_OR_FOLDER](AppianType.html#LIST_OF_DOCUMENT_OR_FOLDER), [LIST_OF_DOUBLE](AppianType.html#LIST_OF_DOUBLE), [LIST_OF_EMAIL_ADDRESS](AppianType.html#LIST_OF_EMAIL_ADDRESS), [LIST_OF_EMAIL_RECIPIENT](AppianType.html#LIST_OF_EMAIL_RECIPIENT), [LIST_OF_EMBEDDED_SAIL_THEME_ID](AppianType.html#LIST_OF_EMBEDDED_SAIL_THEME_ID), [LIST_OF_ENCRYPTED_TEXT](AppianType.html#LIST_OF_ENCRYPTED_TEXT), [LIST_OF_EVENT](AppianType.html#LIST_OF_EVENT), [LIST_OF_EXPRESSION](AppianType.html#LIST_OF_EXPRESSION), [LIST_OF_EXTERNAL_REFERENCE](AppianType.html#LIST_OF_EXTERNAL_REFERENCE), [LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES](AppianType.html#LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES), [LIST_OF_EXTERNAL_SYSTEM_ID](AppianType.html#LIST_OF_EXTERNAL_SYSTEM_ID), [LIST_OF_FIXED](AppianType.html#LIST_OF_FIXED), [LIST_OF_FOLDER](AppianType.html#LIST_OF_FOLDER), [LIST_OF_FORUM](AppianType.html#LIST_OF_FORUM), [LIST_OF_GROUP](AppianType.html#LIST_OF_GROUP), [LIST_OF_GROUP_TYPE](AppianType.html#LIST_OF_GROUP_TYPE), [LIST_OF_ID_REFERENCE](AppianType.html#LIST_OF_ID_REFERENCE), [LIST_OF_INTEGER](AppianType.html#LIST_OF_INTEGER), [LIST_OF_INTEGER_KEY](AppianType.html#LIST_OF_INTEGER_KEY), [LIST_OF_INTERFACE](AppianType.html#LIST_OF_INTERFACE), [LIST_OF_INTERVAL_D_S](AppianType.html#LIST_OF_INTERVAL_D_S), [LIST_OF_KNOWLEDGE_CENTER](AppianType.html#LIST_OF_KNOWLEDGE_CENTER), [LIST_OF_LINKS_CHANNEL_FOLDER](AppianType.html#LIST_OF_LINKS_CHANNEL_FOLDER), [LIST_OF_MAP](AppianType.html#LIST_OF_MAP), [LIST_OF_MESSAGE](AppianType.html#LIST_OF_MESSAGE), [LIST_OF_NOTE](AppianType.html#LIST_OF_NOTE), [LIST_OF_NULL](AppianType.html#LIST_OF_NULL), [LIST_OF_OUTBOUND_INTEGRATION](AppianType.html#LIST_OF_OUTBOUND_INTEGRATION), [LIST_OF_PAGE](AppianType.html#LIST_OF_PAGE), [LIST_OF_PASSWORD](AppianType.html#LIST_OF_PASSWORD), [LIST_OF_PORTLET](AppianType.html#LIST_OF_PORTLET), [LIST_OF_PROCESS](AppianType.html#LIST_OF_PROCESS), [LIST_OF_PROCESS_ERROR](AppianType.html#LIST_OF_PROCESS_ERROR), [LIST_OF_PROCESS_MODEL](AppianType.html#LIST_OF_PROCESS_MODEL), [LIST_OF_PROCESS_MODEL_FOLDER](AppianType.html#LIST_OF_PROCESS_MODEL_FOLDER), [LIST_OF_QUERY_RULE](AppianType.html#LIST_OF_QUERY_RULE), [LIST_OF_QUICK_APP](AppianType.html#LIST_OF_QUICK_APP), [LIST_OF_RANGE](AppianType.html#LIST_OF_RANGE), [LIST_OF_RECORD](AppianType.html#LIST_OF_RECORD), [LIST_OF_RECORD_REFERENCE](AppianType.html#LIST_OF_RECORD_REFERENCE), [LIST_OF_RECORD_TYPE_ID](AppianType.html#LIST_OF_RECORD_TYPE_ID), [LIST_OF_RICH_TEXT](AppianType.html#LIST_OF_RICH_TEXT), [LIST_OF_RULE_FOLDER](AppianType.html#LIST_OF_RULE_FOLDER), [LIST_OF_SAFE_URI](AppianType.html#LIST_OF_SAFE_URI), [LIST_OF_SITE](AppianType.html#LIST_OF_SITE), [LIST_OF_STRING](AppianType.html#LIST_OF_STRING), [LIST_OF_STRING_KEY](AppianType.html#LIST_OF_STRING_KEY), [LIST_OF_TASK](AppianType.html#LIST_OF_TASK), [LIST_OF_TASK_REPORT](AppianType.html#LIST_OF_TASK_REPORT), [LIST_OF_TEMPO_FEED](AppianType.html#LIST_OF_TEMPO_FEED), [LIST_OF_TEMPO_REPORT](AppianType.html#LIST_OF_TEMPO_REPORT), [LIST_OF_TIME](AppianType.html#LIST_OF_TIME), [LIST_OF_TIMESTAMP](AppianType.html#LIST_OF_TIMESTAMP), [LIST_OF_TYPE](AppianType.html#LIST_OF_TYPE), [LIST_OF_UNIFORM_FOLDER](AppianType.html#LIST_OF_UNIFORM_FOLDER), [LIST_OF_UNION](AppianType.html#LIST_OF_UNION), [LIST_OF_USER_OR_GROUP](AppianType.html#LIST_OF_USER_OR_GROUP), [LIST_OF_USERNAME](AppianType.html#LIST_OF_USERNAME), [LIST_OF_VARIANT](AppianType.html#LIST_OF_VARIANT), [LIST_OF_WEB_API](AppianType.html#LIST_OF_WEB_API), [MAP](AppianType.html#MAP), [MESSAGE](AppianType.html#MESSAGE), [NOTE](AppianType.html#NOTE), [NULL](AppianType.html#NULL), [OUTBOUND_INTEGRATION](AppianType.html#OUTBOUND_INTEGRATION), [PAGE](AppianType.html#PAGE), [PASSWORD](AppianType.html#PASSWORD), [PORTLET](AppianType.html#PORTLET), [PROCESS](AppianType.html#PROCESS), [PROCESS_ERROR](AppianType.html#PROCESS_ERROR), [PROCESS_MODEL](AppianType.html#PROCESS_MODEL), [PROCESS_MODEL_FOLDER](AppianType.html#PROCESS_MODEL_FOLDER), [QUERY_RULE](AppianType.html#QUERY_RULE), [QUICK_APP](AppianType.html#QUICK_APP), [RANGE](AppianType.html#RANGE), [RECORD](AppianType.html#RECORD), [RECORD_REFERENCE](AppianType.html#RECORD_REFERENCE), [RECORD_TYPE_ID](AppianType.html#RECORD_TYPE_ID), [RICH_TEXT](AppianType.html#RICH_TEXT), [RULE_FOLDER](AppianType.html#RULE_FOLDER), [SAFE_URI](AppianType.html#SAFE_URI), [SITE](AppianType.html#SITE), [STRING](AppianType.html#STRING), [STRING_KEY](AppianType.html#STRING_KEY), [TASK](AppianType.html#TASK), [TASK_REPORT](AppianType.html#TASK_REPORT), [TEMPO_FEED](AppianType.html#TEMPO_FEED), [TEMPO_REPORT](AppianType.html#TEMPO_REPORT), [TIME](AppianType.html#TIME), [TIMESTAMP](AppianType.html#TIMESTAMP), [TYPE](AppianType.html#TYPE), [UI_CONTAINER](AppianType.html#UI_CONTAINER), [UNIFORM_FOLDER](AppianType.html#UNIFORM_FOLDER), [UNION](AppianType.html#UNION), [USER_OR_GROUP](AppianType.html#USER_OR_GROUP), [USERNAME](AppianType.html#USERNAME), [VARIANT](AppianType.html#VARIANT), [WEB_API](AppianType.html#WEB_API)`

    ### Fields inherited from interface com.appiancorp.type.DataType

    `LOCAL_PART, NAMESPACE, QNAME`

    ### Fields inherited from interface com.appiancorp.type.DataTypeProperties

    `CURRENT_VERSION, FLAG_DEACTIVATE_ON_IMPORT, FLAG_DEACTIVATED, FLAG_HIDDEN, FLAG_IMPORTING, FLAG_LOCKED, FLAG_SECURED, FLAG_STRUCTURALLY_IDENTICAL, FLAG_SYSTEM, FLAG_TEMPORARY, FLAG_TYPE_DESIGNER, FLAG_WEB_SERVICES`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Datatype](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addToCache](#addToCache\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") cache)`

    INTERNAL: NOT API

    `static [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")`

    `[findByQName](#findByQName\(com.appiancorp.suiteapi.type.Datatype%5B%5D,javax.xml.namespace.QName\))([Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")[] dts, [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") targetQName)`

    Finds the [`Datatype`](Datatype.html "class in com.appiancorp.suiteapi.type") object in the given array that has the given [`qname`](DatatypeProperties.html#getQualifiedName\(\)).

    `int`

    `[getCoupledValueType](#getCoupledValueType\(\))()`

    INTERNAL: NOT API

    `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[getDefault](#getDefault\(\))()`

    This is the default value for the type.

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getFoundation](#getFoundation\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType_)`

    Gets the type id of the foundation of a given type.

    `[NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[]`

    `[getInstanceProperties](#getInstanceProperties\(\))()`

    Instance properties apply to an individual instance, and as such have their values stored with each individual instance, not with the type itself.

    `[NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[getInstanceProperty](#getInstanceProperty\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Searches the instance properties for one with the specified name and returns it.

    `int`

    `[getInstancePropertyIndex](#getInstancePropertyIndex\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Searches the instance properties for one with the specified name and returns its index.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getListViewMapping](#getListViewMapping\(\))()`

    Returns the expression that maps instances of this type to instances of the `com.appiancorp.record.data.ListViewItem` type.

    `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[getNull](#getNull\(\))()`

    This is the null value for the type.

    `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[getParent](#getParent\(\))()`

    This is context where the datatype is stored.

    `[NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[]`

    `[getTypeProperties](#getTypeProperties\(\))()`

    Type properties apply to the type as a whole, not individual instances of the type.

    `[NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[getTypeProperty](#getTypeProperty\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Searches the type properties for one with the specified name and returns it.

    `int`

    `[getTypePropertyIndex](#getTypePropertyIndex\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Searches the type properties for one with the specified name and returns its index.

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getValidFoundation](#getValidFoundation\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType_)`

    Gets the type id of the foundation of a given type.

    `static boolean`

    `[hasFoundation](#hasFoundation\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foundationType_)`

    Checks whether a type has a particular type as its foundation type.

    `boolean`

    `[isAutoGeneratedType](#isAutoGeneratedType\(\))()`

    Returns whether the type was auto-generated.

    `void`

    `[setDefault](#setDefault\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") defaultValue)`

    `void`

    `[setInstanceProperties](#setInstanceProperties\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] instanceProperties)`

    `void`

    `[setListViewMapping](#setListViewMapping\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") listViewMapping)`

    Sets an expression that maps instances of this type to instances of the `com.appiancorp.record.data.ListViewItem` type.

    `void`

    `[setNull](#setNull\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") nullValue)`

    `void`

    `[setParent](#setParent\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent_)`

    `void`

    `[setTypeProperties](#setTypeProperties\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] typeProperties)`

    ### Methods inherited from class com.appiancorp.suiteapi.type.[DatatypeProperties](DatatypeProperties.html "class in com.appiancorp.suiteapi.type")

    `[addFlag](DatatypeProperties.html#addFlag\(int\)), [equals](DatatypeProperties.html#equals\(java.lang.Object\)), [getBase](DatatypeProperties.html#getBase\(\)), [getBoundType](DatatypeProperties.html#getBoundType\(\)), [getCreationTime](DatatypeProperties.html#getCreationTime\(\)), [getCreator](DatatypeProperties.html#getCreator\(\)), [getDescription](DatatypeProperties.html#getDescription\(\)), [getDynamic](DatatypeProperties.html#getDynamic\(\)), [getExternalTypeId](DatatypeProperties.html#getExternalTypeId\(\)), [getFlags](DatatypeProperties.html#getFlags\(\)), [getFoundation](DatatypeProperties.html#getFoundation\(\)), [getId](DatatypeProperties.html#getId\(\)), [getIds](DatatypeProperties.html#getIds\(com.appiancorp.suiteapi.type.Datatype%5B%5D\)), [getList](DatatypeProperties.html#getList\(\)), [getLocalDescription](DatatypeProperties.html#getLocalDescription\(\)), [getLocalizedDescription](DatatypeProperties.html#getLocalizedDescription\(java.util.Locale\)), [getLocalizedName](DatatypeProperties.html#getLocalizedName\(java.util.Locale\)), [getLocalName](DatatypeProperties.html#getLocalName\(\)), [getMask](DatatypeProperties.html#getMask\(\)), [getName](DatatypeProperties.html#getName\(\)), [getNamespace](DatatypeProperties.html#getNamespace\(\)), [getNameWithinNamespace](DatatypeProperties.html#getNameWithinNamespace\(\)), [getQualifiedName](DatatypeProperties.html#getQualifiedName\(\)), [getResource](DatatypeProperties.html#getResource\(\)), [getStableVersionNumber](DatatypeProperties.html#getStableVersionNumber\(\)), [getType](DatatypeProperties.html#getType\(java.lang.Long\)), [getTypeof](DatatypeProperties.html#getTypeof\(\)), [getVersionId](DatatypeProperties.html#getVersionId\(\)), [getVersions](DatatypeProperties.html#getVersions\(\)), [hasFlag](DatatypeProperties.html#hasFlag\(int\)), [hashCode](DatatypeProperties.html#hashCode\(\)), [isExternal](DatatypeProperties.html#isExternal\(\)), [isFoundationType](DatatypeProperties.html#isFoundationType\(\)), [isHidden](DatatypeProperties.html#isHidden\(\)), [isKeyedBy](DatatypeProperties.html#isKeyedBy\(com.appiancorp.cache.CoupledKey\)), [isLatestVersionModeOnForDataStores](DatatypeProperties.html#isLatestVersionModeOnForDataStores\(\)), [isLatestVersionModeOnForProcessModels](DatatypeProperties.html#isLatestVersionModeOnForProcessModels\(\)), [isLatestVersionModeOnForRules](DatatypeProperties.html#isLatestVersionModeOnForRules\(\)), [isListType](DatatypeProperties.html#isListType\(\)), [isRecordProxyType](DatatypeProperties.html#isRecordProxyType\(\)), [isRecordType](DatatypeProperties.html#isRecordType\(\)), [isRecordTypeOrProxyType](DatatypeProperties.html#isRecordTypeOrProxyType\(\)), [isSystemType](DatatypeProperties.html#isSystemType\(\)), [isUnionType](DatatypeProperties.html#isUnionType\(\)), [isValidToCache](DatatypeProperties.html#isValidToCache\(\)), [newCoupledKeys](DatatypeProperties.html#newCoupledKeys\(\)), [newCoupledValues](DatatypeProperties.html#newCoupledValues\(\)), [putAtCoupledKeys](DatatypeProperties.html#putAtCoupledKeys\(com.appiancorp.cache.CoupledElements,com.appiancorp.cache.CoupledElements,java.util.concurrent.ConcurrentMap\)), [removeFlag](DatatypeProperties.html#removeFlag\(int\)), [setBase](DatatypeProperties.html#setBase\(java.lang.Long\)), [setBoundType](DatatypeProperties.html#setBoundType\(java.lang.Long\)), [setCreationTime](DatatypeProperties.html#setCreationTime\(java.sql.Timestamp\)), [setCreator](DatatypeProperties.html#setCreator\(java.lang.String\)), [setDescription](DatatypeProperties.html#setDescription\(java.lang.String\)), [setDynamic](DatatypeProperties.html#setDynamic\(java.lang.Integer\)), [setExternalTypeId](DatatypeProperties.html#setExternalTypeId\(java.lang.String\)), [setFlags](DatatypeProperties.html#setFlags\(int\)), [setFoundation](DatatypeProperties.html#setFoundation\(java.lang.Long\)), [setId](DatatypeProperties.html#setId\(java.lang.Long\)), [setLatestVersionModeOnForDataStores](DatatypeProperties.html#setLatestVersionModeOnForDataStores\(boolean\)), [setLatestVersionModeOnForProcessModels](DatatypeProperties.html#setLatestVersionModeOnForProcessModels\(boolean\)), [setLatestVersionModeOnForRules](DatatypeProperties.html#setLatestVersionModeOnForRules\(boolean\)), [setList](DatatypeProperties.html#setList\(java.lang.Long\)), [setLocalDescription](DatatypeProperties.html#setLocalDescription\(com.appiancorp.suiteapi.common.LocaleString\)), [setLocalName](DatatypeProperties.html#setLocalName\(com.appiancorp.suiteapi.common.LocaleString\)), [setMask](DatatypeProperties.html#setMask\(java.lang.String\)), [setName](DatatypeProperties.html#setName\(java.lang.String\)), [setQualifiedName](DatatypeProperties.html#setQualifiedName\(javax.xml.namespace.QName\)), [setResource](DatatypeProperties.html#setResource\(com.appiancorp.suiteapi.type.TypeResource\)), [setStableVersionNumber](DatatypeProperties.html#setStableVersionNumber\(java.lang.Integer\)), [setTypeof](DatatypeProperties.html#setTypeof\(java.lang.Long\)), [setVersionId](DatatypeProperties.html#setVersionId\(java.lang.Long\)), [setVersions](DatatypeProperties.html#setVersions\(java.lang.Long%5B%5D\)), [toString](DatatypeProperties.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.cache.CoupledValue

    `isKeyedBy, newCoupledKeys, newCoupledValues`

    ### Methods inherited from interface com.appiancorp.type.DataTypeProperties

    `getDescription, getFlags, getFoundation, getId, getList, getName, getNamespace, getNameWithinNamespace, getQualifiedName, getTypeof, hasFlag, isHidden, isListType, isRecordType`

-   ## Field Details

    -   ### TYPE\_PROPERTY\_UNION\_KEYS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_PROPERTY\_UNION\_KEYS

        The name of the type property that holds the type keys used to identify the types that are part of a union (ie. for a type that has `AppianType.UNION` as its foundation type).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.Datatype.TYPE_PROPERTY_UNION_KEYS)

    -   ### TYPE\_PROPERTY\_UNION\_TYPES

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_PROPERTY\_UNION\_TYPES

        The name of the type property that holds the type ids of the types that are part of a union (ie. for a type that has `AppianType.UNION` as its foundation type).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.Datatype.TYPE_PROPERTY_UNION_TYPES)

-   ## Constructor Details

    -   ### Datatype

        public Datatype()

-   ## Method Details

    -   ### getInstanceProperties

        public [NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] getInstanceProperties()

        Instance properties apply to an individual instance, and as such have their values stored with each individual instance, not with the type itself. This includes properties such as a variant's type.

        Specified by:

        `getInstanceProperties` in interface `com.appiancorp.type.DataType`

        Returns:

        the instance properties

    -   ### setInstanceProperties

        public void setInstanceProperties([NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] instanceProperties)

    -   ### getInstanceProperty

        public [NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type") getInstanceProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Searches the instance properties for one with the specified name and returns it.

        Parameters:

        `name_` - The name of the instance property to find

        Returns:

        the instance property if found, otherwise null

    -   ### getInstancePropertyIndex

        public int getInstancePropertyIndex([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Searches the instance properties for one with the specified name and returns its index.

        Parameters:

        `name_` - The name of the instance property to find.

        Returns:

        The instance property index if found; otherwise -1.

    -   ### getTypeProperties

        public [NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] getTypeProperties()

        Type properties apply to the type as a whole, not individual instances of the type. The type properties have the value at the type level. This includes properties such as the named fields within a record.

        Returns:

        the type properties

    -   ### setTypeProperties

        public void setTypeProperties([NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] typeProperties)

    -   ### getTypeProperty

        public [NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type") getTypeProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Searches the type properties for one with the specified name and returns it.

        Parameters:

        `name_` - The name of the type property to find

        Returns:

        the type property

    -   ### getTypePropertyIndex

        public int getTypePropertyIndex([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Searches the type properties for one with the specified name and returns its index.

        Parameters:

        `name_` - The name of the type property to find.

        Returns:

        The type property index if found; otherwise -1.

    -   ### getParent

        public [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") getParent()

        This is context where the datatype is stored. For example, a datatype specific to a process model could have that process model as a parent. Global datatypes have null as the parent. Currently all datatypes are global.

        Returns:

        the parent of this datatype

    -   ### setParent

        public void setParent([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") parent\_)

    -   ### getDefault

        public [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") getDefault()

        This is the default value for the type.

        Returns:

        the default value

    -   ### setDefault

        public void setDefault([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") defaultValue)

    -   ### getNull

        public [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") getNull()

        This is the null value for the type.

        Returns:

        null value

    -   ### setNull

        public void setNull([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") nullValue)

    -   ### getFoundation

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getFoundation([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType\_)

        Gets the type id of the foundation of a given type. If the specified type does not exist, instanceType is returned.

        Parameters:

        `instanceType_` - the type

        Returns:

        the type's foundation type id

    -   ### getValidFoundation

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getValidFoundation([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType\_) throws [InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Gets the type id of the foundation of a given type. If the specified type does not exist, InvalidTypeException thrown if not.

        Parameters:

        `instanceType_` - the type

        Returns:

        the type's foundation type id

        Throws:

        `[InvalidTypeException](exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### hasFoundation

        public static boolean hasFoundation([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foundationType\_)

        Checks whether a type has a particular type as its foundation type.

        Parameters:

        `instanceType_` - the type whose foundation will be checked

        `foundationType_` - the foundation type that we're checking against

        Returns:

        whether the given type has the given foundation type as its foundation

    -   ### isAutoGeneratedType

        public boolean isAutoGeneratedType()

        Returns whether the type was auto-generated. When importing types from XSD or creating web service types, extra types that are not defined in the XSD or WSDL are auto-generated, such as list types and others.

        Returns:

        true if the type was auto-generated, false otherwise

    -   ### findByQName

        public static [Datatype](Datatype.html "class in com.appiancorp.suiteapi.type") findByQName([Datatype](Datatype.html "class in com.appiancorp.suiteapi.type")\[\] dts, [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") targetQName)

        Finds the [`Datatype`](Datatype.html "class in com.appiancorp.suiteapi.type") object in the given array that has the given [`qname`](DatatypeProperties.html#getQualifiedName\(\)). If no such object is present or if the given array is `null`, returns `null`.

    -   ### getListViewMapping

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getListViewMapping()

        Returns the expression that maps instances of this type to instances of the `com.appiancorp.record.data.ListViewItem` type.

    -   ### setListViewMapping

        public void setListViewMapping([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") listViewMapping)

        Sets an expression that maps instances of this type to instances of the `com.appiancorp.record.data.ListViewItem` type.

    -   ### getCoupledValueType

        public int getCoupledValueType()

        INTERNAL: NOT API

        Specified by:

        `getCoupledValueType` in interface `com.appiancorp.cache.CoupledValue`

        Overrides:

        `[getCoupledValueType](DatatypeProperties.html#getCoupledValueType\(\))` in class `[DatatypeProperties](DatatypeProperties.html "class in com.appiancorp.suiteapi.type")`

    -   ### addToCache

        public void addToCache([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") cache)

        INTERNAL: NOT API

        Overrides:

        `[addToCache](DatatypeProperties.html#addToCache\(java.util.Map\))` in class `[DatatypeProperties](DatatypeProperties.html "class in com.appiancorp.suiteapi.type")`