---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/TypedVariable.html
original_path: api/com/appiancorp/suiteapi/process/TypedVariable.html
version: "25.3"
title: "Class TypedVariable"
page_id: "api/com/appiancorp/suiteapi/process/TypedVariable"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class TypedVariable

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.type.TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")

[com.appiancorp.suiteapi.type.NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

com.appiancorp.suiteapi.process.TypedVariable

All Implemented Interfaces:

`com.appiancorp.core.expr.portable.PortableNamedTypedValue`, `com.appiancorp.core.expr.portable.PortableNamedTypedValueWithChildren`, `com.appiancorp.core.expr.portable.PortableTypedValue`, `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[TypedVariableTypes](TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")`, `[AppianType](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")`, `com.appiancorp.type.HasTypeRef`, `com.appiancorp.type.NamedType`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

Direct Known Subclasses:

`[ActivityClassParameterSchema](ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")`, `[GenericTypedVariable](GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")`, `[Mapping](../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")`, `[ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class TypedVariable extends [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [TypedVariableTypes](TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process"), [DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.core.expr.portable.PortableNamedTypedValueWithChildren

Deprecated.

Use the class [`NamedTypedValue`](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") instead.

Base class for the parameters and variables in the system. Generally, a typed variable is a binding between a key and a value, with the additional attribute of a type giving context to the value. The key is really the name of the value, and the type tells clients how the value object should be interpreted. A GROUP and a DOCUMENT, for example, both have values that are numbers (Long primary keys). The type can be compared to one of the constants in this class to determine the proper semantics of the value. A lot of utility methods are included in this class to help validate types and manage the relationships among typed variables.

See Also:

-   [`TypeDescriptor`](TypeDescriptor.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.TypedVariable)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[classType$TRANSIENT](#classType$TRANSIENT)`

    Deprecated.

     

    `static final boolean`

    `[dataType$TRANSIENT](#dataType$TRANSIENT)`

    Deprecated.

     

    `static final boolean`

    `[detailedTypes$TRANSIENT](#detailedTypes$TRANSIENT)`

    Deprecated.

     

    `static final boolean`

    `[displayName$TRANSIENT](#displayName$TRANSIENT)`

    Deprecated.

     

    `static final int`

    `[LOCAL_COMMUNITY](#LOCAL_COMMUNITY)`

    Deprecated.

     

    `static final int`

    `[LOCAL_DOCUMENT](#LOCAL_DOCUMENT)`

    Deprecated.

     

    `static final int`

    `[LOCAL_EMAIL_ADDRESS](#LOCAL_EMAIL_ADDRESS)`

    Deprecated.

     

    `static final int`

    `[LOCAL_FOLDER](#LOCAL_FOLDER)`

    Deprecated.

     

    `static final int`

    `[LOCAL_FORUM](#LOCAL_FORUM)`

    Deprecated.

     

    `static final int`

    `[LOCAL_GROUP](#LOCAL_GROUP)`

    Deprecated.

     

    `static final int`

    `[LOCAL_KC](#LOCAL_KC)`

    Deprecated.

     

    `static final int`

    `[LOCAL_MESSAGE](#LOCAL_MESSAGE)`

    Deprecated.

     

    `static final int`

    `[LOCAL_NODE](#LOCAL_NODE)`

    Deprecated.

     

    `static final int`

    `[LOCAL_PAGE](#LOCAL_PAGE)`

    Deprecated.

     

    `static final int`

    `[LOCAL_PM](#LOCAL_PM)`

    Deprecated.

     

    `static final int`

    `[LOCAL_PORTLET](#LOCAL_PORTLET)`

    Deprecated.

     

    `static final int`

    `[LOCAL_PROCESS](#LOCAL_PROCESS)`

    Deprecated.

     

    `static final int`

    `[LOCAL_TASK](#LOCAL_TASK)`

    Deprecated.

     

    `static final int`

    `[LOCAL_TOPIC](#LOCAL_TOPIC)`

    Deprecated.

     

    `static final int`

    `[LOCAL_USER](#LOCAL_USER)`

    Deprecated.

     

    `static final int`

    `[MAX_TYPE](#MAX_TYPE)`

    Deprecated.

     

    `static final boolean`

    `[multipleSupportingType$TRANSIENT](#multipleSupportingType$TRANSIENT)`

    Deprecated.

     

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

    `[TypedVariable](#%3Cinit%3E\(\))()`

    Deprecated.

    Creates an instance.

    `[TypedVariable](#%3Cinit%3E\(com.appiancorp.suiteapi.type.NamedTypedValue\))([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") ntv)`

    Deprecated.

    Creates an instance and sets the instance type and value to the instance type and value of the provided NamedTypedValue.

    `[TypedVariable](#%3Cinit%3E\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") tv)`

    Deprecated.

    Creates an instance and sets the instance type and value to the instance type and value of the provided TypedValue.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[appendFullName](#appendFullName\(java.lang.StringBuffer\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") sb_)`

    Deprecated.

    Appends the full name of this variable to the given buffer.

    `protected static void`

    `[appendLocalObject](#appendLocalObject\(java.lang.StringBuffer,com.appiancorp.suiteapi.common.LocalObject\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") sb_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") local_)`

    Deprecated.

     

    `protected static void`

    `[appendLocalObject](#appendLocalObject\(java.lang.StringBuilder,com.appiancorp.suiteapi.common.LocalObject\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") sb_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") local_)`

    Deprecated.

     

    `protected static void`

    `[appendLocalObjects](#appendLocalObjects\(java.lang.StringBuffer,com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") sb_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] locals_)`

    Deprecated.

     

    `protected static void`

    `[appendLocalObjects](#appendLocalObjects\(java.lang.StringBuilder,com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") sb_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] locals_)`

    Deprecated.

     

    `[TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[children](#children\(\))()`

    Deprecated.

    If the type of the variable is BEAN, returns an array of ACPs (Activity Class Parameters) that are the fields of the bean.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[computeDisplayString](#computeDisplayString\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use either [`computeValueString(ServiceContext)`](#computeValueString\(com.appiancorp.services.ServiceContext\)), or [`computeValueStringForUiOutput(ServiceContext, boolean, boolean)`](#computeValueStringForUiOutput\(com.appiancorp.services.ServiceContext,boolean,boolean\)).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[computeDisplayString](#computeDisplayString\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Deprecated.

    This is the same as `#computeDisplayString()`, except that the passed cache is used to get the display value (so that for an Appian Type, a user-friendly string is returned; for exmple, "Technology" instead of a number for a GROUP).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[computeValueString](#computeValueString\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Computes the string representation of the value of this typed variable, which should be shown to the user.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[computeValueStringForUiOutput](#computeValueStringForUiOutput\(com.appiancorp.services.ServiceContext,boolean,boolean\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, boolean wrapInQuotes_, boolean escapeXml_)`

    Deprecated.

     

    `static int`

    `[convertFromLocalObjectType](#convertFromLocalObjectType\(int\))(int localObjectType)`

    Deprecated.

    Convert LocalObject type to Standard type

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[externalize](#externalize\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") tv)`

    Deprecated.

     

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[externalize](#externalize\(java.lang.Object,java.lang.Long,boolean\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_, boolean multiple_)`

    Deprecated.

    Convert the data passed in to the externalized (String) format

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Deprecated.

    If this typed variable is an Appian Type, adds its primary key to the cache.

    `static [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[findAllWithKeyPrefix](#findAllWithKeyPrefix\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D,java.lang.String\))([TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")[] variables_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    Finds all the variables in the given array whose name sarts with the passed `name_` string.

    `static [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")`

    `[findByName](#findByName\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D,java.lang.String\))([TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")[] variables_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    Finds the variable in the given array whose name corresponds to the given name.

    `int`

    `[getClassType](#getClassType\(\))()`

    Deprecated.

    Gets the type classification of this typed variable.

    `int`

    `[getDataType](#getDataType\(\))()`

    Deprecated.

    Gets the underlying datatype of this typed variable.

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getDefaultPvValue](#getDefaultPvValue\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_, boolean multiple_)`

    Deprecated.

    Returns the default value for a `ProcessVariable` of the given type.

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getDefaultValue](#getDefaultValue\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_, boolean multiple_)`

    Deprecated.

    Returns the default value for the given type.

    `int[]`

    `[getDetailedTypes](#getDetailedTypes\(\))()`

    Deprecated.

    If the underlying representation of this typed variable is an array, returns the types of the objects contained in the array.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Deprecated.

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `static [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getInstanceClass](#getInstanceClass\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getKey](#getKey\(\))()`

    Deprecated.

    use [`NamedTypedValue.getName()`](../type/NamedTypedValue.html#getName\(\))

    `int`

    `[getMultiple](#getMultiple\(\))()`

    Deprecated.

    To determine if a type is multiple or not, retrieve its [`Datatype`](../type/Datatype.html "class in com.appiancorp.suiteapi.type") or [`DatatypeProperties`](../type/DatatypeProperties.html "class in com.appiancorp.suiteapi.type") bean via [`TypeService`](../type/TypeService.html "interface in com.appiancorp.suiteapi.type") and use [`DatatypeProperties.isListType()`](../type/DatatypeProperties.html#isListType\(\)).

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getNumericTypedObjectFromUiInput](#getNumericTypedObjectFromUiInput\(java.lang.String,java.lang.Long,com.appiancorp.services.ServiceContext\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

     

    `static int`

    `[getObjectTypeMappingFromType](#getObjectTypeMappingFromType\(int\))(int tvType_)`

    Deprecated.

     

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getScalarTypedObject](#getScalarTypedObject\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") val_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") detailedType_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc_)`

    Deprecated.

    since 6.0.3

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getScalarTypedObject](#getScalarTypedObject\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.services.ServiceContext\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") val_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") detailedType_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Converts the given `String` to an object of the given type.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Deprecated.

    use [`TypedValue.getInstanceType()`](../type/TypedValue.html#getInstanceType\(\))

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getTypedObjectFromUiInput](#getTypedObjectFromUiInput\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.services.ServiceContext\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") detailedType_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

     

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getTypedObjects](#getTypedObjects\(java.lang.String%5B%5D,java.lang.Long,int%5B%5D,com.appiancorp.services.ServiceContext\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] values_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType_, int[] detailedTypes_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Converts the given `String`s to objects of the given type.

    `static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getTypedObjectsFromUiInput](#getTypedObjectsFromUiInput\(java.lang.String%5B%5D,java.lang.Long,int%5B%5D,com.appiancorp.services.ServiceContext\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] values_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType_, int[] detailedTypes_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

     

    `static [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getTypedVariables](#getTypedVariables\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] ntvs)`

    Deprecated.

     

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getTypeForClass](#getTypeForClass\(java.lang.Class\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") class_)`

    Deprecated.

    Returns the `TypedVariable` type for a given class.

    `static int`

    `[getTypeFromObjectTypeMappingType](#getTypeFromObjectTypeMappingType\(int\))(int otmType_)`

    Deprecated.

    Returns the `TypedVariable` type corresponding to a given `ObjectTypeMapping` type.

    `static [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getUnderlyingClass](#getUnderlyingClass\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_, boolean multiple_)`

    Deprecated.

    see `TypeClassResolver#getTypeClass(Long)`

    `protected final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getXMLWrapperEnd](#getXMLWrapperEnd\(\))()`

    Deprecated.

     

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getXMLWrapperName](#getXMLWrapperName\(\))()`

    Deprecated.

     

    `protected final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getXMLWrapperStart](#getXMLWrapperStart\(\))()`

    Deprecated.

     

    `protected static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[handleTimestampValue](#handleTimestampValue\(java.util.Date,int,com.appiancorp.services.ServiceContext\))([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Date.html "class or interface in java.util") value_, int type_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

     

    `protected static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[handleTimestampValueForUiOutput](#handleTimestampValueForUiOutput\(java.util.Date,int,com.appiancorp.services.ServiceContext\))([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Date.html "class or interface in java.util") value_, int type_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

     

    `protected static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[integerToLong](#integerToLong\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") i_)`

    Deprecated.

     

    `static [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")`

    `[internalize](#internalize\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalized)`

    Deprecated.

    Interalizes the externalized String passed in

    `static boolean`

    `[isAppianType](#isAppianType\(int\))(int tvType_)`

    Deprecated.

    Determines whether the given type is an Appian Type (an Appian Type is any type that has a corresponding TYPE\_XXX constant defined in [`ObjectTypeMapping`](../common/ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")).

    `boolean`

    `[isMultipleSupportingType](#isMultipleSupportingType\(\))()`

    Deprecated.

    Determines whether the type of this variable could support multiple values.

    `static boolean`

    `[isNotDeferred](#isNotDeferred\(int\))(int type_)`

    Deprecated.

    Determines whether the given type is not a deferred type.

    `static boolean`

    `[isValidType](#isValidType\(int\))(int type_)`

    Deprecated.

    use TypeService

    `void`

    `[putOrAppendTimestamp](#putOrAppendTimestamp\(java.sql.Timestamp,com.appiancorp.services.ServiceContext\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") ts_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Do not use this, as it is meant ONLY for web services.

    `void`

    `[putOrAppendValue](#putOrAppendValue\(java.lang.String,com.appiancorp.services.ServiceContext\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newValAsString_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Do not use this, as it is meant ONLY for web services.

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[renderArrayAsCsv](#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] values_, boolean wrapInQuotes_, boolean escapeXml_, int type_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Transforms the given array into a single sting containing a comma-separated list of the array values.

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[renderArrayAsCsv](#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,int\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] values_, boolean wrapInQuotes_, boolean escapeXml_, int type_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, int multiple)`

    Deprecated.

     

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[renderArrayAsCsv](#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,int,com.appiancorp.services.ServiceContext\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] values_, boolean wrapInQuotes_, int type_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

    Use either [`renderArrayAsCsv(Object[], boolean, boolean, int, ServiceContext)`](#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\)) or [`renderArrayAsCsv(Object[], boolean, boolean, int, ServiceContext, char)`](#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,int\)).

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[renderArrayAsCsv](#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,int,com.appiancorp.services.ServiceContext,int\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] values_, boolean wrapInQuotes_, int type_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, int multiple)`

    Deprecated.

     

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[renderArrayAsCsvForUiOutput](#renderArrayAsCsvForUiOutput\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] values_, boolean wrapInQuotes_, boolean escapeXml_, int type_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Deprecated.

     

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[renderArrayAsString](#renderArrayAsString\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,java.lang.String,int\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] values_, boolean wrapInQuotes_, boolean escapeXml_, int type_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") delim_, int multiple)`

    Deprecated.

     

    `void`

    `[setDetailedTypes](#setDetailedTypes\(int%5B%5D\))(int[] detailedTypes_)`

    Deprecated.

    See [`getDetailedTypes()`](#getDetailedTypes\(\)).

    `final void`

    `[setInstanceType](#setInstanceType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType)`

    Deprecated.

    Sets the instance type of the typed value.

    `void`

    `[setKey](#setKey\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key_)`

    Deprecated.

    use `NamedTypedValue#setName()`

    `void`

    `[setMultiple](#setMultiple\(int\))(int multiple)`

    Deprecated.

    Set the [`instance type`](#setInstanceType\(java.lang.Long\)) instead.

    `void`

    `[setType](#setType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type)`

    Deprecated.

    use `TypedValue#setInstanceType()`

    `void`

    `[setTypeMultiple](#setTypeMultiple\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, int multiple)`

    Deprecated.

    Use [`setInstanceType(Long)`](#setInstanceType\(java.lang.Long\)) instead.

    `void`

    `[setValue](#setValue\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    Deprecated.

    Sets the value of the typed variable.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] input_)`

    Deprecated.

    Converts an array of `String`s in to a single `String` containing a comma-separated list of the passed strings.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Deprecated.

    Converts a typed variable to XML.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Deprecated.

    Appends the XML representation of this typed variable to the given buffer.

    ### Methods inherited from class com.appiancorp.suiteapi.type.[NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

    `[equals](../type/NamedTypedValue.html#equals\(java.lang.Object\)), [findNtvByName](../type/NamedTypedValue.html#findNtvByName\(T%5B%5D,java.lang.String\)), [findNtvIndexByName](../type/NamedTypedValue.html#findNtvIndexByName\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D,java.lang.String\)), [getName](../type/NamedTypedValue.html#getName\(\)), [getNtvNames](../type/NamedTypedValue.html#getNtvNames\(java.util.Collection\)), [hashCode](../type/NamedTypedValue.html#hashCode\(\)), [setName](../type/NamedTypedValue.html#setName\(java.lang.String\)), [toString](../type/NamedTypedValue.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.type.[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")

    `[clearPasswordOnTransport](../type/TypedValue.html#clearPasswordOnTransport\(\)), [clone](../type/TypedValue.html#clone\(\)), [getInstanceType](../type/TypedValue.html#getInstanceType\(\)), [getInstanceTypeIds](../type/TypedValue.html#getInstanceTypeIds\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\)), [getTypeRef](../type/TypedValue.html#getTypeRef\(\)), [getValue](../type/TypedValue.html#getValue\(\)), [setTypeRef](../type/TypedValue.html#setTypeRef\(com.appiancorp.type.TypeRef\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

    `[clone](../common/DeepCloneable.html#clone\(\))`

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

-   ## Field Details

    -   ### classType$TRANSIENT

        public static final boolean classType$TRANSIENT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypedVariable.classType$TRANSIENT)

    -   ### dataType$TRANSIENT

        public static final boolean dataType$TRANSIENT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypedVariable.dataType$TRANSIENT)

    -   ### detailedTypes$TRANSIENT

        public static final boolean detailedTypes$TRANSIENT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypedVariable.detailedTypes$TRANSIENT)

    -   ### multipleSupportingType$TRANSIENT

        public static final boolean multipleSupportingType$TRANSIENT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypedVariable.multipleSupportingType$TRANSIENT)

    -   ### displayName$TRANSIENT

        public static final boolean displayName$TRANSIENT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypedVariable.displayName$TRANSIENT)

    -   ### MAX\_TYPE

        public static final int MAX\_TYPE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.TypedVariable.MAX_TYPE)

    -   ### LOCAL\_USER

        public static final int LOCAL\_USER

        Deprecated.

    -   ### LOCAL\_GROUP

        public static final int LOCAL\_GROUP

        Deprecated.

    -   ### LOCAL\_DOCUMENT

        public static final int LOCAL\_DOCUMENT

        Deprecated.

    -   ### LOCAL\_FOLDER

        public static final int LOCAL\_FOLDER

        Deprecated.

    -   ### LOCAL\_PORTLET

        public static final int LOCAL\_PORTLET

        Deprecated.

    -   ### LOCAL\_PAGE

        public static final int LOCAL\_PAGE

        Deprecated.

    -   ### LOCAL\_FORUM

        public static final int LOCAL\_FORUM

        Deprecated.

    -   ### LOCAL\_TOPIC

        public static final int LOCAL\_TOPIC

        Deprecated.

    -   ### LOCAL\_MESSAGE

        public static final int LOCAL\_MESSAGE

        Deprecated.

    -   ### LOCAL\_KC

        public static final int LOCAL\_KC

        Deprecated.

    -   ### LOCAL\_COMMUNITY

        public static final int LOCAL\_COMMUNITY

        Deprecated.

    -   ### LOCAL\_PM

        public static final int LOCAL\_PM

        Deprecated.

    -   ### LOCAL\_PROCESS

        public static final int LOCAL\_PROCESS

        Deprecated.

    -   ### LOCAL\_TASK

        public static final int LOCAL\_TASK

        Deprecated.

    -   ### LOCAL\_NODE

        public static final int LOCAL\_NODE

        Deprecated.

    -   ### LOCAL\_EMAIL\_ADDRESS

        public static final int LOCAL\_EMAIL\_ADDRESS

        Deprecated.

-   ## Constructor Details

    -   ### TypedVariable

        public TypedVariable()

        Deprecated.

        Creates an instance.

    -   ### TypedVariable

        public TypedVariable([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") ntv)

        Deprecated.

        Creates an instance and sets the instance type and value to the instance type and value of the provided NamedTypedValue.

        Parameters:

        `ntv` - a NamedTypedValue containing the instance type and value to set for the newly created TypedVariable

    -   ### TypedVariable

        public TypedVariable([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") tv)

        Deprecated.

        Creates an instance and sets the instance type and value to the instance type and value of the provided TypedValue.

        Parameters:

        `tv` - a TypedValue containing the instance type and value to set for the newly created TypedVariable

-   ## Method Details

    -   ### getTypedVariables

        public static [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] getTypedVariables([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] ntvs)

        Deprecated.

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Deprecated.

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[getHiddenAttributes](../type/TypedValue.html#getHiddenAttributes\(\))` in class `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

        Returns:

        the set of hidden attributes

    -   ### getKey

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getKey()

        Deprecated.

        use [`NamedTypedValue.getName()`](../type/NamedTypedValue.html#getName\(\))

        Returns the name of the typed variable. Identical to [`NamedTypedValue.getName()`](../type/NamedTypedValue.html#getName\(\)) - originally, a typed variable was a key/value binding, hence the name is called "key".

    -   ### setKey

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setKey([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key\_)

        Deprecated.

        use `NamedTypedValue#setName()`

        See [`getKey()`](#getKey\(\)).

    -   ### getDetailedTypes

        public int\[\] getDetailedTypes()

        Deprecated.

        If the underlying representation of this typed variable is an array, returns the types of the objects contained in the array. For example, if the type of the `TypedVariable` is PEOPLE and the value contains 2 groups and 3 users, this method will return an array of size 5, where the first two elements are GROUP and the next 3 are USER.

        Returns:

        An array of types (type constants defined by this class).

    -   ### convertFromLocalObjectType

        public static int convertFromLocalObjectType(int localObjectType)

        Deprecated.

        Convert LocalObject type to Standard type

        Parameters:

        `localObjectType` - The [`ObjectTypeMapping`](../common/ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common") type from the LocalObject

        Returns:

        The corresponding AppianType

    -   ### setValue

        public void setValue([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)

        Deprecated.

        Description copied from class: `[TypedValue](../type/TypedValue.html#setValue\(java.lang.Object\))`

        Sets the value of the typed variable.

        Overrides:

        `[setValue](../type/TypedValue.html#setValue\(java.lang.Object\))` in class `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

        Parameters:

        `value` - The value to set the typed variable to.

    -   ### setDetailedTypes

        public void setDetailedTypes(int\[\] detailedTypes\_)

        Deprecated.

        See [`getDetailedTypes()`](#getDetailedTypes\(\)).

    -   ### isAppianType

        public static boolean isAppianType(int tvType\_)

        Deprecated.

        Determines whether the given type is an Appian Type (an Appian Type is any type that has a corresponding TYPE\_XXX constant defined in [`ObjectTypeMapping`](../common/ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")).

        Parameters:

        `tvType_` - The type to check.

        Returns:

        `true` if the passed type is an Appian Type, and `false` otherwise

    -   ### isValidType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static boolean isValidType(int type\_)

        Deprecated.

        use TypeService

        Determines whether the given type is a valid type.

        Parameters:

        `type_` - The type to check.

        Returns:

        `true` if the passed type is a valid type, and `false` otherwise

    -   ### isNotDeferred

        public static boolean isNotDeferred(int type\_)

        Deprecated.

        Determines whether the given type is not a deferred type. A deffered type is a variable whose type cannot be determined until design time (determining the type is deffered until design time, such as for the type of the answer in a Multiple Questions process model node).

        Parameters:

        `type_` - The type to check.

        Returns:

        `true` if type is NOT deferred, and `false` otherwise

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Deprecated.

        Converts a typed variable to XML.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        The typed variable as a string of XML.

    -   ### getXMLWrapperName

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getXMLWrapperName()

        Deprecated.

    -   ### getXMLWrapperStart

        protected final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getXMLWrapperStart()

        Deprecated.

        Returns:

        The xml wrapper start of a typed variable.

    -   ### getXMLWrapperEnd

        protected final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getXMLWrapperEnd()

        Deprecated.

        Returns:

        The xml wrapper end of a typed variable.

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Deprecated.

        Appends the XML representation of this typed variable to the given buffer.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer to which the typed variable should be appended.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] input\_)

        Deprecated.

        Converts an array of `String`s in to a single `String` containing a comma-separated list of the passed strings.

    -   ### getScalarTypedObject

        public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getScalarTypedObject([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") val\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") detailedType\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Converts the given `String` to an object of the given type.

        Parameters:

        `val_` - The string representation of a value.

        `nType_` - A constant representing the type to which `val_` should be converted. This type MUST be a scalar, ie not `XXX_ARRAY`.

        `detailedType_` - The type of the sub-object, which is only useful if the underlying class is a `LocalObject` (ie for `PEOPLE` and `CONTENT` types). Otherwise, the parameter is ignored and can be set to `null`.

        Returns:

        The object of the passed type and containing the passed value.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `nType_` is invalid, not scalar, or DEFERRED or BEAN

    -   ### getScalarTypedObject

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getScalarTypedObject([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") val\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") detailedType\_, com.appiancorp.asl3.servicefw.connect.ServiceContext sc\_)

        Deprecated.

        since 6.0.3

        Converts the given `String` to an object of the given type.

        Parameters:

        `val_` - The string representation of a value.

        `nType_` - A constant representing the type to which `val_` should be converted. This type MUST be a scalar, ie not `XXX_ARRAY`.

        `detailedType_` - The type of the sub-object, which is only useful if the underlying class is a `LocalObject` (ie for `PEOPLE` and `CONTENT` types). Otherwise, the parameter is ignored and can be set to `null`.

        Returns:

        The object of the passed type and containing the passed value.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `nType_` is invalid, not scalar, or DEFERRED or BEAN

    -   ### getTypedObjects

        public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getTypedObjects([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] values\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType\_, int\[\] detailedTypes\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Converts the given `String`s to objects of the given type.

        Parameters:

        `values_` - The strings representing the values.

        `nType_` - A constant representing the type to which each of the passed values should be converted. This type MUST be a scalar, i.e. not `XXX_ARRAY`.

        `detailedTypes_` - The types of the sub-objects, which are only useful if the underlying class is a `LocalObject` (i.e. for `PEOPLE` and `CONTENT` types). Otherwise, the parameter is ignorred and can be set to `null`.

        Returns:

        The objects of the passed type and containing the passed values.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `nType_` is invalid, not scalar, or DEFERRED or BEAN

    -   ### getTypedObjectsFromUiInput

        public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getTypedObjectsFromUiInput([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] values\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType\_, int\[\] detailedTypes\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

    -   ### getTypedObjectFromUiInput

        public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getTypedObjectFromUiInput([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") detailedType\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

    -   ### getNumericTypedObjectFromUiInput

        public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getNumericTypedObjectFromUiInput([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") nType\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

    -   ### putOrAppendValue

        public void putOrAppendValue([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newValAsString\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Do not use this, as it is meant ONLY for web services.

    -   ### putOrAppendTimestamp

        public void putOrAppendTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") ts\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Do not use this, as it is meant ONLY for web services.

    -   ### appendFullName

        public void appendFullName([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") sb\_)

        Deprecated.

        Appends the full name of this variable to the given buffer. The full name is the full name of the parent, if one exists, followed by a "." and the name of this variable.

        Parameters:

        `sb_` - The buffer to append the name to.

    -   ### findByName

        public static [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process") findByName([TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] variables\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        Finds the variable in the given array whose name corresponds to the given name. If no such variable can be found, returns `null`.

        Parameters:

        `variables_` - The collection of variables to search.

        `name_` - The name to look for.

        Returns:

        The variable in the collection whose name is a case-insensitive match for `name_`. If multiple values that meet this criterion exist (which they should not), the first match is returned. If no such value exists, or either parameter is `null`, `null` is returned.

    -   ### findAllWithKeyPrefix

        public static [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] findAllWithKeyPrefix([TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] variables\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        Finds all the variables in the given array whose name sarts with the passed `name_` string. If no such variable(s) can be found or if either of the passed arguments is `null`, returns `null`.

        Parameters:

        `variables_` - The collection of variables to search.

        `name_` - The name search string.

        Returns:

        The variable(s) in the collection whose name starts with `name_` (case-insensitive). If no such variable is found, or if either argument is `null`, `null` is returned.

    -   ### children

        public [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] children()

        Deprecated.

        If the type of the variable is BEAN, returns an array of ACPs (Activity Class Parameters) that are the fields of the bean. If the type of the variable is BEAN\_ARRAY, returns an array of the ACPs that are the cells in the array. Otherwise, returns `null`. Note that this is not a `getXXX` method, so as not to be confused with a property.

        Specified by:

        `children` in interface `com.appiancorp.core.expr.portable.PortableNamedTypedValueWithChildren`

        Returns:

        The typed variables representing the ACPs.

    -   ### integerToLong

        protected static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") integerToLong([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") i\_)

        Deprecated.

    -   ### getUnderlyingClass

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getUnderlyingClass([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_, boolean multiple\_)

        Deprecated.

        see `TypeClassResolver#getTypeClass(Long)`

        Determines the class that best represents the type of `>value`. For most types, this is `Long.class`, but for USER and STRING it is `String.class`, for DATE is `java.sql.Date.class`, for TIME is `java.sql.Time.class`, for DATETIME is `java.sql.Timestamp.class`, and for arrays it is the array type that corresponds to an array of the scalar type, such as `Long[].class`.

        Parameters:

        `type_` - The type to check, which is one of the type constants defined by this class.

        `multiple_` - Whether to get the class for the array version of the type.

        Returns:

        The underlying class for the given type.

    -   ### getTypeForClass

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getTypeForClass([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") class\_)

        Deprecated.

        Returns the `TypedVariable` type for a given class.

        Parameters:

        `class_` - A class.

        Returns:

        The `TypedVariable` type corresponding to the passed class, which is a `Long` version of one of the type constants defined by this class. If the passed class is unknown, returns `DEFERRED`.

    -   ### getDefaultValue

        public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getDefaultValue([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_, boolean multiple\_)

        Deprecated.

        Returns the default value for the given type. The back end does not allow `null` values, so clients should set value to this instead. For type STRING, the default is empty string, for LONGs it is 0, and for arrays, it is a 0-length array. For timestamps, the default is the current time. There is no default value for DEFERRED, BEAN and BEAN\_ARRAY, so this method returns `null` (which will cause an exception if you try to store it).

        Parameters:

        `type_` - A type, which is one of the type constants defined by this class.

        Returns:

        The default value for the passed type.

    -   ### getDefaultPvValue

        public static [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getDefaultPvValue([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_, boolean multiple\_)

        Deprecated.

        Returns the default value for a `ProcessVariable` of the given type. For most types this is `null`, unless `multiple_` is `true`, in which case the value is a 0-length array. For type LONG, the default value is 0, for DOUBLE it is 0.0, and for STRING it is "". There is no default value for DEFERRED, BEAN and BEAN\_ARRAY, so this method returns `null` (which will cause an exception if you try to store it).

        Parameters:

        `type_` - A type, which is one of the type constants defined by this class.

        `multiple_` - Whether or not the variable is an array.

        Returns:

        The default value for the passed type.

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Deprecated.

        If this typed variable is an Appian Type, adds its primary key to the cache.

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - The cache to add to.

    -   ### computeValueString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") computeValueString([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Computes the string representation of the value of this typed variable, which should be shown to the user. For most types, this is just the number. For arrays, it is a CSV (comma-separated values string), and for time types it is a nicely formatted date or time. If the type is a `String[]`, the CSV for the array does not quote the strings in the array; for example, an array of users whose usernames are payton.manning and brett.favre would result in the string "payton.manning,brett.favre" which can be fed to a picker as a value.

        Returns:

        The string representation of the value of the typed variable.

    -   ### computeValueStringForUiOutput

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") computeValueStringForUiOutput([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, boolean wrapInQuotes\_, boolean escapeXml\_)

        Deprecated.

    -   ### computeDisplayString

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") computeDisplayString([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Use either [`computeValueString(ServiceContext)`](#computeValueString\(com.appiancorp.services.ServiceContext\)), or [`computeValueStringForUiOutput(ServiceContext, boolean, boolean)`](#computeValueStringForUiOutput\(com.appiancorp.services.ServiceContext,boolean,boolean\)). This is the same as `#computeValueString()` except that if the type is a `String[]`, the CSV for the array does have quotes around the individual strings in the array; for example, an array of users whose usernames are payton.manning and brett.favre would result in the string ""payton.manning","brett.favre"".

        Returns:

        The string representation of the value of the typed variable.

    -   ### computeDisplayString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") computeDisplayString([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Deprecated.

        This is the same as `#computeDisplayString()`, except that the passed cache is used to get the display value (so that for an Appian Type, a user-friendly string is returned; for exmple, "Technology" instead of a number for a GROUP).

        Parameters:

        `cache_` - The cache to use to look up the typed variable value.

        Returns:

        The display value of the typed variable, as it is stored in the passed cache, or `null` if this typed variable is not an Appian Type.

    -   ### handleTimestampValue

        protected static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") handleTimestampValue([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Date.html "class or interface in java.util") value\_, int type\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

    -   ### handleTimestampValueForUiOutput

        protected static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") handleTimestampValueForUiOutput([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Date.html "class or interface in java.util") value\_, int type\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

    -   ### renderArrayAsCsv

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") renderArrayAsCsv([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] values\_, boolean wrapInQuotes\_, int type\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Use either [`renderArrayAsCsv(Object[], boolean, boolean, int, ServiceContext)`](#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\)) or [`renderArrayAsCsv(Object[], boolean, boolean, int, ServiceContext, char)`](#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,int\)). Transforms the given aray into a single string containing a comma-separated list of the array values.

        Parameters:

        `values_` - The array of values to convert to a CSV string.

        `isString_` - Whether the objects are `String`s, in which case they will be surrounded by quotes. The quotes that are used are XML-escaped (ie they are &quot;).

        `type_` - the type of the things being rendered, as one of the type contants such as DATE or LONG. Currently, the type is only used to determine the format with which to render timestamp values.

    -   ### renderArrayAsCsv

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") renderArrayAsCsv([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] values\_, boolean wrapInQuotes\_, int type\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, int multiple)

        Deprecated.

    -   ### renderArrayAsCsv

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") renderArrayAsCsv([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] values\_, boolean wrapInQuotes\_, boolean escapeXml\_, int type\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

        Transforms the given array into a single sting containing a comma-separated list of the array values.

        Parameters:

        `values_` - The array of values to convert to a CSV string.

        `wrapInQuotes_` - Whether or not the objects are `String`s, in which case they will be surrounded by quotes.

        `escapeXml_` - Whether to escape the quotes (which are only used if `isString_` is `true`). If `false`, the " symbol will be used to surround the strings, otherwise &quot; is used.

        `type_` - the type of the things being rendered, as one of the type contants such as DATE or LONG. Currently, the type is only used to determine the format with which to render timestamp values.

    -   ### renderArrayAsCsv

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") renderArrayAsCsv([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] values\_, boolean wrapInQuotes\_, boolean escapeXml\_, int type\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, int multiple)

        Deprecated.

    -   ### renderArrayAsString

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") renderArrayAsString([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] values\_, boolean wrapInQuotes\_, boolean escapeXml\_, int type\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") delim\_, int multiple)

        Deprecated.

    -   ### renderArrayAsCsvForUiOutput

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") renderArrayAsCsvForUiOutput([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] values\_, boolean wrapInQuotes\_, boolean escapeXml\_, int type\_, [ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Deprecated.

    -   ### getClassType

        public int getClassType()

        Deprecated.

        Gets the type classification of this typed variable.

        Returns:

        One of the `TypeDescriptor.CLASS_XXX` constants, or `CLASS_NONE` if the type is not recognized.

    -   ### getDataType

        public int getDataType()

        Deprecated.

        Gets the underlying datatype of this typed variable.

        Returns:

        One of the `TypeDescriptor.DATATYPE_XXX` constants, or `DATATYPE_UNKNOWN` if the type is not recognized.

    -   ### isMultipleSupportingType

        public boolean isMultipleSupportingType()

        Deprecated.

        Determines whether the type of this variable could support multiple values. Note that if the answer is yes (`true`), this does NOT mean that this _instance_ supports multiple values. If the type is not recognized, this method returns `true` by default.

    -   ### appendLocalObject

        protected static void appendLocalObject([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") sb\_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") local\_)

        Deprecated.

    -   ### appendLocalObject

        protected static void appendLocalObject([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") sb\_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") local\_)

        Deprecated.

    -   ### appendLocalObjects

        protected static void appendLocalObjects([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") sb\_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] locals\_)

        Deprecated.

    -   ### appendLocalObjects

        protected static void appendLocalObjects([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") sb\_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] locals\_)

        Deprecated.

    -   ### getTypeFromObjectTypeMappingType

        public static int getTypeFromObjectTypeMappingType(int otmType\_)

        Deprecated.

        Returns the `TypedVariable` type corresponding to a given `ObjectTypeMapping` type.

        Parameters:

        `otmType_` - The `ObjectTypeMapping` type, defined by one of the `TYPE_XXX` in the `ObjectTypeMapping` class.

        Returns:

        A `TypedVariable` type which is one of the type constants defined by this class.

    -   ### getObjectTypeMappingFromType

        public static int getObjectTypeMappingFromType(int tvType\_)

        Deprecated.

    -   ### externalize

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalize([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_, boolean multiple\_)

        Deprecated.

        Convert the data passed in to the externalized (String) format

        Parameters:

        `value_` - the value to convert

        `type_` - the [`TypedVariable`](TypedVariable.html "class in com.appiancorp.suiteapi.process") type to convert to

        `multiple_` - whether the type can hold multiple values

        Returns:

        the externalized String

    -   ### externalize

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalize([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") tv)

        Deprecated.

    -   ### internalize

        public static [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process") internalize([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") externalized)

        Deprecated.

        Interalizes the externalized String passed in

        Parameters:

        `externalized` - the externalized String

        Returns:

        a `TypedVariable` representation of the data encoded into the externalized String

    -   ### getInstanceClass

        public static [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getInstanceClass([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Deprecated.

    -   ### getMultiple

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public int getMultiple()

        Deprecated.

        To determine if a type is multiple or not, retrieve its [`Datatype`](../type/Datatype.html "class in com.appiancorp.suiteapi.type") or [`DatatypeProperties`](../type/DatatypeProperties.html "class in com.appiancorp.suiteapi.type") bean via [`TypeService`](../type/TypeService.html "interface in com.appiancorp.suiteapi.type") and use [`DatatypeProperties.isListType()`](../type/DatatypeProperties.html#isListType\(\)).

        Determines whether this instance supports multiple values. The value should be NEVER or ALWAYS.

        Returns:

        One of NEVER or ALWAYS.

    -   ### setMultiple

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setMultiple(int multiple)

        Deprecated.

        Set the [`instance type`](#setInstanceType\(java.lang.Long\)) instead. The instance type contains the multiple information within it.

        This sets instanceType as necessary. See [`getMultiple()`](#getMultiple\(\)).

    -   ### getType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

        Deprecated.

        use [`TypedValue.getInstanceType()`](../type/TypedValue.html#getInstanceType\(\))

        Return the type of the typed variable, which is one of the constants defined by this class.

    -   ### setType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type)

        Deprecated.

        use `TypedValue#setInstanceType()`

        This sets instanceType as necessary. See [`getType()`](#getType\(\)).

    -   ### setTypeMultiple

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setTypeMultiple([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, int multiple)

        Deprecated.

        Use [`setInstanceType(Long)`](#setInstanceType\(java.lang.Long\)) instead.

    -   ### setInstanceType

        public final void setInstanceType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType)

        Deprecated.

        Sets the instance type of the typed value. This is used in preference to type and multiple; it will set type and multiple as necessary for backward compatibility.

        Overrides:

        `[setInstanceType](../type/TypedValue.html#setInstanceType\(java.lang.Long\))` in class `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

        Parameters:

        `instanceType` - The instance type id, which corresponds to a `Datatype`. Built-in datatype ids are defined in `AppianType`