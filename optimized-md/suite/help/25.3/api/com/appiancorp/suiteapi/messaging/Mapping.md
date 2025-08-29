---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/Mapping.html
original_path: api/com/appiancorp/suiteapi/messaging/Mapping.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Class Mapping

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.type.TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")

[com.appiancorp.suiteapi.type.NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

[com.appiancorp.suiteapi.process.TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.messaging.Mapping

All Implemented Interfaces:

`com.appiancorp.core.expr.portable.PortableNamedTypedValue`, `com.appiancorp.core.expr.portable.PortableNamedTypedValueWithChildren`, `com.appiancorp.core.expr.portable.PortableTypedValue`, `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[TypedVariableTypes](../process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")`, `[AppianType](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")`, `com.appiancorp.type.ExpressionableNamedTypedValue`, `com.appiancorp.type.HasTypeRef`, `com.appiancorp.type.NamedType`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class Mapping extends [TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process") implements [TypedVariableTypes](../process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process"), [AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process"), [DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.type.ExpressionableNamedTypedValue

Represents a name-value mapping. Used for JMS-style message properties.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.messaging.Mapping)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

    `[classType$TRANSIENT](../process/TypedVariable.html#classType$TRANSIENT), [dataType$TRANSIENT](../process/TypedVariable.html#dataType$TRANSIENT), [detailedTypes$TRANSIENT](../process/TypedVariable.html#detailedTypes$TRANSIENT), [displayName$TRANSIENT](../process/TypedVariable.html#displayName$TRANSIENT), [LOCAL_COMMUNITY](../process/TypedVariable.html#LOCAL_COMMUNITY), [LOCAL_DOCUMENT](../process/TypedVariable.html#LOCAL_DOCUMENT), [LOCAL_EMAIL_ADDRESS](../process/TypedVariable.html#LOCAL_EMAIL_ADDRESS), [LOCAL_FOLDER](../process/TypedVariable.html#LOCAL_FOLDER), [LOCAL_FORUM](../process/TypedVariable.html#LOCAL_FORUM), [LOCAL_GROUP](../process/TypedVariable.html#LOCAL_GROUP), [LOCAL_KC](../process/TypedVariable.html#LOCAL_KC), [LOCAL_MESSAGE](../process/TypedVariable.html#LOCAL_MESSAGE), [LOCAL_NODE](../process/TypedVariable.html#LOCAL_NODE), [LOCAL_PAGE](../process/TypedVariable.html#LOCAL_PAGE), [LOCAL_PM](../process/TypedVariable.html#LOCAL_PM), [LOCAL_PORTLET](../process/TypedVariable.html#LOCAL_PORTLET), [LOCAL_PROCESS](../process/TypedVariable.html#LOCAL_PROCESS), [LOCAL_TASK](../process/TypedVariable.html#LOCAL_TASK), [LOCAL_TOPIC](../process/TypedVariable.html#LOCAL_TOPIC), [LOCAL_USER](../process/TypedVariable.html#LOCAL_USER), [MAX_TYPE](../process/TypedVariable.html#MAX_TYPE), [multipleSupportingType$TRANSIENT](../process/TypedVariable.html#multipleSupportingType$TRANSIENT)`

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

    ### Fields inherited from interface com.appiancorp.suiteapi.process.[TypedVariableTypes](../process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")

    `[CONSTANT](../process/TypedVariableTypes.html#CONSTANT), [CONTENT](../process/TypedVariableTypes.html#CONTENT), [CUSTOM_CONTENT_ITEM](../process/TypedVariableTypes.html#CUSTOM_CONTENT_ITEM), [DATETIME](../process/TypedVariableTypes.html#DATETIME), [DURATION](../process/TypedVariableTypes.html#DURATION), [FREEFORM_RULE](../process/TypedVariableTypes.html#FREEFORM_RULE), [LONG](../process/TypedVariableTypes.html#LONG), [PEOPLE](../process/TypedVariableTypes.html#PEOPLE), [PROCESSMODEL_FOLDER](../process/TypedVariableTypes.html#PROCESSMODEL_FOLDER), [RULE](../process/TypedVariableTypes.html#RULE), [TEMPLATE](../process/TypedVariableTypes.html#TEMPLATE), [USER](../process/TypedVariableTypes.html#USER)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Mapping](#%3Cinit%3E\(\))()`

    `[Mapping](#%3Cinit%3E\(com.appiancorp.suiteapi.type.NamedTypedValue\))([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") ntv_)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Adds the primary keys of any Appian-typed objects that are used by the mapping of this node to the given cache.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExpression](#getExpression\(\))()`

    Gets the expression for this property.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `boolean`

    `[isMultiple](#isMultiple\(\))()`

    Deprecated.

    `void`

    `[setExpression](#setExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression_)`

    Sets the expression for this property.

    `void`

    `[setMultiple](#setMultiple\(boolean\))(boolean multiple_)`

    Deprecated.

    ### Methods inherited from class com.appiancorp.suiteapi.process.[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")

    `[appendFullName](../process/TypedVariable.html#appendFullName\(java.lang.StringBuffer\)), [appendLocalObject](../process/TypedVariable.html#appendLocalObject\(java.lang.StringBuffer,com.appiancorp.suiteapi.common.LocalObject\)), [appendLocalObject](../process/TypedVariable.html#appendLocalObject\(java.lang.StringBuilder,com.appiancorp.suiteapi.common.LocalObject\)), [appendLocalObjects](../process/TypedVariable.html#appendLocalObjects\(java.lang.StringBuffer,com.appiancorp.suiteapi.common.LocalObject%5B%5D\)), [appendLocalObjects](../process/TypedVariable.html#appendLocalObjects\(java.lang.StringBuilder,com.appiancorp.suiteapi.common.LocalObject%5B%5D\)), [children](../process/TypedVariable.html#children\(\)), [computeDisplayString](../process/TypedVariable.html#computeDisplayString\(com.appiancorp.services.ServiceContext\)), [computeDisplayString](../process/TypedVariable.html#computeDisplayString\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [computeValueString](../process/TypedVariable.html#computeValueString\(com.appiancorp.services.ServiceContext\)), [computeValueStringForUiOutput](../process/TypedVariable.html#computeValueStringForUiOutput\(com.appiancorp.services.ServiceContext,boolean,boolean\)), [convertFromLocalObjectType](../process/TypedVariable.html#convertFromLocalObjectType\(int\)), [externalize](../process/TypedVariable.html#externalize\(com.appiancorp.suiteapi.type.TypedValue\)), [externalize](../process/TypedVariable.html#externalize\(java.lang.Object,java.lang.Long,boolean\)), [findAllWithKeyPrefix](../process/TypedVariable.html#findAllWithKeyPrefix\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D,java.lang.String\)), [findByName](../process/TypedVariable.html#findByName\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D,java.lang.String\)), [getClassType](../process/TypedVariable.html#getClassType\(\)), [getDataType](../process/TypedVariable.html#getDataType\(\)), [getDefaultPvValue](../process/TypedVariable.html#getDefaultPvValue\(java.lang.Long,boolean\)), [getDefaultValue](../process/TypedVariable.html#getDefaultValue\(java.lang.Long,boolean\)), [getDetailedTypes](../process/TypedVariable.html#getDetailedTypes\(\)), [getInstanceClass](../process/TypedVariable.html#getInstanceClass\(java.lang.Long\)), [getKey](../process/TypedVariable.html#getKey\(\)), [getMultiple](../process/TypedVariable.html#getMultiple\(\)), [getNumericTypedObjectFromUiInput](../process/TypedVariable.html#getNumericTypedObjectFromUiInput\(java.lang.String,java.lang.Long,com.appiancorp.services.ServiceContext\)), [getObjectTypeMappingFromType](../process/TypedVariable.html#getObjectTypeMappingFromType\(int\)), [getScalarTypedObject](../process/TypedVariable.html#getScalarTypedObject\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.asl3.servicefw.connect.ServiceContext\)), [getScalarTypedObject](../process/TypedVariable.html#getScalarTypedObject\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.services.ServiceContext\)), [getType](../process/TypedVariable.html#getType\(\)), [getTypedObjectFromUiInput](../process/TypedVariable.html#getTypedObjectFromUiInput\(java.lang.String,java.lang.Long,java.lang.Long,com.appiancorp.services.ServiceContext\)), [getTypedObjects](../process/TypedVariable.html#getTypedObjects\(java.lang.String%5B%5D,java.lang.Long,int%5B%5D,com.appiancorp.services.ServiceContext\)), [getTypedObjectsFromUiInput](../process/TypedVariable.html#getTypedObjectsFromUiInput\(java.lang.String%5B%5D,java.lang.Long,int%5B%5D,com.appiancorp.services.ServiceContext\)), [getTypedVariables](../process/TypedVariable.html#getTypedVariables\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\)), [getTypeForClass](../process/TypedVariable.html#getTypeForClass\(java.lang.Class\)), [getTypeFromObjectTypeMappingType](../process/TypedVariable.html#getTypeFromObjectTypeMappingType\(int\)), [getUnderlyingClass](../process/TypedVariable.html#getUnderlyingClass\(java.lang.Long,boolean\)), [getXMLWrapperEnd](../process/TypedVariable.html#getXMLWrapperEnd\(\)), [getXMLWrapperName](../process/TypedVariable.html#getXMLWrapperName\(\)), [getXMLWrapperStart](../process/TypedVariable.html#getXMLWrapperStart\(\)), [handleTimestampValue](../process/TypedVariable.html#handleTimestampValue\(java.util.Date,int,com.appiancorp.services.ServiceContext\)), [handleTimestampValueForUiOutput](../process/TypedVariable.html#handleTimestampValueForUiOutput\(java.util.Date,int,com.appiancorp.services.ServiceContext\)), [integerToLong](../process/TypedVariable.html#integerToLong\(java.lang.Integer\)), [internalize](../process/TypedVariable.html#internalize\(java.lang.String\)), [isAppianType](../process/TypedVariable.html#isAppianType\(int\)), [isMultipleSupportingType](../process/TypedVariable.html#isMultipleSupportingType\(\)), [isNotDeferred](../process/TypedVariable.html#isNotDeferred\(int\)), [isValidType](../process/TypedVariable.html#isValidType\(int\)), [putOrAppendTimestamp](../process/TypedVariable.html#putOrAppendTimestamp\(java.sql.Timestamp,com.appiancorp.services.ServiceContext\)), [putOrAppendValue](../process/TypedVariable.html#putOrAppendValue\(java.lang.String,com.appiancorp.services.ServiceContext\)), [renderArrayAsCsv](../process/TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\)), [renderArrayAsCsv](../process/TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,int\)), [renderArrayAsCsv](../process/TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,int,com.appiancorp.services.ServiceContext\)), [renderArrayAsCsv](../process/TypedVariable.html#renderArrayAsCsv\(java.lang.Object%5B%5D,boolean,int,com.appiancorp.services.ServiceContext,int\)), [renderArrayAsCsvForUiOutput](../process/TypedVariable.html#renderArrayAsCsvForUiOutput\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext\)), [renderArrayAsString](../process/TypedVariable.html#renderArrayAsString\(java.lang.Object%5B%5D,boolean,boolean,int,com.appiancorp.services.ServiceContext,java.lang.String,int\)), [setDetailedTypes](../process/TypedVariable.html#setDetailedTypes\(int%5B%5D\)), [setInstanceType](../process/TypedVariable.html#setInstanceType\(java.lang.Long\)), [setKey](../process/TypedVariable.html#setKey\(java.lang.String\)), [setMultiple](../process/TypedVariable.html#setMultiple\(int\)), [setType](../process/TypedVariable.html#setType\(java.lang.Long\)), [setTypeMultiple](../process/TypedVariable.html#setTypeMultiple\(java.lang.Long,int\)), [setValue](../process/TypedVariable.html#setValue\(java.lang.Object\)), [toString](../process/TypedVariable.html#toString\(java.lang.String%5B%5D\)), [toXML](../process/TypedVariable.html#toXML\(\)), [toXML](../process/TypedVariable.html#toXML\(java.lang.StringBuilder\))`

    ### Methods inherited from class com.appiancorp.suiteapi.type.[NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")

    `[equals](../type/NamedTypedValue.html#equals\(java.lang.Object\)), [findNtvByName](../type/NamedTypedValue.html#findNtvByName\(T%5B%5D,java.lang.String\)), [findNtvIndexByName](../type/NamedTypedValue.html#findNtvIndexByName\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D,java.lang.String\)), [getName](../type/NamedTypedValue.html#getName\(\)), [getNtvNames](../type/NamedTypedValue.html#getNtvNames\(java.util.Collection\)), [hashCode](../type/NamedTypedValue.html#hashCode\(\)), [setName](../type/NamedTypedValue.html#setName\(java.lang.String\)), [toString](../type/NamedTypedValue.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.type.[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")

    `[clearPasswordOnTransport](../type/TypedValue.html#clearPasswordOnTransport\(\)), [clone](../type/TypedValue.html#clone\(\)), [getInstanceType](../type/TypedValue.html#getInstanceType\(\)), [getInstanceTypeIds](../type/TypedValue.html#getInstanceTypeIds\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\)), [getTypeRef](../type/TypedValue.html#getTypeRef\(\)), [getValue](../type/TypedValue.html#getValue\(\)), [setTypeRef](../type/TypedValue.html#setTypeRef\(com.appiancorp.type.TypeRef\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

    `[clone](../common/DeepCloneable.html#clone\(\))`

    ### Methods inherited from interface com.appiancorp.type.ExpressionableNamedTypedValue

    `getInstanceType, getValue, setInstanceType, setValue`

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

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### Mapping

        public Mapping()

    -   ### Mapping

        public Mapping([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type") ntv\_)

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[getHiddenAttributes](../process/TypedVariable.html#getHiddenAttributes\(\))` in class `[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")`

        Returns:

        the set of hidden attributes

    -   ### isMultiple

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public boolean isMultiple()

        Deprecated.

        Gets whether this property can contain multiple values.

        Returns:

        whether the property can contain multiple values

        See Also:

        -   [`setMultiple(boolean)`](#setMultiple\(boolean\))

    -   ### setMultiple

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setMultiple(boolean multiple\_)

        Deprecated.

        Sets whether this property can contain multiple values.

        Parameters:

        `multiple_` - whether the property can contain multiple values

        See Also:

        -   [`isMultiple()`](#isMultiple\(\))

    -   ### getExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExpression()

        Gets the expression for this property. If the expression is set (i.e., is not `null` nor the empty string), the expression will be used instead of the value.

        Specified by:

        `getExpression` in interface `com.appiancorp.type.ExpressionableNamedTypedValue`

        Returns:

        the expression

        See Also:

        -   [`setExpression(String)`](#setExpression\(java.lang.String\))

    -   ### setExpression

        public void setExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression\_)

        Sets the expression for this property.

        Specified by:

        `setExpression` in interface `com.appiancorp.type.ExpressionableNamedTypedValue`

        Parameters:

        `expression_` - the expression

        See Also:

        -   [`getExpression()`](#getExpression\(\))

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Adds the primary keys of any Appian-typed objects that are used by the mapping of this node to the given cache.

        Specified by:

        `[fillInAppianTypes](../process/AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Overrides:

        `[fillInAppianTypes](../process/TypedVariable.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in class `[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - the cache that will hold the values