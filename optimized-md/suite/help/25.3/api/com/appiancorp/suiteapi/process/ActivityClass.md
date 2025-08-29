---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ActivityClass.html
original_path: api/com/appiancorp/suiteapi/process/ActivityClass.html
version: "25.3"
title: "Class ActivityClass"
page_id: "api/com/appiancorp/suiteapi/process/ActivityClass"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ActivityClass

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.ActivityClass

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ActivityClass extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") implements [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

The activity that is run when a ProcessNode is traversed. This representation is mainly used at design time, though.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ActivityClass)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[OUTPUT_EXPRESSION_TYPE_CUSTOM](#OUTPUT_EXPRESSION_TYPE_CUSTOM)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[OUTPUT_EXPRESSION_TYPE_RESULT](#OUTPUT_EXPRESSION_TYPE_RESULT)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[OUTPUT_EXPRESSION_TYPE_SAVE_INTO](#OUTPUT_EXPRESSION_TYPE_SAVE_INTO)`

    `static final int`

    `[UA_CAN_BE_ATTENDED](#UA_CAN_BE_ATTENDED)`

    `static final int`

    `[UA_CAN_BE_BOTH](#UA_CAN_BE_BOTH)`

    `static final int`

    `[UA_CAN_BE_UNATTENDED](#UA_CAN_BE_UNATTENDED)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ActivityClass](#%3Cinit%3E\(\))()`

    `[ActivityClass](#%3Cinit%3E\(com.appiancorp.suiteapi.process.ActivityClassSchema\))([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") schema_)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getAcSchemaId](#getAcSchemaId\(\))()`

    Gets the Activity Class Schema ID of this activity class

    `[ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[]`

    `[getCustomParameters](#getCustomParameters\(\))()`

    Gets the list of parameters that have been added at design time, and need to be available at runtime.

    `[FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getFormConfig](#getFormConfig\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Gets the form config corresponding to the given locale, or null if no such config exists.

    `[FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getFormConfigMap](#getFormConfigMap\(\))()`

    Gets the information about the form associated with this activity class.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getHelperClass](#getHelperClass\(\))()`

    Gets the helper class for this activity class.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalId](#getLocalId\(\))()`

    Gets the Activity Class Local ID of this activity class

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getOutputExpressions](#getOutputExpressions\(\))()`

    Gets the expressions that are evaluated at the end of the activity.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getOutputExpressionsFlags](#getOutputExpressionsFlags\(\))()`

    Gets the expression flags for the output expressions.

    `[ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[]`

    `[getParameters](#getParameters\(\))()`

    Gets the list of parameters of the activity class.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getRunAs](#getRunAs\(\))()`

    Gets the role (such as process initiator) that this task should ran as if it is unassigned.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUnattended](#getUnattended\(\))()`

    Indicates whether the activity class requires user interaction to complete

    `void`

    `[setAcSchemaId](#setAcSchemaId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") acSchemaId_)`

    Sets the Activity Class Schema ID of this activity class

    `void`

    `[setCustomParameters](#setCustomParameters\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))([ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] customParameters_)`

    Sets the list of parameters that have been added at design time, and need to be available at runtime.

    `void`

    `[setFormConfigMap](#setFormConfigMap\(com.appiancorp.suiteapi.process.forms.FormConfigMap\))([FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") formConfigMap_)`

    Sets the information about the form associated with this activity class

    `void`

    `[setHelperClass](#setHelperClass\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") helperClass_)`

    Sets the helper class for this activity class.

    `void`

    `[setLocalId](#setLocalId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId_)`

    Sets the Activity Class Local ID of this activity class

    `void`

    `[setOutputExpressions](#setOutputExpressions\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] outputExpressions_)`

    Sets the expressions that are evaluated at the end of the activity.

    `void`

    `[setOutputExpressionsFlags](#setOutputExpressionsFlags\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] outputExpressionsFlags_)`

    Sets the expression flags These define what type of output expression each value of the outputExpression array contains.

    `void`

    `[setParameters](#setParameters\(com.appiancorp.suiteapi.process.ActivityClassParameter%5B%5D\))([ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")[] parameters_)`

    Gets the list of parameters of the activity class.

    `void`

    `[setRunAs](#setRunAs\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") runAs_)`

    Sets the role (such as process initiator) that this task should ran as if it is unassigned.

    `void`

    `[setUnattended](#setUnattended\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") unattended_)`

    Sets whether the activity class requires user interaction to complete

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `Identity`.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Generates an XML representation of this object (including all child objects).

    `void`

    `[toXML](#toXML\(java.lang.StringBuffer\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### UA\_CAN\_BE\_ATTENDED

        public static final int UA\_CAN\_BE\_ATTENDED

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClass.UA_CAN_BE_ATTENDED)

    -   ### UA\_CAN\_BE\_UNATTENDED

        public static final int UA\_CAN\_BE\_UNATTENDED

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClass.UA_CAN_BE_UNATTENDED)

    -   ### UA\_CAN\_BE\_BOTH

        public static final int UA\_CAN\_BE\_BOTH

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClass.UA_CAN_BE_BOTH)

    -   ### OUTPUT\_EXPRESSION\_TYPE\_CUSTOM

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") OUTPUT\_EXPRESSION\_TYPE\_CUSTOM

    -   ### OUTPUT\_EXPRESSION\_TYPE\_RESULT

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") OUTPUT\_EXPRESSION\_TYPE\_RESULT

    -   ### OUTPUT\_EXPRESSION\_TYPE\_SAVE\_INTO

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") OUTPUT\_EXPRESSION\_TYPE\_SAVE\_INTO

-   ## Constructor Details

    -   ### ActivityClass

        public ActivityClass()

    -   ### ActivityClass

        public ActivityClass([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") schema\_)

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### getParameters

        public [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] getParameters()

        Gets the list of parameters of the activity class.

        Returns:

        an array of `ActivityClassParameter` objects representing the activity class parameters for this activity class.

        See Also:

        -   [`ActivityClassParameter`](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

    -   ### setParameters

        public void setParameters([ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] parameters\_)

        Gets the list of parameters of the activity class.

        Parameters:

        `parameters_` - an array of `ActivityClassParameter` objects representing the activity class parameters to set for this activity class.

        See Also:

        -   [`ActivityClassParameter`](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

    -   ### getUnattended

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUnattended()

        Indicates whether the activity class requires user interaction to complete

        Returns:

        [`UA_CAN_BE_ATTENDED`](#UA_CAN_BE_ATTENDED) if the activity class is attended (requires human interaction), [`UA_CAN_BE_UNATTENDED`](#UA_CAN_BE_UNATTENDED) if the activity class is unattended.

    -   ### setUnattended

        public void setUnattended([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") unattended\_)

        Sets whether the activity class requires user interaction to complete

        Parameters:

        `unattended_` - unattended value of the activity class. Allowed values are : [`UA_CAN_BE_ATTENDED`](#UA_CAN_BE_ATTENDED) if the activity class is attended (requires human interaction), [`UA_CAN_BE_UNATTENDED`](#UA_CAN_BE_UNATTENDED) if the activity class is unattended.

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(\))`

        Generates an XML representation of this object (including all child objects). A typical implementation is to create a new `StringBuilder` and call `toXML( StringBuilder )` on it.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        The XML representation of this object.

    -   ### toXML

        public void toXML([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_)

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(java.lang.StringBuilder\))`

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Description copied from class: `[Identity](../common/Identity.html#toString\(\))`

        Returns a string representation of the `Identity`. In general, the toString method returns a string that "textually represents" this object.

        Overrides:

        `[toString](../common/Identity.html#toString\(\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        String representation of the object

    -   ### getAcSchemaId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getAcSchemaId()

        Gets the Activity Class Schema ID of this activity class

        Returns:

        the Activity Class Schema ID of this activity class

    -   ### setAcSchemaId

        public void setAcSchemaId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") acSchemaId\_)

        Sets the Activity Class Schema ID of this activity class

        Parameters:

        `acSchemaId_` - the Activity Class Schema ID of this activity class to set

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Description copied from interface: `[AppianTypeHolder](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))`

        If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache. Later, the cache will populate itself with the display strings that correspond to all of its ids, such as "Human Resources" for group 9.

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - cache of Appian-typed objects.

    -   ### getRunAs

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getRunAs()

        Gets the role (such as process initiator) that this task should ran as if it is unassigned. At runtime, a lookup will be performed to resolve the assignee as a User. (0 = process initiator, 1 = process model designer)

        Returns:

        a `Long` indicating the role to set (0 = process initiator, 1 = process model designer)

    -   ### setRunAs

        public void setRunAs([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") runAs\_)

        Sets the role (such as process initiator) that this task should ran as if it is unassigned. At runtime, a lookup will be performed to resolve the assignee as a User.

        Parameters:

        `runAs_` - a `Long` indicating the role to set (0 = process initiator, 1 = process model designer)

    -   ### getCustomParameters

        public [ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] getCustomParameters()

        Gets the list of parameters that have been added at design time, and need to be available at runtime.

        Returns:

        an array of `ActivityClassParameter` objects representing the activity class parameters for this activity class.

        See Also:

        -   [`ActivityClassParameter`](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

    -   ### setCustomParameters

        public void setCustomParameters([ActivityClassParameter](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")\[\] customParameters\_)

        Sets the list of parameters that have been added at design time, and need to be available at runtime.

        Parameters:

        `customParameters_` - an array of `ActivityClassParameter` objects representing the activity class parameters to set for this activity class.

        See Also:

        -   [`ActivityClassParameter`](ActivityClassParameter.html "class in com.appiancorp.suiteapi.process")

    -   ### getOutputExpressions

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getOutputExpressions()

        Gets the expressions that are evaluated at the end of the activity. These expressions can be used to save the values of ACPs and ARVs into PVs. You should also set the outputExpressionsFlags to differentiate from custom output expressions, ARV output expressions, etc.

        Returns:

        an array containing the evaluated expressions

    -   ### setOutputExpressions

        public void setOutputExpressions([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] outputExpressions\_)

        Sets the expressions that are evaluated at the end of the activity. These expressions can be used to save the values of ACPs and ARVs into PVs.

        Parameters:

        `outputExpressions_` - an array containing the evaluated expressions to set

    -   ### getOutputExpressionsFlags

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getOutputExpressionsFlags()

        Gets the expression flags for the output expressions. The output expression types can be one of [`OUTPUT_EXPRESSION_TYPE_CUSTOM`](#OUTPUT_EXPRESSION_TYPE_CUSTOM), [`OUTPUT_EXPRESSION_TYPE_RESULT`](#OUTPUT_EXPRESSION_TYPE_RESULT) or [`OUTPUT_EXPRESSION_TYPE_SAVE_INTO`](#OUTPUT_EXPRESSION_TYPE_SAVE_INTO)

        Returns:

        the array containing the type of output expressions

    -   ### setOutputExpressionsFlags

        public void setOutputExpressionsFlags([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] outputExpressionsFlags\_)

        Sets the expression flags These define what type of output expression each value of the outputExpression array contains. It should be the same length as the outputExpressions array. The output expression types can be one of [`OUTPUT_EXPRESSION_TYPE_CUSTOM`](#OUTPUT_EXPRESSION_TYPE_CUSTOM), [`OUTPUT_EXPRESSION_TYPE_RESULT`](#OUTPUT_EXPRESSION_TYPE_RESULT) or [`OUTPUT_EXPRESSION_TYPE_SAVE_INTO`](#OUTPUT_EXPRESSION_TYPE_SAVE_INTO)

        Parameters:

        `outputExpressionsFlags_` - the array of output expression flags set

    -   ### getFormConfigMap

        public [FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") getFormConfigMap()

        Gets the information about the form associated with this activity class.

        Returns:

        a `FormConfig` object that represents information about the form associated with this activity class

        See Also:

        -   [`FormConfig`](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")

    -   ### getFormConfig

        public [FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms") getFormConfig([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Gets the form config corresponding to the given locale, or null if no such config exists.

        Parameters:

        `locale_` -

        Returns:

    -   ### setFormConfigMap

        public void setFormConfigMap([FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") formConfigMap\_)

        Sets the information about the form associated with this activity class

        Parameters:

        `formConfigMap_` - a `FormConfig` object that represents information about the form associated with this activity class to set

    -   ### getHelperClass

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getHelperClass()

        Gets the helper class for this activity class. A parameter helper class is used by the framework to help execute an activity class. The parameter helper class is associated with an activity class in the activity class config xml file, and must implement the ActivityParameterHelper interface. The helper class is optional. Please refer to the [`ActivityParameterHelper`](framework/ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework") class for more information on the specific functionality of a helper class.

        Returns:

        the helper class

    -   ### setHelperClass

        public void setHelperClass([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") helperClass\_)

        Sets the helper class for this activity class.

        Parameters:

        `helperClass_` - the helper class

        See Also:

        -   [`getHelperClass()`](#getHelperClass\(\))

    -   ### getLocalId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalId()

        Gets the Activity Class Local ID of this activity class

        Returns:

        the Activity Class Local ID of this activity class

    -   ### setLocalId

        public void setLocalId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId\_)

        Sets the Activity Class Local ID of this activity class

        Parameters:

        `localId_` - the Activity Class Local ID of this activity class to set