---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ActivityClassSchema.html
original_path: api/com/appiancorp/suiteapi/process/ActivityClassSchema.html
version: "25.3"
title: "Class ActivityClassSchema"
page_id: "api/com/appiancorp/suiteapi/process/ActivityClassSchema"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ActivityClassSchema

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.ActivityClassSchema

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ActivityClassSchema extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") implements [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

The template from which activity classes are created. When a system administrator addes a new activity to the system, an instance of this class is used to represent that activity. When a process designer puts a node in a process model, he or she is using an ActivityClass, which has a reference to this schema. The schema specifies what the parameters of an activity are and some of the restrictions on those parameters that constrain the designer's behavior.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ActivityClassSchema)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[ASYNCHRONOUS](#ASYNCHRONOUS)`

    Constant indicating that activities of this schema can be run asynchronously.

    `static final int`

    `[ATTENDED](#ATTENDED)`

    Constant indicating that activities of this schema must be attended.

    `static final int`

    `[ATTENDED_AND_UNATTENDED](#ATTENDED_AND_UNATTENDED)`

    Constant indicating that designers can choose whether activities of this schema are be attended or unattended.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ENVIRONMENT_JAVA](#ENVIRONMENT_JAVA)`

    Constant indicating a Java execution environment.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ENVIRONMENT_PROCESS_EXECUTION_ENGINE](#ENVIRONMENT_PROCESS_EXECUTION_ENGINE)`

    Constant indicating a Process execution engine environment.

    `static final int`

    `[SYNCHRONOUS](#SYNCHRONOUS)`

    Constant indicating that activities of this schema cannot be run asynchronously.

    `static final int`

    `[TYPE_ASSIGNEE_POOL](#TYPE_ASSIGNEE_POOL)`

    Constant indicating that activities of this schema are for to perform task assignment only.

    `static final int`

    `[TYPE_ASSIGNMENT](#TYPE_ASSIGNMENT)`

    Constant indicating that activities of this schema are for to perform task assignment only.

    `static final int`

    `[TYPE_ESCALATIONS](#TYPE_ESCALATIONS)`

    Constant indicating that activities of this schema are escalations.

    `static final int`

    `[TYPE_SMART_NODES](#TYPE_SMART_NODES)`

    Constant indicating that nodes containing activities of this schema are smart noded.

    `static final int`

    `[TYPE_SUBPROCESS](#TYPE_SUBPROCESS)`

    Constant indicating that activities of this schema are subprocesses.

    `static final int`

    `[TYPE_SYSTEM](#TYPE_SYSTEM)`

    Constant indicating that activities of this schema are for internal system use only.

    `static final int`

    `[UNATTENDED](#UNATTENDED)`

    Constant indicating that activities of this schema must be unattended.

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ActivityClassSchema](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")`

    `[findByLocalId](#findByLocalId\(com.appiancorp.suiteapi.process.ActivityClassSchema%5B%5D,java.lang.String\))([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")[] schemas, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId)`

    `int`

    `[getAsynchronous](#getAsynchronous\(\))()`

    Indicates whether activities of this schema be run asynchronously.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomSetupUrl](#getCustomSetupUrl\(\))()`

    Gets the URL for the custom setup tab

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getExecutionEnvironmentId](#getExecutionEnvironmentId\(\))()`

    Gets the the execution environment for this activity class schema

    `[FormConfig](forms/FormConfig.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getFormConfig](#getFormConfig\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Gets the form config corresponding to the given locale, or null if no such config exists.

    `[FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms")`

    `[getFormConfigMap](#getFormConfigMap\(\))()`

    Gets the information about the form associated with this activity class schema.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFunction](#getFunction\(\))()`

    Gets the k function for this activity class schema

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getHelperClass](#getHelperClass\(\))()`

    Gets the helper class for this activity class schema.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getJavaClassName](#getJavaClassName\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalId](#getLocalId\(\))()`

    Gets the local id of the activity class schema on the system.

    `[ActivityClassParameterSchema](ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")[]`

    `[getParameters](#getParameters\(\))()`

    Gets the parameters used by activities that conform to this schema.

    `[ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[getReturnValues](#getReturnValues\(\))()`

    Gets the return variables for this activity class schema

    `int`

    `[getType](#getType\(\))()`

    Gets the type for this activity class schema.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUnattended](#getUnattended\(\))()`

    Indicates whether the activity class schema requires user interaction to complete

    `boolean`

    `[isTemplate](#isTemplate\(\))()`

    Indicates whether this schema is a template for a particular web service (Not in use)

    `void`

    `[setAsynchronous](#setAsynchronous\(int\))(int asynchronous_)`

    Sets whether activities of this schema be run asynchronously.

    `void`

    `[setCustomSetupUrl](#setCustomSetupUrl\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customSetupUrl_)`

    Sets the URL for the custom setup tab

    `void`

    `[setExecutionEnvironmentId](#setExecutionEnvironmentId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") executionEnvironmentId_)`

    sets the executionEnvironment for this ac-schema

    `void`

    `[setFormConfigMap](#setFormConfigMap\(com.appiancorp.suiteapi.process.forms.FormConfigMap\))([FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") formConfigMap_)`

    Sets the information about the form associated with this activity class schema

    `void`

    `[setFunction](#setFunction\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") function_)`

    Sets the k function for this activity class schema

    `void`

    `[setHelperClass](#setHelperClass\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parameterHelperClassname_)`

    Sets the helper class for this activity class schema.

    `void`

    `[setJavaClassName](#setJavaClassName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") javaClassName_)`

    sets the java class name for this ac-schema

    `void`

    `[setLocalId](#setLocalId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId_)`

    Sets the local id of the activity class schema on the system.

    `void`

    `[setParameters](#setParameters\(com.appiancorp.suiteapi.process.ActivityClassParameterSchema%5B%5D\))([ActivityClassParameterSchema](ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")[] parameters_)`

    Sets the parameters used by activities that conform to this schema.

    `void`

    `[setReturnValues](#setReturnValues\(com.appiancorp.suiteapi.process.ActivityReturnVariable%5B%5D\))([ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")[] returnValues_)`

    Sets the return variables for this activity class schema

    `void`

    `[setTemplate](#setTemplate\(boolean\))(boolean template_)`

    Sets whether this schema a template for a particular web service

    `void`

    `[setType](#setType\(int\))(int type_)`

    Sets the type for this activity class schema.

    `void`

    `[setUnattended](#setUnattended\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") unattended_)`

    Sets whether the activity class schema requires user interaction to complete

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Generates an XML representation of this object (including all child objects).

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\)), [toString](../common/Identity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### ENVIRONMENT\_PROCESS\_EXECUTION\_ENGINE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ENVIRONMENT\_PROCESS\_EXECUTION\_ENGINE

        Constant indicating a Process execution engine environment.

    -   ### ENVIRONMENT\_JAVA

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ENVIRONMENT\_JAVA

        Constant indicating a Java execution environment.

    -   ### ATTENDED

        public static final int ATTENDED

        Constant indicating that activities of this schema must be attended.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.ATTENDED)

    -   ### UNATTENDED

        public static final int UNATTENDED

        Constant indicating that activities of this schema must be unattended.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.UNATTENDED)

    -   ### ATTENDED\_AND\_UNATTENDED

        public static final int ATTENDED\_AND\_UNATTENDED

        Constant indicating that designers can choose whether activities of this schema are be attended or unattended.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.ATTENDED_AND_UNATTENDED)

    -   ### TYPE\_SYSTEM

        public static final int TYPE\_SYSTEM

        Constant indicating that activities of this schema are for internal system use only.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.TYPE_SYSTEM)

    -   ### TYPE\_ASSIGNMENT

        public static final int TYPE\_ASSIGNMENT

        Constant indicating that activities of this schema are for to perform task assignment only.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.TYPE_ASSIGNMENT)

    -   ### TYPE\_ASSIGNEE\_POOL

        public static final int TYPE\_ASSIGNEE\_POOL

        Constant indicating that activities of this schema are for to perform task assignment only.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.TYPE_ASSIGNEE_POOL)

    -   ### TYPE\_SMART\_NODES

        public static final int TYPE\_SMART\_NODES

        Constant indicating that nodes containing activities of this schema are smart noded.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.TYPE_SMART_NODES)

    -   ### TYPE\_SUBPROCESS

        public static final int TYPE\_SUBPROCESS

        Constant indicating that activities of this schema are subprocesses.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.TYPE_SUBPROCESS)

    -   ### TYPE\_ESCALATIONS

        public static final int TYPE\_ESCALATIONS

        Constant indicating that activities of this schema are escalations.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.TYPE_ESCALATIONS)

    -   ### ASYNCHRONOUS

        public static final int ASYNCHRONOUS

        Constant indicating that activities of this schema can be run asynchronously.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.ASYNCHRONOUS)

    -   ### SYNCHRONOUS

        public static final int SYNCHRONOUS

        Constant indicating that activities of this schema cannot be run asynchronously.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ActivityClassSchema.SYNCHRONOUS)

