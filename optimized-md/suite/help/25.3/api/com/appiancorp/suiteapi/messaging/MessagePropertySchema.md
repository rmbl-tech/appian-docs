---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/MessagePropertySchema.html
original_path: api/com/appiancorp/suiteapi/messaging/MessagePropertySchema.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Class MessagePropertySchema

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.messaging.MessagePropertySchema

All Implemented Interfaces:

`[TypedVariableTypes](../process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")`, `[AppianType](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")`

* * *

public class MessagePropertySchema extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [TypedVariableTypes](../process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")

Represents a schema for a header property of a JMS message.

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.type.[AppianType](../type/AppianType.html "interface in com.appiancorp.suiteapi.type")

    `[ADMINISTERED_PROPERTY](../type/AppianType.html#ADMINISTERED_PROPERTY), [ALIAS](../type/AppianType.html#ALIAS), [APPLICATION](../type/AppianType.html#APPLICATION), [ARRAY](../type/AppianType.html#ARRAY), [ATTACHMENT](../type/AppianType.html#ATTACHMENT), [BEAN](../type/AppianType.html#BEAN), [BIG_RATIONAL](../type/AppianType.html#BIG_RATIONAL), [BINARY](../type/AppianType.html#BINARY), [BOOLEAN](../type/AppianType.html#BOOLEAN), [CHART_COLOR](../type/AppianType.html#CHART_COLOR), [COMMUNITY](../type/AppianType.html#COMMUNITY), [CONNECTED_SYSTEM](../type/AppianType.html#CONNECTED_SYSTEM), [CONTENT_COMMUNITY](../type/AppianType.html#CONTENT_COMMUNITY), [CONTENT_CONSTANT](../type/AppianType.html#CONTENT_CONSTANT), [CONTENT_CUSTOM](../type/AppianType.html#CONTENT_CUSTOM), [CONTENT_DOCUMENT](../type/AppianType.html#CONTENT_DOCUMENT), [CONTENT_FOLDER](../type/AppianType.html#CONTENT_FOLDER), [CONTENT_FREEFORM_RULE](../type/AppianType.html#CONTENT_FREEFORM_RULE), [CONTENT_ITEM](../type/AppianType.html#CONTENT_ITEM), [CONTENT_KNOWLEDGE_CENTER](../type/AppianType.html#CONTENT_KNOWLEDGE_CENTER), [CONTENT_RULE](../type/AppianType.html#CONTENT_RULE), [CURRENCY](../type/AppianType.html#CURRENCY), [DATA_SOURCE](../type/AppianType.html#DATA_SOURCE), [DATA_STORE](../type/AppianType.html#DATA_STORE), [DATA_STORE_ENTITY](../type/AppianType.html#DATA_STORE_ENTITY), [DATATYPE](../type/AppianType.html#DATATYPE), [DATE](../type/AppianType.html#DATE), [DECISION](../type/AppianType.html#DECISION), [DECISION_TABLE](../type/AppianType.html#DECISION_TABLE), [DECRYPTED_TEXT](../type/AppianType.html#DECRYPTED_TEXT), [DEFERRED](../type/AppianType.html#DEFERRED), [DICTIONARY](../type/AppianType.html#DICTIONARY), [DISCUSSION_THREAD](../type/AppianType.html#DISCUSSION_THREAD), [DOCUMENT](../type/AppianType.html#DOCUMENT), [DOCUMENT_OR_FOLDER](../type/AppianType.html#DOCUMENT_OR_FOLDER), [DOUBLE](../type/AppianType.html#DOUBLE), [EMAIL_ADDRESS](../type/AppianType.html#EMAIL_ADDRESS), [EMAIL_RECIPIENT](../type/AppianType.html#EMAIL_RECIPIENT), [EMBEDDED_SAIL_THEME_ID](../type/AppianType.html#EMBEDDED_SAIL_THEME_ID), [ENCRYPTED_TEXT](../type/AppianType.html#ENCRYPTED_TEXT), [EVENT](../type/AppianType.html#EVENT), [EXPRESSION](../type/AppianType.html#EXPRESSION), [EXTERNAL_REFERENCE](../type/AppianType.html#EXTERNAL_REFERENCE), [EXTERNAL_REFERENCE_WITH_INDICES](../type/AppianType.html#EXTERNAL_REFERENCE_WITH_INDICES), [EXTERNAL_SYSTEM_ID](../type/AppianType.html#EXTERNAL_SYSTEM_ID), [FIXED](../type/AppianType.html#FIXED), [FOLDER](../type/AppianType.html#FOLDER), [FORUM](../type/AppianType.html#FORUM), [GROUP](../type/AppianType.html#GROUP), [GROUP_TYPE](../type/AppianType.html#GROUP_TYPE), [ID_REFERENCE](../type/AppianType.html#ID_REFERENCE), [INITIAL_CUSTOM_TYPE](../type/AppianType.html#INITIAL_CUSTOM_TYPE), [INTEGER](../type/AppianType.html#INTEGER), [INTEGER_KEY](../type/AppianType.html#INTEGER_KEY), [INTERFACE](../type/AppianType.html#INTERFACE), [INTERVAL_D_S](../type/AppianType.html#INTERVAL_D_S), [KNOWLEDGE_CENTER](../type/AppianType.html#KNOWLEDGE_CENTER), [LINKS_CHANNEL_FOLDER](../type/AppianType.html#LINKS_CHANNEL_FOLDER), [LIST](../type/AppianType.html#LIST), [LIST_OF_ADMINISTERED_PROPERTY](../type/AppianType.html#LIST_OF_ADMINISTERED_PROPERTY), [LIST_OF_APPLICATION](../type/AppianType.html#LIST_OF_APPLICATION), [LIST_OF_ATTACHMENT](../type/AppianType.html#LIST_OF_ATTACHMENT), [LIST_OF_BEAN](../type/AppianType.html#LIST_OF_BEAN), [LIST_OF_BIG_RATIONAL](../type/AppianType.html#LIST_OF_BIG_RATIONAL), [LIST_OF_BINARY](../type/AppianType.html#LIST_OF_BINARY), [LIST_OF_BOOLEAN](../type/AppianType.html#LIST_OF_BOOLEAN), [LIST_OF_CHART_COLOR](../type/AppianType.html#LIST_OF_CHART_COLOR), [LIST_OF_COMMUNITY](../type/AppianType.html#LIST_OF_COMMUNITY), [LIST_OF_CONNECTED_SYSTEM](../type/AppianType.html#LIST_OF_CONNECTED_SYSTEM), [LIST_OF_CONTENT_COMMUNITY](../type/AppianType.html#LIST_OF_CONTENT_COMMUNITY), [LIST_OF_CONTENT_CONSTANT](../type/AppianType.html#LIST_OF_CONTENT_CONSTANT), [LIST_OF_CONTENT_CUSTOM](../type/AppianType.html#LIST_OF_CONTENT_CUSTOM), [LIST_OF_CONTENT_DOCUMENT](../type/AppianType.html#LIST_OF_CONTENT_DOCUMENT), [LIST_OF_CONTENT_FOLDER](../type/AppianType.html#LIST_OF_CONTENT_FOLDER), [LIST_OF_CONTENT_FREEFORM_RULE](../type/AppianType.html#LIST_OF_CONTENT_FREEFORM_RULE), [LIST_OF_CONTENT_ITEM](../type/AppianType.html#LIST_OF_CONTENT_ITEM), [LIST_OF_CONTENT_KNOWLEDGE_CENTER](../type/AppianType.html#LIST_OF_CONTENT_KNOWLEDGE_CENTER), [LIST_OF_CONTENT_RULE](../type/AppianType.html#LIST_OF_CONTENT_RULE), [LIST_OF_CURRENCY](../type/AppianType.html#LIST_OF_CURRENCY), [LIST_OF_DATA_SOURCE](../type/AppianType.html#LIST_OF_DATA_SOURCE), [LIST_OF_DATA_STORE](../type/AppianType.html#LIST_OF_DATA_STORE), [LIST_OF_DATA_STORE_ENTITY](../type/AppianType.html#LIST_OF_DATA_STORE_ENTITY), [LIST_OF_DATATYPE](../type/AppianType.html#LIST_OF_DATATYPE), [LIST_OF_DATE](../type/AppianType.html#LIST_OF_DATE), [LIST_OF_DECISION](../type/AppianType.html#LIST_OF_DECISION), [LIST_OF_DECISION_TABLE](../type/AppianType.html#LIST_OF_DECISION_TABLE), [LIST_OF_DECRYPTED_TEXT](../type/AppianType.html#LIST_OF_DECRYPTED_TEXT), [LIST_OF_DEFERRED](../type/AppianType.html#LIST_OF_DEFERRED), [LIST_OF_DICTIONARY](../type/AppianType.html#LIST_OF_DICTIONARY), [LIST_OF_DISCUSSION_THREAD](../type/AppianType.html#LIST_OF_DISCUSSION_THREAD), [LIST_OF_DOCUMENT](../type/AppianType.html#LIST_OF_DOCUMENT), [LIST_OF_DOCUMENT_OR_FOLDER](../type/AppianType.html#LIST_OF_DOCUMENT_OR_FOLDER), [LIST_OF_DOUBLE](../type/AppianType.html#LIST_OF_DOUBLE), [LIST_OF_EMAIL_ADDRESS](../type/AppianType.html#LIST_OF_EMAIL_ADDRESS), [LIST_OF_EMAIL_RECIPIENT](../type/AppianType.html#LIST_OF_EMAIL_RECIPIENT), [LIST_OF_EMBEDDED_SAIL_THEME_ID](../type/AppianType.html#LIST_OF_EMBEDDED_SAIL_THEME_ID), [LIST_OF_ENCRYPTED_TEXT](../type/AppianType.html#LIST_OF_ENCRYPTED_TEXT), [LIST_OF_EVENT](../type/AppianType.html#LIST_OF_EVENT), [LIST_OF_EXPRESSION](../type/AppianType.html#LIST_OF_EXPRESSION), [LIST_OF_EXTERNAL_REFERENCE](../type/AppianType.html#LIST_OF_EXTERNAL_REFERENCE), [LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES](../type/AppianType.html#LIST_OF_EXTERNAL_REFERENCE_WITH_INDICES), [LIST_OF_EXTERNAL_SYSTEM_ID](../type/AppianType.html#LIST_OF_EXTERNAL_SYSTEM_ID), [LIST_OF_FIXED](../type/AppianType.html#LIST_OF_FIXED), [LIST_OF_FOLDER](../type/AppianType.html#LIST_OF_FOLDER), [LIST_OF_FORUM](../type/AppianType.html#LIST_OF_FORUM), [LIST_OF_GROUP](../type/AppianType.html#LIST_OF_GROUP), [LIST_OF_GROUP_TYPE](../type/AppianType.html#LIST_OF_GROUP_TYPE), [LIST_OF_ID_REFERENCE](../type/AppianType.html#LIST_OF_ID_REFERENCE), [LIST_OF_INTEGER](../type/AppianType.html#LIST_OF_INTEGER), [LIST_OF_INTEGER_KEY](../type/AppianType.html#LIST_OF_INTEGER_KEY), [LIST_OF_INTERFACE](../type/AppianType.html#LIST_OF_INTERFACE), [LIST_OF_INTERVAL_D_S](../type/AppianType.html#LIST_OF_INTERVAL_D_S), [LIST_OF_KNOWLEDGE_CENTER](../type/AppianType.html#LIST_OF_KNOWLEDGE_CENTER), [LIST_OF_LINKS_CHANNEL_FOLDER](../type/AppianType.html#LIST_OF_LINKS_CHANNEL_FOLDER), [LIST_OF_MAP](../type/AppianType.html#LIST_OF_MAP), [LIST_OF_MESSAGE](../type/AppianType.html#LIST_OF_MESSAGE), [LIST_OF_NOTE](../type/AppianType.html#LIST_OF_NOTE), [LIST_OF_NULL](../type/AppianType.html#LIST_OF_NULL), [LIST_OF_OUTBOUND_INTEGRATION](../type/AppianType.html#LIST_OF_OUTBOUND_INTEGRATION), [LIST_OF_PAGE](../type/AppianType.html#LIST_OF_PAGE), [LIST_OF_PASSWORD](../type/AppianType.html#LIST_OF_PASSWORD), [LIST_OF_PORTLET](../type/AppianType.html#LIST_OF_PORTLET), [LIST_OF_PROCESS](../type/AppianType.html#LIST_OF_PROCESS), [LIST_OF_PROCESS_ERROR](../type/AppianType.html#LIST_OF_PROCESS_ERROR), [LIST_OF_PROCESS_MODEL](../type/AppianType.html#LIST_OF_PROCESS_MODEL), [LIST_OF_PROCESS_MODEL_FOLDER](../type/AppianType.html#LIST_OF_PROCESS_MODEL_FOLDER), [LIST_OF_QUERY_RULE](../type/AppianType.html#LIST_OF_QUERY_RULE), [LIST_OF_QUICK_APP](../type/AppianType.html#LIST_OF_QUICK_APP), [LIST_OF_RANGE](../type/AppianType.html#LIST_OF_RANGE), [LIST_OF_RECORD](../type/AppianType.html#LIST_OF_RECORD), [LIST_OF_RECORD_REFERENCE](../type/AppianType.html#LIST_OF_RECORD_REFERENCE), [LIST_OF_RECORD_TYPE_ID](../type/AppianType.html#LIST_OF_RECORD_TYPE_ID), [LIST_OF_RICH_TEXT](../type/AppianType.html#LIST_OF_RICH_TEXT), [LIST_OF_RULE_FOLDER](../type/AppianType.html#LIST_OF_RULE_FOLDER), [LIST_OF_SAFE_URI](../type/AppianType.html#LIST_OF_SAFE_URI), [LIST_OF_SITE](../type/AppianType.html#LIST_OF_SITE), [LIST_OF_STRING](../type/AppianType.html#LIST_OF_STRING), [LIST_OF_STRING_KEY](../type/AppianType.html#LIST_OF_STRING_KEY), [LIST_OF_TASK](../type/AppianType.html#LIST_OF_TASK), [LIST_OF_TASK_REPORT](../type/AppianType.html#LIST_OF_TASK_REPORT), [LIST_OF_TEMPO_FEED](../type/AppianType.html#LIST_OF_TEMPO_FEED), [LIST_OF_TEMPO_REPORT](../type/AppianType.html#LIST_OF_TEMPO_REPORT), [LIST_OF_TIME](../type/AppianType.html#LIST_OF_TIME), [LIST_OF_TIMESTAMP](../type/AppianType.html#LIST_OF_TIMESTAMP), [LIST_OF_TYPE](../type/AppianType.html#LIST_OF_TYPE), [LIST_OF_UNIFORM_FOLDER](../type/AppianType.html#LIST_OF_UNIFORM_FOLDER), [LIST_OF_UNION](../type/AppianType.html#LIST_OF_UNION), [LIST_OF_USER_OR_GROUP](../type/AppianType.html#LIST_OF_USER_OR_GROUP), [LIST_OF_USERNAME](../type/AppianType.html#LIST_OF_USERNAME), [LIST_OF_VARIANT](../type/AppianType.html#LIST_OF_VARIANT), [LIST_OF_WEB_API](../type/AppianType.html#LIST_OF_WEB_API), [MAP](../type/AppianType.html#MAP), [MESSAGE](../type/AppianType.html#MESSAGE), [NOTE](../type/AppianType.html#NOTE), [NULL](../type/AppianType.html#NULL), [OUTBOUND_INTEGRATION](../type/AppianType.html#OUTBOUND_INTEGRATION), [PAGE](../type/AppianType.html#PAGE), [PASSWORD](../type/AppianType.html#PASSWORD), [PORTLET](../type/AppianType.html#PORTLET), [PROCESS](../type/AppianType.html#PROCESS), [PROCESS_ERROR](../type/AppianType.html#PROCESS_ERROR), [PROCESS_MODEL](../type/AppianType.html#PROCESS_MODEL), [PROCESS_MODEL_FOLDER](../type/AppianType.html#PROCESS_MODEL_FOLDER), [QUERY_RULE](../type/AppianType.html#QUERY_RULE), [QUICK_APP](../type/AppianType.html#QUICK_APP), [RANGE](../type/AppianType.html#RANGE), [RECORD](../type/AppianType.html#RECORD), [RECORD_REFERENCE](../type/AppianType.html#RECORD_REFERENCE), [RECORD_TYPE_ID](../type/AppianType.html#RECORD_TYPE_ID), [RICH_TEXT](../type/AppianType.html#RICH_TEXT), [RULE_FOLDER](../type/AppianType.html#RULE_FOLDER), [SAFE_URI](../type/AppianType.html#SAFE_URI), [SITE](../type/AppianType.html#SITE), [STRING](../type/AppianType.html#STRING), [STRING_KEY](../type/AppianType.html#STRING_KEY), [TASK](../type/AppianType.html#TASK), [TASK_REPORT](../type/AppianType.html#TASK_REPORT), [TEMPO_FEED](../type/AppianType.html#TEMPO_FEED), [TEMPO_REPORT](../type/AppianType.html#TEMPO_REPORT), [TIME](../type/AppianType.html#TIME), [TIMESTAMP](../type/AppianType.html#TIMESTAMP), [TYPE](../type/AppianType.html#TYPE), [UI_CONTAINER](../type/AppianType.html#UI_CONTAINER), [UNIFORM_FOLDER](../type/AppianType.html#UNIFORM_FOLDER), [UNION](../type/AppianType.html#UNION), [USER_OR_GROUP](../type/AppianType.html#USER_OR_GROUP), [USERNAME](../type/AppianType.html#USERNAME), [VARIANT](../type/AppianType.html#VARIANT), [WEB_API](../type/AppianType.html#WEB_API)`

    ### Fields inherited from interface com.appiancorp.suiteapi.process.[TypedVariableTypes](../process/TypedVariableTypes.html "interface in com.appiancorp.suiteapi.process")

    `[CONSTANT](../process/TypedVariableTypes.html#CONSTANT), [CONTENT](../process/TypedVariableTypes.html#CONTENT), [CUSTOM_CONTENT_ITEM](../process/TypedVariableTypes.html#CUSTOM_CONTENT_ITEM), [DATETIME](../process/TypedVariableTypes.html#DATETIME), [DURATION](../process/TypedVariableTypes.html#DURATION), [FREEFORM_RULE](../process/TypedVariableTypes.html#FREEFORM_RULE), [LONG](../process/TypedVariableTypes.html#LONG), [PEOPLE](../process/TypedVariableTypes.html#PEOPLE), [PROCESSMODEL_FOLDER](../process/TypedVariableTypes.html#PROCESSMODEL_FOLDER), [RULE](../process/TypedVariableTypes.html#RULE), [TEMPLATE](../process/TypedVariableTypes.html#TEMPLATE), [USER](../process/TypedVariableTypes.html#USER)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[MessagePropertySchema](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the name (key).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Gets the data type.

    `boolean`

    `[isInputFromModeler](#isInputFromModeler\(\))()`

    Gets whether this parameter can be input from the Modeler (whether it shows up in the Message Properties Grid on the Data tab of the Send Messages dialog).

    `boolean`

    `[isMultiple](#isMultiple\(\))()`

    Gets whether the parameters created from this schema can contain multiple values.

    `boolean`

    `[isRequired](#isRequired\(\))()`

    Gets whether the message property is required.

    `boolean`

    `[isVisibleOnReceiveMessage](#isVisibleOnReceiveMessage\(\))()`

    Returns whether the message property is visible on the Receive Message Node in modeler.

    `void`

    `[setInputFromModeler](#setInputFromModeler\(boolean\))(boolean inputFromModeler)`

    Sets whether this parameter can be input from the modeler.

    `void`

    `[setMultiple](#setMultiple\(boolean\))(boolean multiple)`

    Sets whether the parameters created from this schema can contain multiple values.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Sets the name (key).

    `void`

    `[setRequired](#setRequired\(boolean\))(boolean required)`

    Sets whether the message property is required.

    `void`

    `[setType](#setType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type)`

    Sets the data type.

    `void`

    `[setVisibleOnReceiveMessage](#setVisibleOnReceiveMessage\(boolean\))(boolean visibleOnReceiveMessage)`

    Sets the message property is visible on the ReceiveMessage Node in modeler.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### MessagePropertySchema

        public MessagePropertySchema()

-   ## Method Details

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the name (key).

        Returns:

        the name

        See Also:

        -   [`setName(String)`](#setName\(java.lang.String\))

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Sets the name (key).

        Parameters:

        `name` - the name

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### isInputFromModeler

        public boolean isInputFromModeler()

        Gets whether this parameter can be input from the Modeler (whether it shows up in the Message Properties Grid on the Data tab of the Send Messages dialog).

        Returns:

        whether the parameter can be input from the Modeler

        See Also:

        -   [`setName(String)`](#setName\(java.lang.String\))

    -   ### setInputFromModeler

        public void setInputFromModeler(boolean inputFromModeler)

        Sets whether this parameter can be input from the modeler.

        Parameters:

        `inputFromModeler` - whether this parameter can be input from the Modeler

        See Also:

        -   [`isInputFromModeler()`](#isInputFromModeler\(\))

    -   ### isMultiple

        public boolean isMultiple()

        Gets whether the parameters created from this schema can contain multiple values.

        Returns:

        whether parameters created from this schema can contain multiple values

        See Also:

        -   [`setMultiple(boolean)`](#setMultiple\(boolean\))

    -   ### setMultiple

        public void setMultiple(boolean multiple)

        Sets whether the parameters created from this schema can contain multiple values.

        Parameters:

        `multiple` - whether parameters created from this schema can contain multiple values

        See Also:

        -   [`isMultiple()`](#isMultiple\(\))

    -   ### isRequired

        public boolean isRequired()

        Gets whether the message property is required.

        Returns:

        whether the message property is required

        See Also:

        -   [`setRequired(boolean)`](#setRequired\(boolean\))

    -   ### setRequired

        public void setRequired(boolean required)

        Sets whether the message property is required.

        Parameters:

        `required` - whether the message property is required

        See Also:

        -   [`isRequired()`](#isRequired\(\))

    -   ### getType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

        Gets the data type.

        Returns:

        the data type

        See Also:

        -   [`setType(Long)`](#setType\(java.lang.Long\))

    -   ### setType

        public void setType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type)

        Sets the data type.

        Parameters:

        `type` - the data type

        See Also:

        -   [`getType()`](#getType\(\))

    -   ### isVisibleOnReceiveMessage

        public boolean isVisibleOnReceiveMessage()

        Returns whether the message property is visible on the Receive Message Node in modeler.

        Returns:

        whether the message property should be displayed.

        See Also:

        -   [`setVisibleOnReceiveMessage(boolean)`](#setVisibleOnReceiveMessage\(boolean\))

    -   ### setVisibleOnReceiveMessage

        public void setVisibleOnReceiveMessage(boolean visibleOnReceiveMessage)

        Sets the message property is visible on the ReceiveMessage Node in modeler.

        Parameters:

        `visibleOnReceiveMessage` - whether the message property is visible.

        See Also:

        -   [`isVisibleOnReceiveMessage()`](#isVisibleOnReceiveMessage\(\))