---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html
original_path: api/com/appiancorp/suiteapi/process/ActivityClassParameterSchema.html
version: "25.3"
title: "Class ActivityClassParameterSchema"
page_id: "api/com/appiancorp/suiteapi/process/ActivityClassParameterSchema"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ActivityClassParameterSchema

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.type.TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")

[com.appiancorp.suiteapi.type.NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

[com.appiancorp.suiteapi.process.TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.ActivityClassParameterSchema

All Implemented Interfaces:

`com.appiancorp.core.expr.portable.PortableNamedTypedValue`, `com.appiancorp.core.expr.portable.PortableNamedTypedValueWithChildren`, `com.appiancorp.core.expr.portable.PortableTypedValue`, `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[TypedVariableTypes](TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")`, `[AppianType](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")`, `com.appiancorp.type.HasTypeRef`, `com.appiancorp.type.NamedType`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

Direct Known Subclasses:

`[ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")`

* * *

public class ActivityClassParameterSchema extends [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process") implements [DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

Template from which ActivityClassParameters are created. When an administrator adds a new activity to the system, he or she is specifying a new ActivityClassSchema. When a designer adds a node to a process model, he or she is using an ActivityClass (or multiple classes, if there are pre-and post-activities). An ActivityClassParameterSchema is held by an ActivityClassSchema to supply data to the process designer to govern the options available to the person doing the design. An ActivityClassParameterSchema can have a type of DEFERRED, which will force the designer to choose another type for each corresponding ActivityClassParameter. If the type is BEAN\_ARRAY, the value must be a single ActivityClassParameterSchema of type BEAN which specifies the layout to which all ActivityClassParameters created from this schema must conform.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ActivityClassParameterSchema)

-   ## Field Summary

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

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ActivityClassParameterSchema](#%3Cinit%3E\(\))()`

    `[ActivityClassParameterSchema](#%3Cinit%3E\(com.appiancorp.suiteapi.type.NamedTypedValue\))([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") ntv_)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getComment](#getComment\(\))()`

    Gets the comment for this activity class parameter schema

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomDisplayReference](#getCustomDisplayReference\(\))()`

    Retrieves the name of the pickerType to be used for this ACPS.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEnumeration](#getEnumeration\(\))()`

    Retrieves the name (key) of the enumeration to be used for this ACPS.

    `boolean`

    `[getHiddenFromDesigner](#getHiddenFromDesigner\(\))()`

    Determines whether the data tab on the process modeler will show this parameter to the designer.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Gets the unique Id for this activity class parameter schema

    `boolean`

    `[getInputToAc](#getInputToAc\(\))()`

    Determines whether this parameter is input to an activity class (and therefore a true activity class parameter), or not (and therefore an activity return variable).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalId](#getLocalId\(\))()`

    Gets the local id of the activity class parameter schema on the system.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getMutable](#getMutable\(\))()`

    Indicates whether the activity class parameter can be changed

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNullable](#getNullable\(\))()`

    Indicates whether or not this activity class parameter schema is nullable

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPrompt](#getPrompt\(\))()`

    Gets the default prompt to be show to the runtime user for parameters created from this schema.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getRequired](#getRequired\(\))()`

    Deprecated.

    Use [`isRequired()`](#isRequired\(\))

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getXMLWrapperName](#getXMLWrapperName\(\))()`

    `boolean`

    `[isRequired](#isRequired\(\))()`

    Returns true if the parameter is required, false otherwise.

    `void`

    `[setComment](#setComment\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") comment_)`

    Sets the comment for this activity class parameter schema

    `void`

    `[setCustomDisplayReference](#setCustomDisplayReference\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customDisplayReference_)`

    Sets the name of the pickerType to be used for this ACPS.

    `void`

    `[setEnumeration](#setEnumeration\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") enumeration_)`

    Sets the name (key) of the enumeration to be used for this ACPS.

    `void`

    `[setHiddenFromDesigner](#setHiddenFromDesigner\(boolean\))(boolean hidden_)`

    Determines whether the data tab on the process modeler will show this parameter to the designer.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the unique Id for this activity class parameter schema

    `void`

    `[setInputToAc](#setInputToAc\(boolean\))(boolean inputToAc_)`

    Sets whether or not this acp-schema is an input to an activity class (and therefore a true activity class parameter), or not (and is therefore an activity return variable)

    `void`

    `[setLocalId](#setLocalId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId_)`

    Sets the local id of the activity class parameter schema on the system.

    `void`

    `[setMutable](#setMutable\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") mutable_)`

    Sets whether this activity class parameter can be changed

    `void`

    `[setNullable](#setNullable\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nullable_)`

    Sets whether or not this activity class parameter schema is nullable

    `void`

    `[setPrompt](#setPrompt\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") prompt_)`

    Sets the default prompt to be shown to runtime users of activites containing parameters created from this schema.

    `void`

    `[setRequired](#setRequired\(boolean\))(boolean required)`

    Sets whether this parameter is required.

    `void`

    `[setRequired](#setRequired\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") required_)`

    Deprecated.

    Use [`setRequired(boolean)`](#setRequired\(boolean\))

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends the XML representation of this typed variable to the given buffer.

    ### Methods inherited from class com.appiancorp.suiteapi.process.[TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")

    `[appendFullName](TypedVariable.html#appendFullName\(java.lang.StringBuffer\)), [appendLocalObject](TypedVariable.html#appendLocalObject\(java.lang.StringBuffer,com.appiancorp.suiteapi.common.LocalObject\)), [appendLocalObject](TypedVariable.html#appendLocalObject\(java.lang.StringBuilder,com.appiancorp.suiteapi.common.LocalObject\)), [appendLocalObjects](TypedVariable.html#appendLocalObjects\(java.lang.StringBuffer,com.appiancorp.suiteapi.common.LocalObject%5B%5D\)), [appendLocalObjects](TypedVariable.html#appendLocalObjects\(java.lang.StringBuilder,com.appiancorp.suiteapi.common.LocalObject%5B%5D\)), [children](TypedVariable.html#children\(\)), [computeDisplayString](TypedVariable.html#computeDisplayString\(com.appiancorp.services.ServiceContext\)), [computeDisplayString](TypedVariable.html#computeDisplayString\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [computeValueString](TypedVariable.html#computeValueString\(com.appiancorp.services.ServiceContext\)), [computeValueStringForUiOutput](TypedVariable.html#computeValueStringForUiOutput\(com.appiancorp.services.ServiceContext,boolean,boolean\)), [convertFromLocalObjectType](TypedVariable.html#convertFromLocalObjectType\(int\)), [externalize](TypedVariable.html#externalize\(com.appiancorp.suiteapi.type.TypedValue\)), [externalize](TypedVariable.html#externalize\(java.lang.Object,java.lang.Long,boolean\)), [fillInAppianTypes](TypedVariable.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [findAllWithKeyPrefix](TypedVariable.html#findAllWithKeyPrefix\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D,java.lang.String\)), [findByName](TypedVariable.html#findByName\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D,java.lang.String\)), [getClassType](TypedVariable.html#getClassType\(\)), [getDataType](TypedVariable.html#getDataType\(\)), [getDefaultPvValue](TypedVariable.html#getDefaultPvValue\(java.lang.Long,boolean\)), [getDefaultValue](TypedVariable.html#getDefaultValue\(java.lang.Long,boolean\)), [getDetailedTypes](TypedVariable.html#getDetailedTypes\(\)), [getHiddenAttributes](TypedVariable.html#getHiddenAttributes\(\)), [getInstanceClass](TypedVariable.html#getInstanceClass\(java.lang.Long\)), [getKey](TypedVariable.html#getKey\(\)), [getMultiple](TypedVariable.html#getMultiple\(\)), [getNumericTypedObjectFromUiInput](TypedVariable.html#getNumericTypedObjectFromUiInput\(java.lang.String,java.lang.Long,com.appiancorp.services.ServiceContext\)), [getObjectTypeMappingFromType](TypedVariable.html#getObjectTypeMappingFromType\(int\)), [getScalarTypedObject](TypedVariable.html#getScalarTypedObject\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\)), [getScalarTypedObject](TypedVariable.html#getScalarTypedObject\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.services.ServiceContext\)), [getType](TypedVariable.html#getType\(\)), [getTypedObjectFromUiInput](TypedVariable.html#getTypedObjectFromUiInput\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.services.ServiceContext\)), [getTypedObjects](TypedVariable.html#getTypedObjects\(java.lang.String%5B%5D,java.lang.Long,int%5B%5D,com.appiancorp.services.ServiceContext\)), [getTypedObjectsFromUiInput](TypedVariable.html#getTypedObjectsFromUiInput\(java.lang.String%5B%5D,java.lang.Long,int%5B%5D,com.appiancorp.services.ServiceContext\)), [getTypedVariables](TypedVariable.html#getTypedVariables\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\)), [getTypeForClass](TypedVariable.html#getTypeForClass\(java.lang.Class\)), [getTypeFromObjectTypeMappingType](TypedVariable.html#getTypeFromObjectTypeMappingType\(int\)), [getUnderlyingClass](TypedVariable.html#getUnderlyingClass\(java.lang.Long,boolean\)), [getXMLWrapperEnd](TypedVariable.html#getXMLWrapperEnd\(\)), [getXMLWrapperStart](TypedVariable.html#getXMLWrapperStart\(\)), [handleTimestampValue](TypedVariable.html#handleTimestampValue\(java.util.Date,int,com.appiancorp.services.ServiceContext\)), [handleTimestampValueForUiOutput](TypedVariable.html#handleTimestampValueForUiOutput\(java.util.Date,int,com.appiancorp.services.ServiceContext\)), [integerToLong](TypedVariable.html#integerToLong\(java.lang.Integer\)), [internalize](TypedVariable.html#internalize\(java.lang.String\)), [isAppianType](TypedVariable.html#isAppianType\(int\)), [isMultipleSupportingType](TypedVariable.html#isMultipleSupportingType\(\)), [isNotDeferred](TypedVariable.html#isNotDeferred\(int\)), [isValidType](TypedVariable.html#isValidType\(int\)), [putOrAppendTimestamp](TypedVariable.html#putOrAppendTimestamp\(java.sql.Timestamp,com.appiancorp.services.ServiceContext\)), [putOrAppendValue](TypedVariable.html#putOrAppendValue\(java.lang.String,com.appiancorp.services.ServiceContext\)), [renderArrayAsCsv](TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\)), [renderArrayAsCsv](TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,int\)), [renderArrayAsCsv](TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,int,com.appiancorp.services.ServiceContext\)), [renderArrayAsCsv](TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,int,com.appiancorp.services.ServiceContext,int\)), [renderArrayAsCsvForUiOutput](TypedVariable.html#renderArrayAsCsvForUiOutput\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\)), [renderArrayAsString](TypedVariable.html#renderArrayAsString\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,java.lang.String,int\)), [setDetailedTypes](TypedVariable.html#setDetailedTypes\(int%5B%5D\)), [setInstanceType](TypedVariable.html#setInstanceType\(java.lang.Long\)), [setKey](TypedVariable.html#setKey\(java.lang.String\)), [setMultiple](TypedVariable.html#setMultiple\(int\)), [setType](TypedVariable.html#setType\(java.lang.Long\)), [setTypeMultiple](TypedVariable.html#setTypeMultiple\(java.lang.Long,int\)), [setValue](TypedVariable.html#setValue\(java.lang.Object\)), [toString](TypedVariable.html#toString\(java.lang.String%5B%5D\)), [toXML](TypedVariable.html#toXML\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.type.[NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

    `[equals](../type/NamedTypedValue.html#equals\(java.lang.Object\)), [findNtvByName](../type/NamedTypedValue.html#findNtvByName\(T%5B%5D,java.lang.String\)), [findNtvIndexByName](../type/NamedTypedValue.html#findNtvIndexByName\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D,java.lang.String\)), [getName](../type/NamedTypedValue.html#getName\(\)), [getNtvNames](../type/NamedTypedValue.html#getNtvNames\(java.util.Collection\)), [hashCode](../type/NamedTypedValue.html#hashCode\(\)), [setName](../type/NamedTypedValue.html#setName\(java.lang.String\)), [toString](../type/NamedTypedValue.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.type.[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")

    `[clearPasswordOnTransport](../type/TypedValue.html#clearPasswordOnTransport\(\)), [getInstanceType](../type/TypedValue.html#getInstanceType\(\)), [getInstanceTypeIds](../type/TypedValue.html#getInstanceTypeIds\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\)), [getTypeRef](../type/TypedValue.html#getTypeRef\(\)), [getValue](../type/TypedValue.html#getValue\(\)), [setTypeRef](../type/TypedValue.html#setTypeRef\(com.appiancorp.type.TypeRef\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.type.HasTypeRef

    `getTypeRef, setTypeRef`

    ### Methods inherited from interface com.appiancorp.core.expr.portable.PortableNamedTypedValue

    `getName`

    ### Methods inherited from interface com.appiancorp.core.expr.portable.PortableNamedTypedValueWithChildren

    `setName`

    ### Methods inherited from interface com.appiancorp.core.expr.portable.PortableTypedValue

    `getInstanceType, getValue`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### ActivityClassParameterSchema

        public ActivityClassParameterSchema()

    -   ### ActivityClassParameterSchema

        public ActivityClassParameterSchema([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") ntv\_)

-   ## Method Details

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Clone this object. Note that this will produce a deep copy of value as well.

        Specified by:

        `[clone](../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](../type/TypedValue.html#clone\(\))` in class `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

        Returns:

    -   ### setHiddenFromDesigner

        public void setHiddenFromDesigner(boolean hidden\_)

        Determines whether the data tab on the process modeler will show this parameter to the designer. A non-zero value means "yes", a zero value means "no".

        Parameters:

        `hidden_` - whether or not the

    -   ### getHiddenFromDesigner

        public boolean getHiddenFromDesigner()

        Determines whether the data tab on the process modeler will show this parameter to the designer. A non-zero value means "yes", a zero value means "no".

        Parameters:

        `hidden_` - whether or not the

    -   ### getRequired

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getRequired()

        Deprecated.

        Use [`isRequired()`](#isRequired\(\))

        Indicates whether the activity class parameter is required or not

        Returns:

        a `Long` indicating whether the the activity class parameter is required or not (0 - not required, 1 - required, 2 - required but all except admins and designers)

    -   ### setRequired

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setRequired([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") required\_)

        Deprecated.

        Use [`setRequired(boolean)`](#setRequired\(boolean\))

        Sets whether the activity class parameter is required or not

        Parameters:

        `required_` - a `Long` indicating whether the the activity class parameter is required or not (0 - not required, 1 - required, 2 - required but all except admins and designers)

    -   ### isRequired

        public boolean isRequired()

        Returns true if the parameter is required, false otherwise.

    -   ### setRequired

        public void setRequired(boolean required)

        Sets whether this parameter is required.

        Parameters:

        `required` - True if it's required

    -   ### getXMLWrapperName

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getXMLWrapperName()

        Overrides:

        `[getXMLWrapperName](TypedVariable.html#getXMLWrapperName\(\))` in class `[TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")`

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Description copied from class: `[TypedVariable](TypedVariable.html#toXML\(java.lang.StringBuilder\))`

        Appends the XML representation of this typed variable to the given buffer.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[toXML](TypedVariable.html#toXML\(java.lang.StringBuilder\))` in class `[TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")`

        Parameters:

        `buffer_` - The buffer to which the typed variable should be appended.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Gets the unique Id for this activity class parameter schema

        Returns:

        the unique Id for this activity class parameter schema

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the unique Id for this activity class parameter schema

        Parameters:

        `id_` - the unique Id to set for this activity class parameter schema

    -   ### getNullable

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNullable()

        Indicates whether or not this activity class parameter schema is nullable

        Returns:

        whether or not this activity class parameter schema is nullable. Will return one fo the following values: [`Validatable.NULLABLE_NOT_AT_ALL`](Validatable.html#NULLABLE_NOT_AT_ALL), [`Validatable.NULLABLE_BY_ALL`](Validatable.html#NULLABLE_BY_ALL), [`Validatable.NULLABLE_ADMIN_AND_DESIGN`](Validatable.html#NULLABLE_ADMIN_AND_DESIGN)

    -   ### setNullable

        public void setNullable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nullable\_)

        Sets whether or not this activity class parameter schema is nullable

        Parameters:

        `nullable_` - value to set for whether the activity class parameter Allowed values are: [`Validatable.NULLABLE_NOT_AT_ALL`](Validatable.html#NULLABLE_NOT_AT_ALL), [`Validatable.NULLABLE_BY_ALL`](Validatable.html#NULLABLE_BY_ALL) , [`Validatable.NULLABLE_ADMIN_AND_DESIGN`](Validatable.html#NULLABLE_ADMIN_AND_DESIGN)

    -   ### getComment

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getComment()

        Gets the comment for this activity class parameter schema

        Returns:

        the comment for this activity class parameter schema

    -   ### setComment

        public void setComment([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") comment\_)

        Sets the comment for this activity class parameter schema

        Parameters:

        `comment_` - the comment to set for this activity class parameter schema

    -   ### getInputToAc

        public boolean getInputToAc()

        Determines whether this parameter is input to an activity class (and therefore a true activity class parameter), or not (and therefore an activity return variable).

        Returns:

        `true` if this parameter is an input to an activity class, `false` otherwise

    -   ### setInputToAc

        public void setInputToAc(boolean inputToAc\_)

        Sets whether or not this acp-schema is an input to an activity class (and therefore a true activity class parameter), or not (and is therefore an activity return variable)

        Parameters:

        `inputToAc_` - `true` if this parameter is an input to an activity class, `false` otherwise

    -   ### getMutable

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getMutable()

        Indicates whether the activity class parameter can be changed

        Returns:

        a `Long` which indicates whether this activity class parameter is mutable. Will return one fo the following values: [`Validatable.MUTABLE_NOT_BY_END_USER`](Validatable.html#MUTABLE_NOT_BY_END_USER), [`Validatable.MUTABLE_BY_END_USER`](Validatable.html#MUTABLE_BY_END_USER), [`Validatable.MUTABLE_AT_DESIGNER_DISCRETION`](Validatable.html#MUTABLE_AT_DESIGNER_DISCRETION)

    -   ### setMutable

        public void setMutable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") mutable\_)

        Sets whether this activity class parameter can be changed

        Parameters:

        `mutable_` - a `Long` which indicates whether this activity class parameter is mutable. Allowed values are : [`Validatable.MUTABLE_NOT_BY_END_USER`](Validatable.html#MUTABLE_NOT_BY_END_USER), [`Validatable.MUTABLE_BY_END_USER`](Validatable.html#MUTABLE_BY_END_USER), [`Validatable.MUTABLE_AT_DESIGNER_DISCRETION`](Validatable.html#MUTABLE_AT_DESIGNER_DISCRETION)

    -   ### getPrompt

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPrompt()

        Gets the default prompt to be show to the runtime user for parameters created from this schema. The process designer can override this default on each parameter instance.

        Returns:

        the default prompt to be show to the user

    -   ### setPrompt

        public void setPrompt([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") prompt\_)

        Sets the default prompt to be shown to runtime users of activites containing parameters created from this schema.

        Parameters:

        `prompt_` - the default prompt to be show to the user

    -   ### getLocalId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalId()

        Gets the local id of the activity class parameter schema on the system.

        Returns:

        Returns the localId.

    -   ### setLocalId

        public void setLocalId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId\_)

        Sets the local id of the activity class parameter schema on the system.

        Parameters:

        `localId_` - The localId to set.

    -   ### getEnumeration

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEnumeration()

        Retrieves the name (key) of the enumeration to be used for this ACPS. If no enumeration is to be used this method will return null.

        Returns:

        Returns the enumeration.

    -   ### setEnumeration

        public void setEnumeration([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") enumeration\_)

        Sets the name (key) of the enumeration to be used for this ACPS.

        Parameters:

        `enumeration_` - The enumeration to set.

        See Also:

        -   [`getEnumeration()`](#getEnumeration\(\))

    -   ### getCustomDisplayReference

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomDisplayReference()

        Retrieves the name of the pickerType to be used for this ACPS. If set, a custom pickerType will be used to choose the value of this ACPS at design time and run time. The return type of the picker must match the type of the ACPS, ie. an ACPS of type Group must have some type of Group picker. If not set, the ACPS will use the default picker for its type.
        Note: If the type of the ACPS is not an Appian type, this field will also be ignored.

        Returns:

        Returns the customDisplayReference.

    -   ### setCustomDisplayReference

        public void setCustomDisplayReference([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customDisplayReference\_)

        Sets the name of the pickerType to be used for this ACPS.

        Parameters:

        `customDisplayReference_` - The customDisplayReference to set.

        See Also:

        -   [`getCustomDisplayReference()`](#getCustomDisplayReference\(\))