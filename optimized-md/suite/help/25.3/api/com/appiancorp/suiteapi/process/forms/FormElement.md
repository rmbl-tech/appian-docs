---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/forms/FormElement.html
original_path: api/com/appiancorp/suiteapi/process/forms/FormElement.html
version: "25.3"
title: "Class FormElement"
page_id: "api/com/appiancorp/suiteapi/process/forms/FormElement"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.forms](package-summary.html)

# Class FormElement

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.forms.FormElement

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class FormElement extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.forms.FormElement)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[FormElement.FormElementType](FormElement.FormElementType.html "class in com.appiancorp.suiteapi.process.forms")`

    `static interface` 

    `[FormElement.InferFormElementCallback](FormElement.InferFormElementCallback.html "interface in com.appiancorp.suiteapi.process.forms")`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[ELEMENT_TYPE_BUTTON](#ELEMENT_TYPE_BUTTON)`

    Constant for element type Button

    `static final int`

    `[ELEMENT_TYPE_CHECKBOX](#ELEMENT_TYPE_CHECKBOX)`

    Constant for element type Checkbox

    `static final int`

    `[ELEMENT_TYPE_COMMUNITY_PICKER](#ELEMENT_TYPE_COMMUNITY_PICKER)`

    Constant for element type Community Picker

    `static final int`

    `[ELEMENT_TYPE_CONTENT_PICKER](#ELEMENT_TYPE_CONTENT_PICKER)`

    Constant for element type Content Picker

    `static final int`

    `[ELEMENT_TYPE_DATE](#ELEMENT_TYPE_DATE)`

    Constant for element type Date

    `static final int`

    `[ELEMENT_TYPE_DATETIME](#ELEMENT_TYPE_DATETIME)`

    Constant for element type Date Time

    `static final int`

    `[ELEMENT_TYPE_DOC_PICKER](#ELEMENT_TYPE_DOC_PICKER)`

    Constant for element type Document Picker

    `static final int`

    `[ELEMENT_TYPE_DOUBLE](#ELEMENT_TYPE_DOUBLE)`

    Constant for element type Double

    `static final int`

    `[ELEMENT_TYPE_DROPDOWN](#ELEMENT_TYPE_DROPDOWN)`

    Constant for element type Dropdown

    `static final int`

    `[ELEMENT_TYPE_EMAIL_ADDRESS](#ELEMENT_TYPE_EMAIL_ADDRESS)`

    Constant for element of type Email Recipient

    `static final int`

    `[ELEMENT_TYPE_EMAIL_RECIPIENT_PICKER](#ELEMENT_TYPE_EMAIL_RECIPIENT_PICKER)`

    Constant for element of type Email Recipient

    `static final int`

    `[ELEMENT_TYPE_FOLDER_PICKER](#ELEMENT_TYPE_FOLDER_PICKER)`

    Constant for element type Folder Picker

    `static final int`

    `[ELEMENT_TYPE_FORM](#ELEMENT_TYPE_FORM)`

    Constant for layout of type Form

    `static final int`

    `[ELEMENT_TYPE_FORUM_PICKER](#ELEMENT_TYPE_FORUM_PICKER)`

    Constant for element type Forum Picker

    `static final int`

    `[ELEMENT_TYPE_GROUP_PICKER](#ELEMENT_TYPE_GROUP_PICKER)`

    Constant for element type Group Picker

    `static final int`

    `[ELEMENT_TYPE_HIDDEN](#ELEMENT_TYPE_HIDDEN)`

    Constant for element type Hidden

    `static final int`

    `[ELEMENT_TYPE_HTMLAREA](#ELEMENT_TYPE_HTMLAREA)`

    Constant for element type HTML Area

    `static final int`

    `[ELEMENT_TYPE_KC_PICKER](#ELEMENT_TYPE_KC_PICKER)`

    Constant for element type KC Picker

    `static final int`

    `[ELEMENT_TYPE_LABEL](#ELEMENT_TYPE_LABEL)`

    Constant for element type Label

    `static final int`

    `[ELEMENT_TYPE_LOCAL_FILE](#ELEMENT_TYPE_LOCAL_FILE)`

    Constant for element type Local File

    `static final int`

    `[ELEMENT_TYPE_LONG](#ELEMENT_TYPE_LONG)`

    Constant for element type Long

    `static final int`

    `[ELEMENT_TYPE_MESSAGE_PICKER](#ELEMENT_TYPE_MESSAGE_PICKER)`

    Constant for element type Message Picker

    `static final int`

    `[ELEMENT_TYPE_PAGE_PICKER](#ELEMENT_TYPE_PAGE_PICKER)`

    Constant for element type Page Picker

    `static final int`

    `[ELEMENT_TYPE_PARAGRAPHS](#ELEMENT_TYPE_PARAGRAPHS)`

    Constant for element of type Paragraphs

    `static final int`

    `[ELEMENT_TYPE_PASSWORD](#ELEMENT_TYPE_PASSWORD)`

    Constant for element type Password

    `static final int`

    `[ELEMENT_TYPE_PEOPLE_PICKER](#ELEMENT_TYPE_PEOPLE_PICKER)`

    Constant for element type People Picker

    `static final int`

    `[ELEMENT_TYPE_PROCESS_MODEL_PICKER](#ELEMENT_TYPE_PROCESS_MODEL_PICKER)`

    Constant for element of type Process Model

    `static final int`

    `[ELEMENT_TYPE_PROCESS_PICKER](#ELEMENT_TYPE_PROCESS_PICKER)`

    Constant for element of type Process

    `static final int`

    `[ELEMENT_TYPE_RADIO](#ELEMENT_TYPE_RADIO)`

    Constant for element type Radio

    `static final int`

    `[ELEMENT_TYPE_TABS](#ELEMENT_TYPE_TABS)`

    Constant for layout of type Tabs

    `static final int`

    `[ELEMENT_TYPE_TEXT](#ELEMENT_TYPE_TEXT)`

    Constant for element type Text

    `static final int`

    `[ELEMENT_TYPE_TEXTAREA](#ELEMENT_TYPE_TEXTAREA)`

    Constant for element type Text Area

    `static final int`

    `[ELEMENT_TYPE_THREAD_PICKER](#ELEMENT_TYPE_THREAD_PICKER)`

    Constant for element type Thread Picker

    `static final int`

    `[ELEMENT_TYPE_TIME](#ELEMENT_TYPE_TIME)`

    Constant for element type Time

    `static final int`

    `[ELEMENT_TYPE_USER_PICKER](#ELEMENT_TYPE_USER_PICKER)`

    Constant for element type User Picker

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[FormElement](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[addExpression](#addExpression\(com.appiancorp.suiteapi.process.TypedVariable\))([TypedVariable](../TypedVariable.html "class in com.appiancorp.suiteapi.process") expression_)`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object.

    `static [FormElement](FormElement.html "class in com.appiancorp.suiteapi.process.forms")`

    `[fromXML](#fromXML\(org.w3c.dom.Node\))([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") feNode)`

    Creates a form element from xml

    `static [FormElement](FormElement.html "class in com.appiancorp.suiteapi.process.forms")`

    `[fromXML](#fromXML\(org.w3c.dom.Node,com.appiancorp.suiteapi.process.forms.FormElement.InferFormElementCallback\))([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") feNode, [FormElement.InferFormElementCallback](FormElement.InferFormElementCallback.html "interface in com.appiancorp.suiteapi.process.forms") callback)`

    `[TypedVariable](../TypedVariable.html "class in com.appiancorp.suiteapi.process")`

    `[getExpression](#getExpression\(int\))(int index_)`

    `int`

    `[getExpressionCount](#getExpressionCount\(\))()`

    `[TypedVariable](../TypedVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getExpressions](#getExpressions\(\))()`

    Returns a `TypedVariable[]` of expressions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExtra](#getExtra\(\))()`

    Gets the JSON representation of the FE this bean represents.

    `boolean`

    `[getHidden](#getHidden\(\))()`

    Get if the form element is hidden

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getInstructions](#getInstructions\(\))()`

    Gets the instructions for the form element

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLabel](#getLabel\(\))()`

    Gets the label for the form element

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMappedTo](#getMappedTo\(\))()`

    Get the acp or process parameter the form element is mapped to

    `int`

    `[getMappedToArrayIndex](#getMappedToArrayIndex\(\))()`

    If the form element is mapped to a bean array, gets the index in the bean array the form element is mapped to

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMappedToBeanArray](#getMappedToBeanArray\(\))()`

    If the mappedTo is a bean array, gets the bean array that the form element is mapped to

    `boolean`

    `[getMultiple](#getMultiple\(\))()`

    Gets if the form element allows multiple entries

    `boolean`

    `[getMutable](#getMutable\(\))()`

    Gets whether the form element is mutable

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the name

    `[Option](Option.html "class in com.appiancorp.suiteapi.process.forms")[]`

    `[getOptions](#getOptions\(\))()`

    Gets the form element options

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPickerType](#getPickerType\(\))()`

    Determines the pickerType to be used as the picker for this element.

    `boolean`

    `[getRequired](#getRequired\(\))()`

    Gets if the form element is required

    `int`

    `[getType](#getType\(\))()`

    Gets the form element type

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTypeName](#getTypeName\(\))()`

    Determines the name of the type of input widget that should be used to render this element based on the \_type property.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getValue](#getValue\(\))()`

    Gets the value

    `boolean`

    `[isBooleanType](#isBooleanType\(\))()`

    `boolean`

    `[isTypeWithOptions](#isTypeWithOptions\(\))()`

    Whether the form element type has options

    `void`

    `[setExpressions](#setExpressions\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D\))([TypedVariable](../TypedVariable.html "class in com.appiancorp.suiteapi.process")[] expressions_)`

    Sets a `TypedVariable[]` of expressions.

    `void`

    `[setExtra](#setExtra\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extra_)`

    Sets the JSON representation of the FE this bean represents.

    `void`

    `[setHidden](#setHidden\(boolean\))(boolean hidden_)`

    Sets if the form element is hidden

    `void`

    `[setInstructions](#setInstructions\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") instructions_)`

    Sets the instructions for the form element

    `void`

    `[setLabel](#setLabel\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label_)`

    Sets the label for the form element

    `void`

    `[setMappedTo](#setMappedTo\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") mappedTo_)`

    Sets what the acp or process parameter the form element is mapped to

    `void`

    `[setMappedToArrayIndex](#setMappedToArrayIndex\(int\))(int mappedToArrayIndex_)`

    Sets the index in a bean array that the form element is mapped to

    `void`

    `[setMappedToBeanArray](#setMappedToBeanArray\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") mappedToBeanArray_)`

    Sets the bean array that the form element is mapped to

    `void`

    `[setMultiple](#setMultiple\(boolean\))(boolean multiple_)`

    Sets if the form element allows multiple entries

    `void`

    `[setMutable](#setMutable\(boolean\))(boolean mutable_)`

    Sets whether the form element is mutable

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Sets the name

    `void`

    `[setOptions](#setOptions\(com.appiancorp.suiteapi.process.forms.Option%5B%5D\))([Option](Option.html "class in com.appiancorp.suiteapi.process.forms")[] options_)`

    Sets the form element options

    `void`

    `[setRequired](#setRequired\(boolean\))(boolean required_)`

    Sets if the form element is required

    `void`

    `[setType](#setType\(int\))(int type_)`

    Sets the form element type

    `void`

    `[setValue](#setValue\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value_)`

    Sets the value

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Converts the form element to xml

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Converts the form element to xml

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

    -   ### ELEMENT\_TYPE\_LONG

        public static final int ELEMENT\_TYPE\_LONG

        Constant for element type Long

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_LONG)

    -   ### ELEMENT\_TYPE\_DOUBLE

        public static final int ELEMENT\_TYPE\_DOUBLE

        Constant for element type Double

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_DOUBLE)

    -   ### ELEMENT\_TYPE\_TEXT

        public static final int ELEMENT\_TYPE\_TEXT

        Constant for element type Text

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_TEXT)

    -   ### ELEMENT\_TYPE\_TEXTAREA

        public static final int ELEMENT\_TYPE\_TEXTAREA

        Constant for element type Text Area

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_TEXTAREA)

    -   ### ELEMENT\_TYPE\_USER\_PICKER

        public static final int ELEMENT\_TYPE\_USER\_PICKER

        Constant for element type User Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_USER_PICKER)

    -   ### ELEMENT\_TYPE\_GROUP\_PICKER

        public static final int ELEMENT\_TYPE\_GROUP\_PICKER

        Constant for element type Group Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_GROUP_PICKER)

    -   ### ELEMENT\_TYPE\_PEOPLE\_PICKER

        public static final int ELEMENT\_TYPE\_PEOPLE\_PICKER

        Constant for element type People Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_PEOPLE_PICKER)

    -   ### ELEMENT\_TYPE\_DATE

        public static final int ELEMENT\_TYPE\_DATE

        Constant for element type Date

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_DATE)

    -   ### ELEMENT\_TYPE\_TIME

        public static final int ELEMENT\_TYPE\_TIME

        Constant for element type Time

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_TIME)

    -   ### ELEMENT\_TYPE\_DATETIME

        public static final int ELEMENT\_TYPE\_DATETIME

        Constant for element type Date Time

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_DATETIME)

    -   ### ELEMENT\_TYPE\_KC\_PICKER

        public static final int ELEMENT\_TYPE\_KC\_PICKER

        Constant for element type KC Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_KC_PICKER)

    -   ### ELEMENT\_TYPE\_FOLDER\_PICKER

        public static final int ELEMENT\_TYPE\_FOLDER\_PICKER

        Constant for element type Folder Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_FOLDER_PICKER)

    -   ### ELEMENT\_TYPE\_DOC\_PICKER

        public static final int ELEMENT\_TYPE\_DOC\_PICKER

        Constant for element type Document Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_DOC_PICKER)

    -   ### ELEMENT\_TYPE\_COMMUNITY\_PICKER

        public static final int ELEMENT\_TYPE\_COMMUNITY\_PICKER

        Constant for element type Community Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_COMMUNITY_PICKER)

    -   ### ELEMENT\_TYPE\_RADIO

        public static final int ELEMENT\_TYPE\_RADIO

        Constant for element type Radio

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_RADIO)

    -   ### ELEMENT\_TYPE\_CHECKBOX

        public static final int ELEMENT\_TYPE\_CHECKBOX

        Constant for element type Checkbox

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_CHECKBOX)

    -   ### ELEMENT\_TYPE\_DROPDOWN

        public static final int ELEMENT\_TYPE\_DROPDOWN

        Constant for element type Dropdown

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_DROPDOWN)

    -   ### ELEMENT\_TYPE\_LABEL

        public static final int ELEMENT\_TYPE\_LABEL

        Constant for element type Label

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_LABEL)

    -   ### ELEMENT\_TYPE\_FORUM\_PICKER

        public static final int ELEMENT\_TYPE\_FORUM\_PICKER

        Constant for element type Forum Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_FORUM_PICKER)

    -   ### ELEMENT\_TYPE\_THREAD\_PICKER

        public static final int ELEMENT\_TYPE\_THREAD\_PICKER

        Constant for element type Thread Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_THREAD_PICKER)

    -   ### ELEMENT\_TYPE\_MESSAGE\_PICKER

        public static final int ELEMENT\_TYPE\_MESSAGE\_PICKER

        Constant for element type Message Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_MESSAGE_PICKER)

    -   ### ELEMENT\_TYPE\_LOCAL\_FILE

        public static final int ELEMENT\_TYPE\_LOCAL\_FILE

        Constant for element type Local File

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_LOCAL_FILE)

    -   ### ELEMENT\_TYPE\_HIDDEN

        public static final int ELEMENT\_TYPE\_HIDDEN

        Constant for element type Hidden

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_HIDDEN)

    -   ### ELEMENT\_TYPE\_CONTENT\_PICKER

        public static final int ELEMENT\_TYPE\_CONTENT\_PICKER

        Constant for element type Content Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_CONTENT_PICKER)

    -   ### ELEMENT\_TYPE\_PAGE\_PICKER

        public static final int ELEMENT\_TYPE\_PAGE\_PICKER

        Constant for element type Page Picker

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_PAGE_PICKER)

    -   ### ELEMENT\_TYPE\_HTMLAREA

        public static final int ELEMENT\_TYPE\_HTMLAREA

        Constant for element type HTML Area

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_HTMLAREA)

    -   ### ELEMENT\_TYPE\_BUTTON

        public static final int ELEMENT\_TYPE\_BUTTON

        Constant for element type Button

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_BUTTON)

    -   ### ELEMENT\_TYPE\_PASSWORD

        public static final int ELEMENT\_TYPE\_PASSWORD

        Constant for element type Password

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_PASSWORD)

    -   ### ELEMENT\_TYPE\_PARAGRAPHS

        public static final int ELEMENT\_TYPE\_PARAGRAPHS

        Constant for element of type Paragraphs

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_PARAGRAPHS)

    -   ### ELEMENT\_TYPE\_EMAIL\_ADDRESS

        public static final int ELEMENT\_TYPE\_EMAIL\_ADDRESS

        Constant for element of type Email Recipient

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_EMAIL_ADDRESS)

    -   ### ELEMENT\_TYPE\_EMAIL\_RECIPIENT\_PICKER

        public static final int ELEMENT\_TYPE\_EMAIL\_RECIPIENT\_PICKER

        Constant for element of type Email Recipient

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_EMAIL_RECIPIENT_PICKER)

    -   ### ELEMENT\_TYPE\_FORM

        public static final int ELEMENT\_TYPE\_FORM

        Constant for layout of type Form

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_FORM)

    -   ### ELEMENT\_TYPE\_TABS

        public static final int ELEMENT\_TYPE\_TABS

        Constant for layout of type Tabs

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_TABS)

    -   ### ELEMENT\_TYPE\_PROCESS\_MODEL\_PICKER

        public static final int ELEMENT\_TYPE\_PROCESS\_MODEL\_PICKER

        Constant for element of type Process Model

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_PROCESS_MODEL_PICKER)

    -   ### ELEMENT\_TYPE\_PROCESS\_PICKER

        public static final int ELEMENT\_TYPE\_PROCESS\_PICKER

        Constant for element of type Process

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormElement.ELEMENT_TYPE_PROCESS_PICKER)

