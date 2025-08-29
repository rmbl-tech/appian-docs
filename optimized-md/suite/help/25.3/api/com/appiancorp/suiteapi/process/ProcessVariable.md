---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessVariable.html
original_path: api/com/appiancorp/suiteapi/process/ProcessVariable.html
version: "25.3"
title: "Class ProcessVariable"
page_id: "api/com/appiancorp/suiteapi/process/ProcessVariable"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessVariable

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.type.TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")

[com.appiancorp.suiteapi.type.NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

[com.appiancorp.suiteapi.process.TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.ProcessVariable

All Implemented Interfaces:

`com.appiancorp.core.expr.portable.PortableNamedTypedValue`, `com.appiancorp.core.expr.portable.PortableNamedTypedValueWithChildren`, `com.appiancorp.core.expr.portable.PortableTypedValue`, `com.appiancorp.process.runtime.forms.FormParameter`, `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[TypedVariableTypes](TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")`, `[Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")`, `[AppianType](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")`, `com.appiancorp.type.ExpressionableNamedTypedValue`, `com.appiancorp.type.HasTypeRef`, `com.appiancorp.type.NamedType`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")`

Direct Known Subclasses:

`[ProcessVariableInstance](ProcessVariableInstance.html "class in com.appiancorp.suiteapi.process")`

* * *

public class ProcessVariable extends [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process") implements com.appiancorp.process.runtime.forms.FormParameter, [Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang"), [Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process"), [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.type.ExpressionableNamedTypedValue

A variable that is global to a process. The set of process variables for a process is a superset of the process parameters. A process parameter is merely a process variable with the parameter attribute set to `true`. Process variables can be used as default values of ActivityClassParameters, and the value of an ActivityClassParameter can be stored in a process variable after the execution of an activity. Note: When setting the value of ProcessVariable of type User, do not set the value to a User object, but rather the username (User.getUsername()).

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessVariable)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_HIDDEN](#SORT_BY_HIDDEN)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_KEY](#SORT_BY_KEY)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_MULTIPLE](#SORT_BY_MULTIPLE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARAMETER](#SORT_BY_PARAMETER)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_REQUIRED](#SORT_BY_REQUIRED)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TYPE](#SORT_BY_TYPE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_VALUE](#SORT_BY_VALUE)`

    ### Fields inherited from class com.appiancorp.suiteapi.process.[TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")

    `[classType$TRANSIENT](TypedVariable.html#classType$TRANSIENT), [dataType$TRANSIENT](TypedVariable.html#dataType$TRANSIENT), [detailedTypes$TRANSIENT](TypedVariable.html#detailedTypes$TRANSIENT), [displayName$TRANSIENT](TypedVariable.html#displayName$TRANSIENT), [LOCAL_COMMUNITY](TypedVariable.html#LOCAL_COMMUNITY), [LOCAL_DOCUMENT](TypedVariable.html#LOCAL_DOCUMENT), [LOCAL_EMAIL_ADDRESS](TypedVariable.html#LOCAL_EMAIL_ADDRESS), [LOCAL_FOLDER](TypedVariable.html#LOCAL_FOLDER), [LOCAL_FORUM](TypedVariable.html#LOCAL_FORUM), [LOCAL_GROUP](TypedVariable.html#LOCAL_GROUP), [LOCAL_KC](TypedVariable.html#LOCAL_KC), [LOCAL_MESSAGE](TypedVariable.html#LOCAL_MESSAGE), [LOCAL_NODE](TypedVariable.html#LOCAL_NODE), [LOCAL_PAGE](TypedVariable.html#LOCAL_PAGE), [LOCAL_PM](TypedVariable.html#LOCAL_PM), [LOCAL_PORTLET](TypedVariable.html#LOCAL_PORTLET), [LOCAL_PROCESS](TypedVariable.html#LOCAL_PROCESS), [LOCAL_TASK](TypedVariable.html#LOCAL_TASK), [LOCAL_TOPIC](TypedVariable.html#LOCAL_TOPIC), [LOCAL_USER](TypedVariable.html#LOCAL_USER), [MAX_TYPE](TypedVariable.html#MAX_TYPE), [multipleSupportingType$TRANSIENT](TypedVariable.html#multipleSupportingType$TRANSIENT)`

    ### Fields inherited from class com.appiancorp.suiteapi.type.[NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

    `[QNAME](../type/NamedTypedValue.html#QNAME)`

    ### Fields inherited from class com.appiancorp.suiteapi.type.[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")

    `[ALWAYS](../type/TypedValue.html#ALWAYS), [AT_DESIGNER_DISCRETION](../type/TypedValue.html#AT_DESIGNER_DISCRETION), [clearPasswordOnTransport](../type/TypedValue.html#clearPasswordOnTransport), [NEVER](../type/TypedValue.html#NEVER), [TO_STRING_STYLE](../type/TypedValue.html#TO_STRING_STYLE)`

    ### Fields inherited from interface com.appiancorp.suiteapi.type.[AppianType](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")

    `[ADMINISTERED_PROPERTY](../type/AppianType.html#ADMINISTERED_PROPERTY), [ALIAS](../type/AppianType.html#ALIAS), [APPLICATION](../type/AppianType.html#APPLICATION), [ARRAY](../type/AppianType.html#ARRAY), [ATTACHMENT](../type/AppianType.html#ATTACHMENT), [BEAN](../type/AppianType.html#BEAN), [BIG_RATIONAL](../type/AppianType.html#BIG_RATIONAL), [BINARY](../type/AppianType.html#BINARY), [BOOLEAN](../type/AppianType.html#BOOLEAN), [CHART_COLOR](../type/AppianType.html#CHART_COLOR), [COMMUNITY](../type/AppianType.html#COMMUNITY), [CONNECTED_SYSTEM](../type/AppianType.html#CONNECTED_SYSTEM), [CONTENT_COMMUNITY](../type/AppianType.html#CONTENT_COMMUNITY), [CONTENT_CONSTANT](../type/AppianType.html#CONTENT_CONSTANT), [CONTENT_CUSTOM](../type/AppianType.html#CONTENT_CUSTOM), [CONTENT_DOCUMENT](../type/AppianType.html#CONTENT_DOCUMENT), [CONTENT_FOLDER](../type/AppianType.html#CONTENT_FOLDER), [CONTENT_FREEFORM_RULE](../type/AppianType.html#CONTENT_FREEFORM_RULE), [CONTENT_ITEM](../type/AppianType.html#CONTENT_ITEM), [CONTENT_KNOWLEDGE_CENTER](../type/AppianType.html#CONTENT_KNOWLEDGE_CENTER), [CONTENT_RULE](../type/AppianType.html#CONTENT_RULE), [CURRENCY](../type/AppianType.html#CURRENCY), [DATA_SOURCE](../type/AppianType.html#DATA_SOURCE), [DATA_STORE](../type/AppianType.html#DATA_STORE), [DATA_STORE_ENTITY](../type/AppianType.html#DATA_STORE_ENTITY), [DATATYPE](../type/AppianType.html#DATATYPE), [DATE](../type/AppianType.html#DATE), [DECISION](../type/AppianType.html#DECISION), [DECISION_TABLE](../type/AppianType.html#DECISION_TABLE), [DECRYPTED_TEXT](../type/AppianType.html#DECRYPTED_TEXT), [DEFERRED](../type/AppianType.html#DEFERRED), [DICTIONARY](../type/AppianType.html#DICTIONARY), [DISCUSSION_THREAD](../type/AppianType.html#DISCUSSION_THREAD), [DOCUMENT](../type/AppianType.html#DOCUMENT), [DOCUMENT_OR_FOLDER](../type/AppianType.html#DOCUMENT_OR_FOLDER), [DOUBLE](../type/AppianType.html#DOUBLE), [EMAIL_ADDRESS](../type/AppianType.html#EMAIL_ADDRESS), [EMAIL_RECIPIENT](../type/AppianType.html#EMAIL_RECIPIENT), [EMBEDDED_SAIL_THEME_ID](../type/AppianType.html#EMBEDDED_SAIL_THEME_ID), [ENCRYPTED_TEXT](../type/AppianType.html#ENCRYPTED_TEXT), [EVENT](../type/AppianType.html#EVENT), [EXPRESSION](../type/AppianType.html#EXPRESSION), [EXTERNAL_REFERENCE](../type/AppianType.html#EXTERNAL_REFERENCE), [EXTERNAL_REFERENCE_WITH_INDICES](../type/AppianType.html#EXTERNAL_REFERENCE_WITH_INDICES), [EXTERNAL_SYSTEM_ID](../type/AppianType.html#EXTERNAL_SYSTEM_ID), [FIXED](../type/AppianType.html#FIXED), [FOLDER](../type/AppianType.html#FOLDER), [FORUM](../type/AppianType.html#FORUM), [GROUP](../type/AppianType.html#GROUP), [GROUP_TYPE](../type/AppianType.html#GROUP_TYPE), [ID_REFERENCE](../type/AppianType.html#ID_REFERENCE), [INITIAL_CUSTOM_TYPE](../type/AppianType.html#INITIAL_CUSTOM_TYPE), [INTEGER](../type/AppianType.html#INTEGER), [INTEGER_KEY](../type/AppianType.html#INTEGER_KEY), [INTERFACE](../type/AppianType.html#INTERFACE), [INTERVAL_D_S](../type/AppianType.html#INTERVAL_D_S), [KNOWLEDGE_CENTER](../type/AppianType.html#KNOWLEDGE_CENTER), [LINKS_CHANNEL_FOLDER](../type/AppianType.html#LINKS_CHANNEL_FOLDER), [LIST](../type/AppianType.html#LIST), [LIST_OF_ADMINISTERED_PROPERTY](../type/AppianType.html#LIST_OF_ADMINISTERED_PROPERTY), [LIST_OF_APPLICATION](../type/AppianType.html#LIST_OF_APPLICATION), [LIST_OF_ATTACHMENT](../type/AppianType.html#LIST_OF_ATTACHMENT), [LIST_OF_BEAN](../type/AppianType.html#LIST_OF_BEAN), [LIST_OF_BIG_RATIONAL](../type/AppianType.html#LIST_OF_BIG_RATIONAL), [LIST_OF_BINARY](../type/AppianType.html#LIST_OF_BINARY), [LIST_OF_BOOLEAN](../type/AppianType.html#LIST_OF_BOOLEAN), [LIST_OF_CHART_COLOR](../type/AppianType.html#LIST_OF_CHART_COLOR), [LIST_OF_COMMUNITY](../type/AppianType.html#LIST_OF_COMMUNITY), [LIST_OF_CONNECTED_SYSTEM](../type/AppianType.html#LIST_OF_CONNECTED_SYSTEM), [LIST_OF_CONTENT_COMMUNITY](../type/AppianType.html#LIST_OF_CONTENT_COMMUNITY), [LIST_OF_CONTENT_CONSTANT](../type/AppianType.html#LIST_OF_CONTENT_CONSTANT), [LIST_OF_CONTENT_CUSTOM](../type/AppianType.html#LIST_OF_CONTENT_CUSTOM), [LIST_OF_CONTENT_DOCUMENT](../type/AppianType.html#LIST_OF_CONTENT_DOCUMENT), [LIST_OF_CONTENT_FOLDER](../type/AppianType.html#LIST_OF_CONTENT_FOLDER), [LIST_OF_CONTENT_FREEFORM_RULE](../type/AppianType.html#LIST_OF_CONTENT_FREEFORM_RULE), [LIST_OF_CONTENT_ITEM](../type/AppianType.html#LIST_OF_CONTENT_ITEM), [LIST_OF_CONTENT_KNOWLEDGE_CENTER](../type/AppianType.html#LIST_OF_CONTENT_KNOWLEDGE_CENTER), [LIST_OF_CONTENT_RULE](../type/AppianType.html#LIST_OF_CONTENT_RULE), [LIST_OF_CURRENCY](../type/AppianType.html#LIST_OF_CURRENCY), [LIST_OF_DATA_SOURCE](../type/AppianType.html#LIST_OF_DATA_SOURCE), [LIST_OF_DATA_STORE](../type/AppianType.html#LIST_OF_DATA_STORE), [LIST_OF_DATA_STORE_ENTITY](../type/AppianType.html#LIST_OF_DATA_STORE_ENTITY), [LIST_OF_DATATYPE](../type/AppianType.html#LIST_OF_DATATYPE), [LIST_OF_DATE](../type/AppianType.html#LIST_OF_DATE), [LIST_OF_DECISION](../type/AppianType.html#LIST_OF_DECISION), [LIST_OF_DECISION_TABLE](../type/AppianType.html#LIST_OF_DECISION_TABLE), [LIST_OF_DECRYPTED_TEXT](../type/AppianType.html#LIST_OF_DECRYPTED_TEXT), [LIST_OF_DEFERRED](../type/AppianType.html#LIST_OF_DEFERRED), [LIST_OF_DICTIONARY](../type/AppianType.html#LIST_OF_DICTIONARY), [LIST_OF_DISCUSSION_THREAD](../type/AppianType.html#LIST_OF_DISCUSSION_THREAD), [LIST_OF_DOCUMENT](../type/AppianType.html#LIST_OF_DOCUMENT), [LIST_OF_DOCUMENT_OR_FOLDER](../type/AppianType.html#LIST_OF_DOCUMENT_OR_FOLDER), [LIST_OF_DOUBLE](../type/AppianType.html#LIST_OF_DOUBLE), [LIST_OF_EMAIL_ADDRESS](../type/AppianType.html#LIST_OF_EMAIL_ADDRESS), [LIST_OF_EMAIL_RECIPIENT](../type/AppianType.html#LIST_OF_EMAIL_RECIPIENT), [LIST_OF_EMBEDDED_SAIL_THEME_ID](../type/AppianType.html#LIST_OF_EMBEDDED_SAIL_THEME_ID), [LIST_OF_ENCRYPTED_TEXT](../type/AppianType.html#LIST_OF_ENCRYPTED_TEXT), [LIST_OF_EVENT](../type/AppianType.html#LIST_OF_EVENT), [LIST_OF_EXPRESSION](../type/AppianType.html#LIST_OF_EXPRESSION), [LIST_OF_EXTERNAL_REFERENCE](../type/AppianType.html#LIST_OF_EXTERNAL_REFERENCE), [LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES](../type/AppianType.html#LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES), [LIST_OF_EXTERNAL_SYSTEM_ID](../type/AppianType.html#LIST_OF_EXTERNAL_SYSTEM_ID), [LIST_OF_FIXED](../type/AppianType.html#LIST_OF_FIXED), [LIST_OF_FOLDER](../type/AppianType.html#LIST_OF_FOLDER), [LIST_OF_FORUM](../type/AppianType.html#LIST_OF_FORUM), [LIST_OF_GROUP](../type/AppianType.html#LIST_OF_GROUP), [LIST_OF_GROUP_TYPE](../type/AppianType.html#LIST_OF_GROUP_TYPE), [LIST_OF_ID_REFERENCE](../type/AppianType.html#LIST_OF_ID_REFERENCE), [LIST_OF_INTEGER](../type/AppianType.html#LIST_OF_INTEGER), [LIST_OF_INTEGER_KEY](../type/AppianType.html#LIST_OF_INTEGER_KEY), [LIST_OF_INTERFACE](../type/AppianType.html#LIST_OF_INTERFACE), [LIST_OF_INTERVAL_D_S](../type/AppianType.html#LIST_OF_INTERVAL_D_S), [LIST_OF_KNOWLEDGE_CENTER](../type/AppianType.html#LIST_OF_KNOWLEDGE_CENTER), [LIST_OF_LINKS_CHANNEL_FOLDER](../type/AppianType.html#LIST_OF_LINKS_CHANNEL_FOLDER), [LIST_OF_MAP](../type/AppianType.html#LIST_OF_MAP), [LIST_OF_MESSAGE](../type/AppianType.html#LIST_OF_MESSAGE), [LIST_OF_NOTE](../type/AppianType.html#LIST_OF_NOTE), [LIST_OF_NULL](../type/AppianType.html#LIST_OF_NULL), [LIST_OF_OUTBOUND_INTEGRATION](../type/AppianType.html#LIST_OF_OUTBOUND_INTEGRATION), [LIST_OF_PAGE](../type/AppianType.html#LIST_OF_PAGE), [LIST_OF_PASSWORD](../type/AppianType.html#LIST_OF_PASSWORD), [LIST_OF_PORTLET](../type/AppianType.html#LIST_OF_PORTLET), [LIST_OF_PROCESS](../type/AppianType.html#LIST_OF_PROCESS), [LIST_OF_PROCESS_ERROR](../type/AppianType.html#LIST_OF_PROCESS_ERROR), [LIST_OF_PROCESS_MODEL](../type/AppianType.html#LIST_OF_PROCESS_MODEL), [LIST_OF_PROCESS_MODEL_FOLDER](../type/AppianType.html#LIST_OF_PROCESS_MODEL_FOLDER), [LIST_OF_QUERY_RULE](../type/AppianType.html#LIST_OF_QUERY_RULE), [LIST_OF_QUICK_APP](../type/AppianType.html#LIST_OF_QUICK_APP), [LIST_OF_RANGE](../type/AppianType.html#LIST_OF_RANGE), [LIST_OF_RECORD](../type/AppianType.html#LIST_OF_RECORD), [LIST_OF_RECORD_REFERENCE](../type/AppianType.html#LIST_OF_RECORD_REFERENCE), [LIST_OF_RECORD_TYPE_ID](../type/AppianType.html#LIST_OF_RECORD_TYPE_ID), [LIST_OF_RICH_TEXT](../type/AppianType.html#LIST_OF_RICH_TEXT), [LIST_OF_RULE_FOLDER](../type/AppianType.html#LIST_OF_RULE_FOLDER), [LIST_OF_SAFE_URI](../type/AppianType.html#LIST_OF_SAFE_URI), [LIST_OF_SITE](../type/AppianType.html#LIST_OF_SITE), [LIST_OF_STRING](../type/AppianType.html#LIST_OF_STRING), [LIST_OF_STRING_KEY](../type/AppianType.html#LIST_OF_STRING_KEY), [LIST_OF_TASK](../type/AppianType.html#LIST_OF_TASK), [LIST_OF_TASK_REPORT](../type/AppianType.html#LIST_OF_TASK_REPORT), [LIST_OF_TEMPO_FEED](../type/AppianType.html#LIST_OF_TEMPO_FEED), [LIST_OF_TEMPO_REPORT](../type/AppianType.html#LIST_OF_TEMPO_REPORT), [LIST_OF_TIME](../type/AppianType.html#LIST_OF_TIME), [LIST_OF_TIMESTAMP](../type/AppianType.html#LIST_OF_TIMESTAMP), [LIST_OF_TYPE](../type/AppianType.html#LIST_OF_TYPE), [LIST_OF_UNIFORM_FOLDER](../type/AppianType.html#LIST_OF_UNIFORM_FOLDER), [LIST_OF_UNION](../type/AppianType.html#LIST_OF_UNION), [LIST_OF_USER_OR_GROUP](../type/AppianType.html#LIST_OF_USER_OR_GROUP), [LIST_OF_USERNAME](../type/AppianType.html#LIST_OF_USERNAME), [LIST_OF_VARIANT](../type/AppianType.html#LIST_OF_VARIANT), [LIST_OF_WEB_API](../type/AppianType.html#LIST_OF_WEB_API), [MAP](../type/AppianType.html#MAP), [MESSAGE](../type/AppianType.html#MESSAGE), [NOTE](../type/AppianType.html#NOTE), [NULL](../type/AppianType.html#NULL), [OUTBOUND_INTEGRATION](../type/AppianType.html#OUTBOUND_INTEGRATION), [PAGE](../type/AppianType.html#PAGE), [PASSWORD](../type/AppianType.html#PASSWORD), [PORTLET](../type/AppianType.html#PORTLET), [PROCESS](../type/AppianType.html#PROCESS), [PROCESS_ERROR](../type/AppianType.html#PROCESS_ERROR), [PROCESS_MODEL](../type/AppianType.html#PROCESS_MODEL), [PROCESS_MODEL_FOLDER](../type/AppianType.html#PROCESS_MODEL_FOLDER), [QUERY_RULE](../type/AppianType.html#QUERY_RULE), [QUICK_APP](../type/AppianType.html#QUICK_APP), [RANGE](../type/AppianType.html#RANGE), [RECORD](../type/AppianType.html#RECORD), [RECORD_REFERENCE](../type/AppianType.html#RECORD_REFERENCE), [RECORD_TYPE_ID](../type/AppianType.html#RECORD_TYPE_ID), [RICH_TEXT](../type/AppianType.html#RICH_TEXT), [RULE_FOLDER](../type/AppianType.html#RULE_FOLDER), [SAFE_URI](../type/AppianType.html#SAFE_URI), [SITE](../type/AppianType.html#SITE), [STRING](../type/AppianType.html#STRING), [STRING_KEY](../type/AppianType.html#STRING_KEY), [TASK](../type/AppianType.html#TASK), [TASK_REPORT](../type/AppianType.html#TASK_REPORT), [TEMPO_FEED](../type/AppianType.html#TEMPO_FEED), [TEMPO_REPORT](../type/AppianType.html#TEMPO_REPORT), [TIME](../type/AppianType.html#TIME), [TIMESTAMP](../type/AppianType.html#TIMESTAMP), [TYPE](../type/AppianType.html#TYPE), [UI_CONTAINER](../type/AppianType.html#UI_CONTAINER), [UNIFORM_FOLDER](../type/AppianType.html#UNIFORM_FOLDER), [UNION](../type/AppianType.html#UNION), [USER_OR_GROUP](../type/AppianType.html#USER_OR_GROUP), [USERNAME](../type/AppianType.html#USERNAME), [VARIANT](../type/AppianType.html#VARIANT), [WEB_API](../type/AppianType.html#WEB_API)`

    ### Fields inherited from interface com.appiancorp.type.HasTypeRef

    `selectTypeId`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

    ### Fields inherited from interface com.appiancorp.type.NamedType

    `selectName`

    ### Fields inherited from interface com.appiancorp.suiteapi.process.[TypedVariableTypes](TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")

    `[CONSTANT](TypedVariableTypes.html#CONSTANT), [CONTENT](TypedVariableTypes.html#CONTENT), [CUSTOM_CONTENT_ITEM](TypedVariableTypes.html#CUSTOM_CONTENT_ITEM), [DATETIME](TypedVariableTypes.html#DATETIME), [DURATION](TypedVariableTypes.html#DURATION), [FREEFORM_RULE](TypedVariableTypes.html#FREEFORM_RULE), [LONG](TypedVariableTypes.html#LONG), [PEOPLE](TypedVariableTypes.html#PEOPLE), [PROCESSMODEL_FOLDER](TypedVariableTypes.html#PROCESSMODEL_FOLDER), [RULE](TypedVariableTypes.html#RULE), [TEMPLATE](TypedVariableTypes.html#TEMPLATE), [USER](TypedVariableTypes.html#USER)`

    ### Fields inherited from interface com.appiancorp.suiteapi.process.[Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")

    `[MUTABLE_AT_DESIGNER_DISCRETION](Validatable.html#MUTABLE_AT_DESIGNER_DISCRETION), [MUTABLE_BY_END_USER](Validatable.html#MUTABLE_BY_END_USER), [MUTABLE_NOT_BY_END_USER](Validatable.html#MUTABLE_NOT_BY_END_USER), [NULLABLE_ADMIN_AND_DESIGN](Validatable.html#NULLABLE_ADMIN_AND_DESIGN), [NULLABLE_BY_ALL](Validatable.html#NULLABLE_BY_ALL), [NULLABLE_NOT_AT_ALL](Validatable.html#NULLABLE_NOT_AT_ALL)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessVariable](#%3Cinit%3E\(\))()`

    `[ProcessVariable](#%3Cinit%3E\(com.appiancorp.suiteapi.type.NamedTypedValue\))([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") ntv_)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAllMessages](#addAllMessages\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") newMessages)`

    Adds new validation messages to this process variable.

    `void`

    `[addValidationMessage](#addValidationMessage\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    Adds the given String validation message to the collection of validation messages for the process variable

    `void`

    `[clearValidationMessages](#clearValidationMessages\(\))()`

    Clears all validation messages from this process variable

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object.

    `int`

    `[compareTo](#compareTo\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o1_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExpression](#getExpression\(\))()`

    The expression that represents the default value of this process variable.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFriendlyName](#getFriendlyName\(\))()`

    Gets the name of this variable, which is the same as getKey.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getMutable](#getMutable\(\))()`

    The default implementation always returns `Validatable.MUTABLE_BY_END_USER`.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNullable](#getNullable\(\))()`

    If this variable is not a parameter, or is a parameter but is not required, then it is NULLABLE\_BY\_ALL.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")`

    `[getValidationMessages](#getValidationMessages\(\))()`

    Retrieves a list of String objects that contain validation messages for the process variable

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getXMLWrapperName](#getXMLWrapperName\(\))()`

    Returns the xmlWrapperName for a ProcessVariable.

    `boolean`

    `[isHidden](#isHidden\(\))()`

    True if the process variable is hidden from the parent process

    `boolean`

    `[isParameter](#isParameter\(\))()`

    Retrieves whether or not this ProcessVariable is a parameter of the process

    `boolean`

    `[isRequired](#isRequired\(\))()`

    This property is used only if the process variable is a parameter.

    `void`

    `[setExpression](#setExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression_)`

    This expression represents the default value of a process variable.

    `void`

    `[setHidden](#setHidden\(boolean\))(boolean hidden_)`

    Sets whether or not the variable is hidden from its parent process

    `void`

    `[setParameter](#setParameter\(boolean\))(boolean parameter_)`

    Sets whether or not this process variabe is a parameter

    `void`

    `[setRequired](#setRequired\(boolean\))(boolean required_)`

    Sets if the process variable is required.

    ### Methods inherited from class com.appiancorp.suiteapi.process.[TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")

    `[appendFullName](TypedVariable.html#appendFullName\(java.lang.StringBuffer\)), [appendLocalObject](TypedVariable.html#appendLocalObject\(java.lang.StringBuffer,com.appiancorp.suiteapi.common.LocalObject\)), [appendLocalObject](TypedVariable.html#appendLocalObject\(java.lang.StringBuilder,com.appiancorp.suiteapi.common.LocalObject\)), [appendLocalObjects](TypedVariable.html#appendLocalObjects\(java.lang.StringBuffer,com.appiancorp.suiteapi.common.LocalObject%5B%5D\)), [appendLocalObjects](TypedVariable.html#appendLocalObjects\(java.lang.StringBuilder,com.appiancorp.suiteapi.common.LocalObject%5B%5D\)), [children](TypedVariable.html#children\(\)), [computeDisplayString](TypedVariable.html#computeDisplayString\(com.appiancorp.services.ServiceContext\)), [computeDisplayString](TypedVariable.html#computeDisplayString\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [computeValueString](TypedVariable.html#computeValueString\(com.appiancorp.services.ServiceContext\)), [computeValueStringForUiOutput](TypedVariable.html#computeValueStringForUiOutput\(com.appiancorp.services.ServiceContext,boolean,boolean\)), [convertFromLocalObjectType](TypedVariable.html#convertFromLocalObjectType\(int\)), [externalize](TypedVariable.html#externalize\(com.appiancorp.suiteapi.type.TypedValue\)), [externalize](TypedVariable.html#externalize\(java.lang.Object,java.lang.Long,boolean\)), [fillInAppianTypes](TypedVariable.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [findAllWithKeyPrefix](TypedVariable.html#findAllWithKeyPrefix\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D,java.lang.String\)), [findByName](TypedVariable.html#findByName\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D,java.lang.String\)), [getClassType](TypedVariable.html#getClassType\(\)), [getDataType](TypedVariable.html#getDataType\(\)), [getDefaultPvValue](TypedVariable.html#getDefaultPvValue\(java.lang.Long,boolean\)), [getDefaultValue](TypedVariable.html#getDefaultValue\(java.lang.Long,boolean\)), [getDetailedTypes](TypedVariable.html#getDetailedTypes\(\)), [getInstanceClass](TypedVariable.html#getInstanceClass\(java.lang.Long\)), [getKey](TypedVariable.html#getKey\(\)), [getMultiple](TypedVariable.html#getMultiple\(\)), [getNumericTypedObjectFromUiInput](TypedVariable.html#getNumericTypedObjectFromUiInput\(java.lang.String,java.lang.Long,com.appiancorp.services.ServiceContext\)), [getObjectTypeMappingFromType](TypedVariable.html#getObjectTypeMappingFromType\(int\)), [getScalarTypedObject](TypedVariable.html#getScalarTypedObject\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\)), [getScalarTypedObject](TypedVariable.html#getScalarTypedObject\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.services.ServiceContext\)), [getType](TypedVariable.html#getType\(\)), [getTypedObjectFromUiInput](TypedVariable.html#getTypedObjectFromUiInput\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.services.ServiceContext\)), [getTypedObjects](TypedVariable.html#getTypedObjects\(java.lang.String%5B%5D,java.lang.Long,int%5B%5D,com.appiancorp.services.ServiceContext\)), [getTypedObjectsFromUiInput](TypedVariable.html#getTypedObjectsFromUiInput\(java.lang.String%5B%5D,java.lang.Long,int%5B%5D,com.appiancorp.services.ServiceContext\)), [getTypedVariables](TypedVariable.html#getTypedVariables\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\)), [getTypeForClass](TypedVariable.html#getTypeForClass\(java.lang.Class\)), [getTypeFromObjectTypeMappingType](TypedVariable.html#getTypeFromObjectTypeMappingType\(int\)), [getUnderlyingClass](TypedVariable.html#getUnderlyingClass\(java.lang.Long,boolean\)), [getXMLWrapperEnd](TypedVariable.html#getXMLWrapperEnd\(\)), [getXMLWrapperStart](TypedVariable.html#getXMLWrapperStart\(\)), [handleTimestampValue](TypedVariable.html#handleTimestampValue\(java.util.Date,int,com.appiancorp.services.ServiceContext\)), [handleTimestampValueForUiOutput](TypedVariable.html#handleTimestampValueForUiOutput\(java.util.Date,int,com.appiancorp.services.ServiceContext\)), [integerToLong](TypedVariable.html#integerToLong\(java.lang.Integer\)), [internalize](TypedVariable.html#internalize\(java.lang.String\)), [isAppianType](TypedVariable.html#isAppianType\(int\)), [isMultipleSupportingType](TypedVariable.html#isMultipleSupportingType\(\)), [isNotDeferred](TypedVariable.html#isNotDeferred\(int\)), [isValidType](TypedVariable.html#isValidType\(int\)), [putOrAppendTimestamp](TypedVariable.html#putOrAppendTimestamp\(java.sql.Timestamp,com.appiancorp.services.ServiceContext\)), [putOrAppendValue](TypedVariable.html#putOrAppendValue\(java.lang.String,com.appiancorp.services.ServiceContext\)), [renderArrayAsCsv](TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\)), [renderArrayAsCsv](TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,int\)), [renderArrayAsCsv](TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,int,com.appiancorp.services.ServiceContext\)), [renderArrayAsCsv](TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,int,com.appiancorp.services.ServiceContext,int\)), [renderArrayAsCsvForUiOutput](TypedVariable.html#renderArrayAsCsvForUiOutput\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\)), [renderArrayAsString](TypedVariable.html#renderArrayAsString\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,java.lang.String,int\)), [setDetailedTypes](TypedVariable.html#setDetailedTypes\(int%5B%5D\)), [setInstanceType](TypedVariable.html#setInstanceType\(java.lang.Long\)), [setKey](TypedVariable.html#setKey\(java.lang.String\)), [setMultiple](TypedVariable.html#setMultiple\(int\)), [setType](TypedVariable.html#setType\(java.lang.Long\)), [setTypeMultiple](TypedVariable.html#setTypeMultiple\(java.lang.Long,int\)), [setValue](TypedVariable.html#setValue\(java.lang.Object\)), [toString](TypedVariable.html#toString\(java.lang.String%5B%5D\)), [toXML](TypedVariable.html#toXML\(\)), [toXML](TypedVariable.html#toXML\(java.lang.StringBuilder\))`

    ### Methods inherited from class com.appiancorp.suiteapi.type.[NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

    `[equals](../type/NamedTypedValue.html#equals\(java.lang.Object\)), [findNtvByName](../type/NamedTypedValue.html#findNtvByName\(T%5B%5D,java.lang.String\)), [findNtvIndexByName](../type/NamedTypedValue.html#findNtvIndexByName\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D,java.lang.String\)), [getName](../type/NamedTypedValue.html#getName\(\)), [getNtvNames](../type/NamedTypedValue.html#getNtvNames\(java.util.Collection\)), [hashCode](../type/NamedTypedValue.html#hashCode\(\)), [setName](../type/NamedTypedValue.html#setName\(java.lang.String\)), [toString](../type/NamedTypedValue.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.type.[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")

    `[clearPasswordOnTransport](../type/TypedValue.html#clearPasswordOnTransport\(\)), [getInstanceType](../type/TypedValue.html#getInstanceType\(\)), [getInstanceTypeIds](../type/TypedValue.html#getInstanceTypeIds\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\)), [getTypeRef](../type/TypedValue.html#getTypeRef\(\)), [getValue](../type/TypedValue.html#getValue\(\)), [setTypeRef](../type/TypedValue.html#setTypeRef\(com.appiancorp.type.TypeRef\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.type.ExpressionableNamedTypedValue

    `getInstanceType, getValue, setInstanceType, setValue`

    ### Methods inherited from interface com.appiancorp.process.runtime.forms.FormParameter

    `getInstanceType, getKey, getMultiple, getValue, setDetailedTypes, setValue`

    ### Methods inherited from interface com.appiancorp.type.HasTypeRef

    `getTypeRef, setTypeRef`

    ### Methods inherited from interface com.appiancorp.type.NamedType

    `getName, setName`

    ### Methods inherited from interface com.appiancorp.core.expr.portable.PortableNamedTypedValue

    `getName`

    ### Methods inherited from interface com.appiancorp.core.expr.portable.PortableNamedTypedValueWithChildren

    `setName`

    ### Methods inherited from interface com.appiancorp.core.expr.portable.PortableTypedValue

    `getInstanceType, getValue`

    ### Methods inherited from interface com.appiancorp.suiteapi.process.[Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")

    `[getDetailedTypes](Validatable.html#getDetailedTypes\(\)), [getInstanceType](Validatable.html#getInstanceType\(\)), [getKey](Validatable.html#getKey\(\)), [getMultiple](Validatable.html#getMultiple\(\)), [getType](Validatable.html#getType\(\)), [getValue](Validatable.html#getValue\(\)), [setDetailedTypes](Validatable.html#setDetailedTypes\(int%5B%5D\)), [setInstanceType](Validatable.html#setInstanceType\(java.lang.Long\)), [setMultiple](Validatable.html#setMultiple\(int\)), [setValue](Validatable.html#setValue\(java.lang.Object\))`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### SORT\_BY\_KEY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_KEY

    -   ### SORT\_BY\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TYPE

    -   ### SORT\_BY\_PARAMETER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARAMETER

    -   ### SORT\_BY\_REQUIRED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_REQUIRED

    -   ### SORT\_BY\_HIDDEN

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_HIDDEN

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

    -   ### SORT\_BY\_VALUE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_VALUE

    -   ### SORT\_BY\_MULTIPLE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_MULTIPLE

-   ## Constructor Details

    -   ### ProcessVariable

        public ProcessVariable()

    -   ### ProcessVariable

        public ProcessVariable([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") ntv\_)

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[getHiddenAttributes](TypedVariable.html#getHiddenAttributes\(\))` in class `[TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")`

        Returns:

        the set of hidden attributes

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Clone this object.

        Specified by:

        `[clone](../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](../type/TypedValue.html#clone\(\))` in class `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

        Returns:

    -   ### isHidden

        public boolean isHidden()

        True if the process variable is hidden from the parent process

        Returns:

        if this process variable is hidden from its parent process

    -   ### setHidden

        public void setHidden(boolean hidden\_)

        Sets whether or not the variable is hidden from its parent process

        Parameters:

        `hidden_` - true if this process variable will be hidden from its parent process

    -   ### getMutable

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getMutable()

        The default implementation always returns `Validatable.MUTABLE_BY_END_USER`. This means that unless this method is overriden all process variables can be changed by the end user.

        Specified by:

        `[getMutable](Validatable.html#getMutable\(\))` in interface `[Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")`

        Returns:

        `Validatable.MUTABLE_BY_END_USER`.

        See Also:

        -   [`Validatable.getMutable()`](Validatable.html#getMutable\(\))

    -   ### getXMLWrapperName

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getXMLWrapperName()

        Returns the xmlWrapperName for a ProcessVariable. Only used internally.

        Overrides:

        `[getXMLWrapperName](TypedVariable.html#getXMLWrapperName\(\))` in class `[TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")`

    -   ### isParameter

        public boolean isParameter()

        Retrieves whether or not this ProcessVariable is a parameter of the process

        Returns:

        true if the process variable is a parameter else false

    -   ### setParameter

        public void setParameter(boolean parameter\_)

        Sets whether or not this process variabe is a parameter

        Parameters:

        `parameter_` - whether this process variable is a parameter

    -   ### getNullable

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNullable()

        If this variable is not a parameter, or is a parameter but is not required, then it is NULLABLE\_BY\_ALL. Otherwise, it is NULLABLE\_NOT\_AT\_ALL.

        Specified by:

        `[getNullable](Validatable.html#getNullable\(\))` in interface `[Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")`

        Returns:

        whether or not the parameter needs a default value.

    -   ### getValidationMessages

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") getValidationMessages()

        Retrieves a list of String objects that contain validation messages for the process variable

        Specified by:

        `getValidationMessages` in interface `com.appiancorp.process.runtime.forms.FormParameter`

        Specified by:

        `[getValidationMessages](Validatable.html#getValidationMessages\(\))` in interface `[Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")`

        Returns:

        list of validation messages for this process variable

    -   ### addValidationMessage

        public void addValidationMessage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_)

        Adds the given String validation message to the collection of validation messages for the process variable

        Specified by:

        `addValidationMessage` in interface `com.appiancorp.process.runtime.forms.FormParameter`

        Specified by:

        `[addValidationMessage](Validatable.html#addValidationMessage\(java.lang.String\))` in interface `[Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `message_` - validation message that is added to the list of messages

    -   ### clearValidationMessages

        public void clearValidationMessages()

        Clears all validation messages from this process variable

        Specified by:

        `[clearValidationMessages](Validatable.html#clearValidationMessages\(\))` in interface `[Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")`

    -   ### addAllMessages

        public void addAllMessages([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") newMessages)

        Adds new validation messages to this process variable.

        Specified by:

        `[addAllMessages](Validatable.html#addAllMessages\(java.util.List\))` in interface `[Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `newMessages` - validation messages

    -   ### isRequired

        public boolean isRequired()

        This property is used only if the process variable is a parameter.

        Specified by:

        `isRequired` in interface `com.appiancorp.process.runtime.forms.FormParameter`

        Returns:

        true if this a parameter and is required, false if it is a parameter and not required, and an undefined value if it is not a parameter.

    -   ### setRequired

        public void setRequired(boolean required\_)

        Sets if the process variable is required. The process variable should be set to required only when its a parameter and is required at the start of the process.

        Specified by:

        `setRequired` in interface `com.appiancorp.process.runtime.forms.FormParameter`

        Parameters:

        `required_` - sets if the process variable is required

    -   ### getFriendlyName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFriendlyName()

        Gets the name of this variable, which is the same as getKey.

        Specified by:

        `[getFriendlyName](Validatable.html#getFriendlyName\(\))` in interface `[Validatable](Validatable.html "interface in com.appiancorp.suiteapi.process")`

        Returns:

        String name of this process variable

    -   ### compareTo

        public int compareTo([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o1\_)

        Specified by:

        `[compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html#compareTo\(T\) "class or interface in java.lang")` in interface `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")`

    -   ### getExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExpression()

        The expression that represents the default value of this process variable.

        Specified by:

        `getExpression` in interface `com.appiancorp.type.ExpressionableNamedTypedValue`

        Returns:

    -   ### setExpression

        public void setExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression\_)

        This expression represents the default value of a process variable. It should only be set at design time and is only evaluated when retrieving the process model parameters, NOT when starting the process.

        Specified by:

        `setExpression` in interface `com.appiancorp.type.ExpressionableNamedTypedValue`

        Parameters:

        `expression_` - default expression value for the process variable