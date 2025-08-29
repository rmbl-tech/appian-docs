---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/forms/FormConfig.html
original_path: api/com/appiancorp/suiteapi/process/forms/FormConfig.html
version: "25.3"
title: "Class FormConfig"
page_id: "api/com/appiancorp/suiteapi/process/forms/FormConfig"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.forms](package-summary.html)

# Class FormConfig

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.forms.FormConfig

All Implemented Interfaces:

`[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](../AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class FormConfig extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [AppianTypeHolder](../AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean representing the formconfig

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.forms.FormConfig)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[CAPABILITY_ALLOW_TYPE_DYNAMIC](#CAPABILITY_ALLOW_TYPE_DYNAMIC)`

    A Dynamic Form is Allowed.

    `static final int`

    `[CAPABILITY_ALLOW_TYPE_INTERNAL](#CAPABILITY_ALLOW_TYPE_INTERNAL)`

    An Internal Form is Allowed.

    `static final int`

    `[CAPABILITY_ALLOW_TYPE_JSP](#CAPABILITY_ALLOW_TYPE_JSP)`

    A JSP Form is Allowed.

    `static final int`

    `[CAPABILITY_ALLOW_TYPE_UI_EXPRESSION](#CAPABILITY_ALLOW_TYPE_UI_EXPRESSION)`

    A Dynamic UI Form Expression is Allowed.

    `static final int`

    `[CAPABILITY_RENDER_MOBILE](#CAPABILITY_RENDER_MOBILE)`

    Constant representing the capability of a form to be rendered in the Appian mobile UI.

    `static final int`

    `[CAPABILITY_RENDER_WEB](#CAPABILITY_RENDER_WEB)`

    Constant representing the capability of a form to be rendered in the Appian web UI.

    `static final int`

    `[CAPABILITY_REQUIRE_FORM](#CAPABILITY_REQUIRE_FORM)`

    There must be a form (absent form is not sufficient to be capable); otherwise, absent form is allowed for other types.

    `static final int`

    `[FORM_IS_MOBILE_ENABLED](#FORM_IS_MOBILE_ENABLED)`

    Bitmask that controls if this form is mobile enabled

    `static final int`

    `[FORM_TYPE_DYNAMIC](#FORM_TYPE_DYNAMIC)`

    Constant for dynamic forms

    `static final int`

    `[FORM_TYPE_INTERNAL](#FORM_TYPE_INTERNAL)`

    Constant for internal forms

    `static final int`

    `[FORM_TYPE_JSP](#FORM_TYPE_JSP)`

    Constant for jsp forms

    `static final int`

    `[FORM_TYPE_UI_EXPRESSION](#FORM_TYPE_UI_EXPRESSION)`

    Constant for ui designer forms

    `static final int`

    `[TASK_ALLOW_INLINE_APPROVAL](#TASK_ALLOW_INLINE_APPROVAL)`

    Bitmask that controls if in-line approval is allowed for the task.

    `static final int`

    `[TASK_ATTACHMENTS_MASK](#TASK_ATTACHMENTS_MASK)`

    Bitmask that controls if the task attachments are hidden.

    `static final int`

    `[TASK_HEADER_MASK](#TASK_HEADER_MASK)`

    Bitmask that controls if the task header is hidden.

    `static final int`

    `[TASK_SAVE_BUTTON_MASK](#TASK_SAVE_BUTTON_MASK)`

    Bitmask that controls if the task save button is hidden.

    `static final int`

    `[TASK_TOOLBAR_MASK](#TASK_TOOLBAR_MASK)`

    Bitmask that controls if the task toolbar is hidden.

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[FormConfig](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](../AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Fills in the appian types for the form

    `static [FormConfig](FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`

    `[fromXML](#fromXML\(org.w3c.dom.Node\))([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") formNode)`

    Creates a form from xml

    `static [FormConfig](FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`

    `[fromXML](#fromXML\(org.w3c.dom.Node,com.appiancorp.suiteapi.process.forms.FormElement.InferFormElementCallback\))([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") formNode, [FormElement.InferFormElementCallback](FormElement.InferFormElementCallback.html "interface in com.appiancorp.suiteapi.process.forms") callback)`

    `[DynamicForm](DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getDynamicForm](#getDynamicForm\(\))()`

    Gets the dynamic form

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getHiddenSections](#getHiddenSections\(\))()`

    Gets the bitmask which contains the informations on: which task sections are hidden in a task form. if in-line approval is allowed for the task in Tempo. if the task is mobile enabled (i.e. can this form be rendered in mobile devices?)

    `[InternalForm](InternalForm.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getInternalForm](#getInternalForm\(\))()`

    Gets the internal form

    `[JSPForm](JSPForm.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getJspForm](#getJspForm\(\))()`

    Gets the jsp form

    `int`

    `[getType](#getType\(\))()`

    Gets the form type

    `[UiExpressionForm](UiExpressionForm.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getUiExpressionForm](#getUiExpressionForm\(\))()`

    `boolean`

    `[hasStartForm](#hasStartForm\(\))()`

    Gets whether the form has a StartForm

    `boolean`

    `[isEnabled](#isEnabled\(\))()`

    See set method.

    `boolean`

    `[isMobileEnabled](#isMobileEnabled\(\))()`

    Gets whether the form is mobile enabled.

    `boolean`

    `[isUseTextBundle](#isUseTextBundle\(\))()`

    See set method.

    `void`

    `[setDynamicForm](#setDynamicForm\(com.appiancorp.suiteapi.process.forms.DynamicForm\))([DynamicForm](DynamicForm.html "class in com.appiancorp.suiteapi.process.forms") dynamicForm_)`

    Sets the dynamic form

    `void`

    `[setEnabled](#setEnabled\(boolean\))(boolean enabled_)`

    Sets whether this form is enabled.

    `void`

    `[setHiddenSections](#setHiddenSections\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") hiddenSections)`

    Sets the bitmask used to control the following: which task sections are hidden in a task form. if in-line approval is allowed for the task in Tempo. if the task is mobile enabled (i.e. can this form be rendered in mobile devices?)

    `void`

    `[setInternalForm](#setInternalForm\(com.appiancorp.suiteapi.process.forms.InternalForm\))([InternalForm](InternalForm.html "class in com.appiancorp.suiteapi.process.forms") internalForm_)`

    Sets the internal form

    `void`

    `[setJspForm](#setJspForm\(com.appiancorp.suiteapi.process.forms.JSPForm\))([JSPForm](JSPForm.html "class in com.appiancorp.suiteapi.process.forms") jspForm_)`

    Sets the jsp form

    `void`

    `[setType](#setType\(int\))(int type_)`

    Sets the form type

    `void`

    `[setUiExpressionForm](#setUiExpressionForm\(com.appiancorp.suiteapi.process.forms.UiExpressionForm\))([UiExpressionForm](UiExpressionForm.html "class in com.appiancorp.suiteapi.process.forms") uiExpressionForm)`

    `void`

    `[setUseTextBundle](#setUseTextBundle\(boolean\))(boolean useTextBundle_)`

    Sets if the form-element labels will be retrieved from a resource bundle when loaded at administration time (i.e. when the xml that defines the activity is loaded during the application server startup).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Converts the contained form to xml

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Converts the contained form to xml

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### FORM\_TYPE\_DYNAMIC

        public static final int FORM\_TYPE\_DYNAMIC

        Constant for dynamic forms

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.FORM_TYPE_DYNAMIC)

    -   ### FORM\_TYPE\_JSP

        public static final int FORM\_TYPE\_JSP

        Constant for jsp forms

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.FORM_TYPE_JSP)

    -   ### FORM\_TYPE\_INTERNAL

        public static final int FORM\_TYPE\_INTERNAL

        Constant for internal forms

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.FORM_TYPE_INTERNAL)

    -   ### FORM\_TYPE\_UI\_EXPRESSION

        public static final int FORM\_TYPE\_UI\_EXPRESSION

        Constant for ui designer forms

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.FORM_TYPE_UI_EXPRESSION)

    -   ### CAPABILITY\_RENDER\_WEB

        public static final int CAPABILITY\_RENDER\_WEB

        Constant representing the capability of a form to be rendered in the Appian web UI.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.CAPABILITY_RENDER_WEB)

    -   ### CAPABILITY\_RENDER\_MOBILE

        public static final int CAPABILITY\_RENDER\_MOBILE

        Constant representing the capability of a form to be rendered in the Appian mobile UI.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.CAPABILITY_RENDER_MOBILE)

    -   ### CAPABILITY\_ALLOW\_TYPE\_DYNAMIC

        public static final int CAPABILITY\_ALLOW\_TYPE\_DYNAMIC

        A Dynamic Form is Allowed. Only devices capable of displaying this should include this capability.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.CAPABILITY_ALLOW_TYPE_DYNAMIC)

    -   ### CAPABILITY\_ALLOW\_TYPE\_JSP

        public static final int CAPABILITY\_ALLOW\_TYPE\_JSP

        A JSP Form is Allowed. Only devices capable of displaying this should include this capability.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.CAPABILITY_ALLOW_TYPE_JSP)

    -   ### CAPABILITY\_ALLOW\_TYPE\_INTERNAL

        public static final int CAPABILITY\_ALLOW\_TYPE\_INTERNAL

        An Internal Form is Allowed. Only devices capable of displaying this should include this capability.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.CAPABILITY_ALLOW_TYPE_INTERNAL)

    -   ### CAPABILITY\_ALLOW\_TYPE\_UI\_EXPRESSION

        public static final int CAPABILITY\_ALLOW\_TYPE\_UI\_EXPRESSION

        A Dynamic UI Form Expression is Allowed. Only devices capable of displaying this should include this capability.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.CAPABILITY_ALLOW_TYPE_UI_EXPRESSION)

    -   ### CAPABILITY\_REQUIRE\_FORM

        public static final int CAPABILITY\_REQUIRE\_FORM

        There must be a form (absent form is not sufficient to be capable); otherwise, absent form is allowed for other types.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.CAPABILITY_REQUIRE_FORM)

    -   ### TASK\_SAVE\_BUTTON\_MASK

        public static final int TASK\_SAVE\_BUTTON\_MASK

        Bitmask that controls if the task save button is hidden. Currently shares the same bitmask as the task toolbar mask

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.TASK_SAVE_BUTTON_MASK)

    -   ### TASK\_TOOLBAR\_MASK

        public static final int TASK\_TOOLBAR\_MASK

        Bitmask that controls if the task toolbar is hidden.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.TASK_TOOLBAR_MASK)

    -   ### TASK\_HEADER\_MASK

        public static final int TASK\_HEADER\_MASK

        Bitmask that controls if the task header is hidden.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.TASK_HEADER_MASK)

    -   ### TASK\_ATTACHMENTS\_MASK

        public static final int TASK\_ATTACHMENTS\_MASK

        Bitmask that controls if the task attachments are hidden.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.TASK_ATTACHMENTS_MASK)

    -   ### TASK\_ALLOW\_INLINE\_APPROVAL

        public static final int TASK\_ALLOW\_INLINE\_APPROVAL

        Bitmask that controls if in-line approval is allowed for the task.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.TASK_ALLOW_INLINE_APPROVAL)

    -   ### FORM\_IS\_MOBILE\_ENABLED

        public static final int FORM\_IS\_MOBILE\_ENABLED

        Bitmask that controls if this form is mobile enabled

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.forms.FormConfig.FORM_IS_MOBILE_ENABLED)