-   ## Constructor Details

    -   ### FormElement

        public FormElement()

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Clone this object.

        Specified by:

        `[clone](../../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getHidden

        public boolean getHidden()

        Get if the form element is hidden

        Returns:

        if the form element is hidden

    -   ### setHidden

        public void setHidden(boolean hidden\_)

        Sets if the form element is hidden

        Parameters:

        `hidden_` - whether or not the form element is to be hidden

        See Also:

        -   [`getHidden()`](#getHidden\(\))

    -   ### getInstructions

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getInstructions()

        Gets the instructions for the form element

        Returns:

        the instructions for the form element

    -   ### setInstructions

        public void setInstructions([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") instructions\_)

        Sets the instructions for the form element

        Parameters:

        `instructions_` - the instructions to set

        See Also:

        -   [`getInstructions()`](#getInstructions\(\))

    -   ### getLabel

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLabel()

        Gets the label for the form element

        Returns:

        the label for the form element

    -   ### setLabel

        public void setLabel([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label\_)

        Sets the label for the form element

        Parameters:

        `label_` - the label to set

        See Also:

        -   [`getLabel()`](#getLabel\(\))

    -   ### getMappedTo

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMappedTo()

        Get the acp or process parameter the form element is mapped to

        Returns:

        what the form element is mapped to

    -   ### setMappedTo

        public void setMappedTo([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") mappedTo\_)

        Sets what the acp or process parameter the form element is mapped to

        Parameters:

        `mappedTo_` - what to set the form element mapping to

        See Also:

        -   [`getMappedTo()`](#getMappedTo\(\))

    -   ### getMultiple

        public boolean getMultiple()

        Gets if the form element allows multiple entries

        Returns:

        if the form element allows multiple entires

    -   ### setMultiple

        public void setMultiple(boolean multiple\_)

        Sets if the form element allows multiple entries

        Parameters:

        `multiple_` - multiple entry allowance to set

        See Also:

        -   [`getMultiple()`](#getMultiple\(\))

    -   ### getMutable

        public boolean getMutable()

        Gets whether the form element is mutable

        Returns:

        whether the form element is mutable

    -   ### setMutable

        public void setMutable(boolean mutable\_)

        Sets whether the form element is mutable

        Parameters:

        `mutable_` - mutable entry allowance to set

        See Also:

        -   [`getMutable()`](#getMutable\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the name

        Returns:

        the name

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Sets the name

        Parameters:

        `name_` - the name

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### getOptions

        public [Option](Option.html "class in com.appiancorp.suiteapi.process.forms")\[\] getOptions()

        Gets the form element options

        Returns:

        an array of form element `Option` objects

    -   ### setOptions

        public void setOptions([Option](Option.html "class in com.appiancorp.suiteapi.process.forms")\[\] options\_)

        Sets the form element options

        Parameters:

        `options_` - the options to set for the form element

        See Also:

        -   [`getOptions()`](#getOptions\(\))

    -   ### getType

        public int getType()

        Gets the form element type

        Returns:

        the form element type. See `ELEMENT_TYPE_XXX` in this file for types.

    -   ### setType

        public void setType(int type\_)

        Sets the form element type

        Parameters:

        `type_` - the type to set

        See Also:

        -   [`getType()`](#getType\(\))

    -   ### getRequired

        public boolean getRequired()

        Gets if the form element is required

        Returns:

        whether or not the form element is required

    -   ### setRequired

        public void setRequired(boolean required\_)

        Sets if the form element is required

        Parameters:

        `required_` - the entry requirements to set

        See Also:

        -   [`getRequired()`](#getRequired\(\))

    -   ### getValue

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getValue()

        Gets the value

        Returns:

        the value

    -   ### setValue

        public void setValue([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value\_)

        Sets the value

        Parameters:

        `value_` - the value to set

        See Also:

        -   [`getValue()`](#getValue\(\))

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Converts the form element to xml

        Specified by:

        `[toXML](../../common/XMLable.html#toXML\(\))` in interface `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the xml representation of the form element

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Converts the form element to xml

        Specified by:

        `[toXML](../../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - the buffer to store the xml representation of form element in

    -   ### fromXML

        public static [FormElement](FormElement.html "class in com.appiancorp.suiteapi.process.forms") fromXML([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") feNode)

        Creates a form element from xml

        Parameters:

        `feNode` - the xml to create a form element from

        Returns:

        the created `FormElement`

    -   ### fromXML

        public static [FormElement](FormElement.html "class in com.appiancorp.suiteapi.process.forms") fromXML([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") feNode, [FormElement.InferFormElementCallback](FormElement.InferFormElementCallback.html "interface in com.appiancorp.suiteapi.process.forms") callback)

    -   ### getMappedToArrayIndex

        public int getMappedToArrayIndex()

        If the form element is mapped to a bean array, gets the index in the bean array the form element is mapped to

        Returns:

        the index in the bean array the form element is mapped to

    -   ### setMappedToArrayIndex

        public void setMappedToArrayIndex(int mappedToArrayIndex\_)

        Sets the index in a bean array that the form element is mapped to

        Parameters:

        `mappedToArrayIndex_` - the index in the bean array to map the form element to

    -   ### getMappedToBeanArray

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMappedToBeanArray()

        If the mappedTo is a bean array, gets the bean array that the form element is mapped to

        Returns:

        the bean array that the form element is mapped to

    -   ### setMappedToBeanArray

        public void setMappedToBeanArray([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") mappedToBeanArray\_)

        Sets the bean array that the form element is mapped to

        Parameters:

        `mappedToBeanArray_` - the bean array to set the mappedTo for the form element

    -   ### getTypeName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTypeName()

        Determines the name of the type of input widget that should be used to render this element based on the \_type property.

        Returns:

        the name of the type

    -   ### getPickerType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPickerType()

        Determines the pickerType to be used as the picker for this element. If this element is not one whose typeName is picker or singlepicker, returns -1.

        Returns:

        the type of the picker

    -   ### isTypeWithOptions

        public boolean isTypeWithOptions()

        Whether the form element type has options

        Returns:

        if the form element type has options

    -   ### getExtra

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExtra()

        Gets the JSON representation of the FE this bean represents. This only applies to elements generated by the new Forms Designer.

        Returns:

        Returns `String` data in JSON format

    -   ### setExtra

        public void setExtra([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extra\_)

        Sets the JSON representation of the FE this bean represents. This field should never be overwritten manually.

        Parameters:

        `extra_` - A `String` in JSON format which describes the FE this bean represents.

        See Also:

        -   [`getExtra()`](#getExtra\(\))

    -   ### getExpressions

        public [TypedVariable](../TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] getExpressions()

        Returns a `TypedVariable[]` of expressions. Any expression stored in a new field (in the `extra` field) is extracted from the JSON String and put in this array.

        Returns:

        An array of fields to expressions.

        See Also:

        -   [`getExtra()`](#getExtra\(\))

    -   ### setExpressions

        public void setExpressions([TypedVariable](../TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] expressions\_)

        Sets a `TypedVariable[]` of expressions. This should never be overwritten manually.

        See Also:

        -   [`getExpressions()`](#getExpressions\(\))

    -   ### addExpression

        public int addExpression([TypedVariable](../TypedVariable.html "class in com.appiancorp.suiteapi.process") expression\_)

    -   ### getExpression

        public [TypedVariable](../TypedVariable.html "class in com.appiancorp.suiteapi.process") getExpression(int index\_)

    -   ### getExpressionCount

        public int getExpressionCount()

        Returns:

        count of expressions, the length that would be returned by getExpressions()

    -   ### isBooleanType

        public boolean isBooleanType()