-   ## Constructor Details

    -   ### ActivityClassSchema

        public ActivityClassSchema()

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### getParameters

        public [ActivityClassParameterSchema](ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")\[\] getParameters()

        Gets the parameters used by activities that conform to this schema. These parameters can have a type of DEFERRED, and any BEAN\_ARRAY parameters have a size of exactly 1, with the value field holding another ActivityClassParameterSchema that is of type BEAN, providing the layout of the beans to be contained in the array at design time.

        Returns:

        an array of `ActivityClassParameterSchema` objects representing the parameters for this activity class schema

        See Also:

        -   [`ActivityClassParameterSchema`](ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")

    -   ### setParameters

        public void setParameters([ActivityClassParameterSchema](ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")\[\] parameters\_)

        Sets the parameters used by activities that conform to this schema. These parameters can have a type of DEFERRED, and any BEAN\_ARRAY parameters have a size of exactly 1, with the value field holding another ActivityClassParameterSchema that is of type BEAN, providing the layout of the beans to be contained in the array at design time.

        Parameters:

        `parameters_` - an array of `ActivityClassParameterSchema` objects representing the parameters for this activity class schema

        See Also:

        -   [`ActivityClassParameterSchema`](ActivityClassParameterSchema.html "class in com.appiancorp.suiteapi.process")

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(\))`

        Generates an XML representation of this object (including all child objects). A typical implementation is to create a new `StringBuilder` and call `toXML( StringBuilder )` on it.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        The XML representation of this object.

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(java.lang.StringBuilder\))`

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.

    -   ### getFunction

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFunction()

        Gets the k function for this activity class schema

        Returns:

        the k function user for this activity class schema

    -   ### setFunction

        public void setFunction([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") function\_)

        Sets the k function for this activity class schema

        Parameters:

        `function_` - the k function for this activity class schema

    -   ### getExecutionEnvironmentId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getExecutionEnvironmentId()

        Gets the the execution environment for this activity class schema

        Returns:

        the execution environment for this activity class schema. Possible values are : [`ENVIRONMENT_JAVA`](#ENVIRONMENT_JAVA), `ActivityClassSchema#ENVIRONMENT_K`

    -   ### setExecutionEnvironmentId

        public void setExecutionEnvironmentId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") executionEnvironmentId\_)

        sets the executionEnvironment for this ac-schema

        Parameters:

        `executionEnvironmentId_` - tthe execution environment for this activity class schema. Allowed values are : [`ENVIRONMENT_JAVA`](#ENVIRONMENT_JAVA), `ActivityClassSchema#ENVIRONMENT_K`

    -   ### getJavaClassName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getJavaClassName()

        Returns:

        the java classname for this ac-schema

    -   ### setJavaClassName

        public void setJavaClassName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") javaClassName\_)

        sets the java class name for this ac-schema

        Parameters:

        `javaClassName_` - the javaClassName to set for this ac-schema

    -   ### getUnattended

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUnattended()

        Indicates whether the activity class schema requires user interaction to complete

        Returns:

        [`ATTENDED`](#ATTENDED) if the activity class schema is attended (requires human interaction), [`UNATTENDED`](#UNATTENDED) if the activity class schema is unattended, [`ATTENDED_AND_UNATTENDED`](#ATTENDED_AND_UNATTENDED) if it can be both

    -   ### setUnattended

        public void setUnattended([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") unattended\_)

        Sets whether the activity class schema requires user interaction to complete

        Parameters:

        `unattended_` - value to set for whether this ac-schema is unattended. Allowed values are: [`ATTENDED`](#ATTENDED) if the activity class schema is attended (requires human interaction), [`UNATTENDED`](#UNATTENDED) if the activity class schema is unattended, [`ATTENDED_AND_UNATTENDED`](#ATTENDED_AND_UNATTENDED) if it can be both

    -   ### setHelperClass

        public void setHelperClass([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parameterHelperClassname\_)

        Sets the helper class for this activity class schema.

        Parameters:

        `parameterHelperClassname_` - the helper class

        See Also:

        -   [`getHelperClass()`](#getHelperClass\(\))

    -   ### getHelperClass

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getHelperClass()

        Gets the helper class for this activity class schema. A parameter helper class is used by the framework to help execute an activity class. The parameter helper class is associated with an activity class in the activity class config xml file, and must implement the ActivityParameterHelper interface. The helper class is optional. Please refer to the [`ActivityParameterHelper`](framework/ActivityParameterHelper.html "interface in com.appiancorp.suiteapi.process.framework") class for more information on the specific functionality of a helper class.

        Returns:

        the helper class

    -   ### getType

        public int getType()

        Gets the type for this activity class schema. Possible values are in the set of `ActivityClassSchema.TYPE_XXX`

        Returns:

        the Type of this activity class schema

    -   ### setType

        public void setType(int type\_)

        Sets the type for this activity class schema. Allowed values are in the set of `ActivityClassSchema.TYPE_XXX`

        Parameters:

        `type_` - the Type of this activity class schema to set

    -   ### getReturnValues

        public [ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] getReturnValues()

        Gets the return variables for this activity class schema

        Returns:

        an array of `ActivityReturnVariable` objects representing the return values of the activity class schema

        See Also:

        -   [`ActivityReturnVariable`](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### setReturnValues

        public void setReturnValues([ActivityReturnVariable](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")\[\] returnValues\_)

        Sets the return variables for this activity class schema

        Parameters:

        `returnValues_` - an array of `ActivityReturnVariable` objects representing the return values of the activity class schema

        See Also:

        -   [`ActivityReturnVariable`](ActivityReturnVariable.html "class in com.appiancorp.suiteapi.process")

    -   ### getFormConfigMap

        public [FormConfigMap](forms/FormConfigMap.html "class in com.appiancorp.suiteapi.process.forms") getFormConfigMap()

        Gets the information about the form associated with this activity class schema.

        Returns:

        a `FormConfig` object that represents information about the form associated with this activity class schema

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

        Sets the information about the form associated with this activity class schema

        Parameters:

        `formConfig_` - a `FormConfig` object that represents information about the form associated with this activity class schema to set

    -   ### getLocalId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalId()

        Gets the local id of the activity class schema on the system.

        Returns:

        Returns the localId.

    -   ### setLocalId

        public void setLocalId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId\_)

        Sets the local id of the activity class schema on the system.

        Parameters:

        `localId_` - The localId to set.

    -   ### getAsynchronous

        public int getAsynchronous()

        Indicates whether activities of this schema be run asynchronously.

        Returns:

        an integer which indicates whether activities of this schema be run asynchronously. Will return one fo the following values: [`ASYNCHRONOUS`](#ASYNCHRONOUS), [`SYNCHRONOUS`](#SYNCHRONOUS)

    -   ### setAsynchronous

        public void setAsynchronous(int asynchronous\_)

        Sets whether activities of this schema be run asynchronously.

        Parameters:

        `asynchronous_` - an integer which indicates whether activities of this schema be run asynchronously. Allowed values are: [`ASYNCHRONOUS`](#ASYNCHRONOUS), [`SYNCHRONOUS`](#SYNCHRONOUS),

    -   ### getCustomSetupUrl

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomSetupUrl()

        Gets the URL for the custom setup tab

        Returns:

        the URL for the custom setup tab.

    -   ### setCustomSetupUrl

        public void setCustomSetupUrl([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customSetupUrl\_)

        Sets the URL for the custom setup tab

        Parameters:

        `customSetupUrl_` - he URL for the custom setup tab to set.

    -   ### isTemplate

        public boolean isTemplate()

        Indicates whether this schema is a template for a particular web service (Not in use)

        Returns:

        `true` if this schema a template for a particular web service, `false` otherwise

    -   ### setTemplate

        public void setTemplate(boolean template\_)

        Sets whether this schema a template for a particular web service

        Parameters:

        `template_` - `true` if this schema a template for a particular web service, `false` otherwise.

    -   ### findByLocalId

        public static [ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") findByLocalId([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\[\] schemas, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") localId)