-   ## Constructor Details

    -   ### FormConfig

        public FormConfig()

-   ## Method Details

    -   ### getUiExpressionForm

        public [UiExpressionForm](UiExpressionForm.html "class in com.appiancorp.suiteapi.process.forms") getUiExpressionForm()

        Returns:

        expression to generate UI, if formType is FORM\_TYPE\_UI\_EXPRESSION

    -   ### setUiExpressionForm

        public void setUiExpressionForm([UiExpressionForm](UiExpressionForm.html "class in com.appiancorp.suiteapi.process.forms") uiExpressionForm)

        Parameters:

        `uiExpressionForm` - expression to generate UI, if formType is FORM\_TYPE\_UI\_EXPRESSION

    -   ### getDynamicForm

        public [DynamicForm](DynamicForm.html "class in com.appiancorp.suiteapi.process.forms") getDynamicForm()

        Gets the dynamic form

        Returns:

        the `DynamicForm`

    -   ### setDynamicForm

        public void setDynamicForm([DynamicForm](DynamicForm.html "class in com.appiancorp.suiteapi.process.forms") dynamicForm\_)

        Sets the dynamic form

        Parameters:

        `dynamicForm_` - the dynamic form to set

        See Also:

        -   [`getDynamicForm()`](#getDynamicForm\(\))

    -   ### getInternalForm

        public [InternalForm](InternalForm.html "class in com.appiancorp.suiteapi.process.forms") getInternalForm()

        Gets the internal form

        Returns:

        the `InternalForm`

    -   ### setInternalForm

        public void setInternalForm([InternalForm](InternalForm.html "class in com.appiancorp.suiteapi.process.forms") internalForm\_)

        Sets the internal form

        Parameters:

        `internalForm_` - the internal form to set

        See Also:

        -   [`getInternalForm()`](#getInternalForm\(\))

    -   ### getJspForm

        public [JSPForm](JSPForm.html "class in com.appiancorp.suiteapi.process.forms") getJspForm()

        Gets the jsp form

        Returns:

        the `JSPForm`

    -   ### setJspForm

        public void setJspForm([JSPForm](JSPForm.html "class in com.appiancorp.suiteapi.process.forms") jspForm\_)

        Sets the jsp form

        Parameters:

        `jspForm_` - the `JSPForm` to set

    -   ### getType

        public int getType()

        Gets the form type

        Returns:

        the form type [`FORM_TYPE_DYNAMIC`](#FORM_TYPE_DYNAMIC) - Dynamic [`FORM_TYPE_JSP`](#FORM_TYPE_JSP) - JSP [`FORM_TYPE_INTERNAL`](#FORM_TYPE_INTERNAL) - Internal (i.e. HTML/PDF) [`FORM_TYPE_UI_EXPRESSION`](#FORM_TYPE_UI_EXPRESSION) - UI Designer

    -   ### setType

        public void setType(int type\_)

        Sets the form type

        Parameters:

        `type_` - the form type to set

        See Also:

        -   [`getType()`](#getType\(\))

    -   ### isEnabled

        public boolean isEnabled()

        See set method.

        Returns:

        Returns the enabled flag.

    -   ### setEnabled

        public void setEnabled(boolean enabled\_)

        Sets whether this form is enabled. Forms, part of a Form Config Map, can be enabled/disabled at design time for a particular Locale.

        Parameters:

        `enabled_` - The enabled\_ status of the form.

    -   ### isUseTextBundle

        public boolean isUseTextBundle()

        See set method.

        Returns:

        Returns the useTextBundle.

    -   ### setUseTextBundle

        public void setUseTextBundle(boolean useTextBundle\_)

        Sets if the form-element labels will be retrieved from a resource bundle when loaded at administration time (i.e. when the xml that defines the activity is loaded during the application server startup).

        Parameters:

        `useTextBundle_` - The useTextBundle to set.

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Converts the contained form to xml

        Specified by:

        `[toXML](../../common/XMLable.html#toXML\(\))` in interface `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the xml representation of the form

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Converts the contained form to xml

        Specified by:

        `[toXML](../../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - the buffer to store the xml representation of the form

    -   ### fromXML

        public static [FormConfig](FormConfig.html "class in com.appiancorp.suiteapi.process.forms") fromXML([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") formNode)

        Creates a form from xml

        Parameters:

        `formNode` - the xml to create the form from

        Returns:

        the created `FormConfig`

    -   ### fromXML

        public static [FormConfig](FormConfig.html "class in com.appiancorp.suiteapi.process.forms") fromXML([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") formNode, [FormElement.InferFormElementCallback](FormElement.InferFormElementCallback.html "interface in com.appiancorp.suiteapi.process.forms") callback)

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](../AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Fills in the appian types for the form

        Specified by:

        `[fillInAppianTypes](../AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](../AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - cache of Appian-typed objects.

    -   ### getHiddenSections

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getHiddenSections()

        Gets the bitmask which contains the informations on:

        1.  which task sections are hidden in a task form.
        2.  if in-line approval is allowed for the task in Tempo.
        3.  if the task is mobile enabled (i.e. can this form be rendered in mobile devices?)

        Bits in hiddenSections are represented by the bitmasks - [`TASK_SAVE_BUTTON_MASK`](#TASK_SAVE_BUTTON_MASK), [`TASK_TOOLBAR_MASK`](#TASK_TOOLBAR_MASK), [`TASK_HEADER_MASK`](#TASK_HEADER_MASK), [`TASK_ATTACHMENTS_MASK`](#TASK_ATTACHMENTS_MASK), [`TASK_ALLOW_INLINE_APPROVAL`](#TASK_ALLOW_INLINE_APPROVAL) and [`FORM_IS_MOBILE_ENABLED`](#FORM_IS_MOBILE_ENABLED). To extract the boolean flag corresponding to a bit (or bits) in hiddenSections do bitwise AND with the appropriate bitmask and then compare it with that bitmask. For example, to know if in-line task approval is allowed for the task do the following:

        ```
        (hiddenSections & TASK_ALLOW_INLINE_APPROVAL) == TASK_ALLOW_INLINE_APPROVAL
        ```

Returns:

task display options bitmask

-   ### setHiddenSections

    public void setHiddenSections([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") hiddenSections)

    Sets the bitmask used to control the following:

    1.  which task sections are hidden in a task form.
    2.  if in-line approval is allowed for the task in Tempo.
    3.  if the task is mobile enabled (i.e. can this form be rendered in mobile devices?)

    Bits in hiddenSections are represented by the bitmasks - [`TASK_SAVE_BUTTON_MASK`](#TASK_SAVE_BUTTON_MASK), [`TASK_TOOLBAR_MASK`](#TASK_TOOLBAR_MASK),[`TASK_HEADER_MASK`](#TASK_HEADER_MASK), [`TASK_ATTACHMENTS_MASK`](#TASK_ATTACHMENTS_MASK), [`TASK_ALLOW_INLINE_APPROVAL`](#TASK_ALLOW_INLINE_APPROVAL) and [`FORM_IS_MOBILE_ENABLED`](#FORM_IS_MOBILE_ENABLED). To set/reset a bit (or bits) do the following:

    -   To set a bit do bitwise OR with the appropriate bitmask, and set the resulted value. For example, to set the bit corresponding to in-line approval for the task, do the following before setting the value:

        ```
        hiddenSections |= TASK_ALLOW_INLINE_APPROVAL
        ```

    -   To reset a bit do bitwise AND with NOT of the appropriate bitmask, and set the resulted value. For example, to reset the bit corresponding to in-line approval for the task, do the following before setting the value:

        ```
        hiddenSections &= ~TASK_ALLOW_INLINE_APPROVAL
        ```

    Parameters:

    `hiddenSections` - task display options bitmask

-   ### hasStartForm

    public boolean hasStartForm()

    Gets whether the form has a StartForm

    Returns:

    true if the form has a StartForm, false otherwise.

-   ### isMobileEnabled

    public boolean isMobileEnabled()

    Gets whether the form is mobile enabled.

    Returns:

    true if the form is mobile enabled, false otherwise.