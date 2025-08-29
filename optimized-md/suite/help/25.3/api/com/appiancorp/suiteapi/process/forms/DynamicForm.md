---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/forms/DynamicForm.html
original_path: api/com/appiancorp/suiteapi/process/forms/DynamicForm.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.forms](package-summary.html)

# Class DynamicForm

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.forms.DynamicForm

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class DynamicForm extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean representing dynamic forms

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.forms.DynamicForm)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

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

    `[DynamicForm](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object.

    `static [DynamicForm](DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")`

    `[fromXML](#fromXML\(org.w3c.dom.Node\))([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") dNode)`

    Creates a form from xml

    `static [DynamicForm](DynamicForm.html "class in com.appiancorp.suiteapi.process.forms")`

    `[fromXML](#fromXML\(org.w3c.dom.Node,com.appiancorp.suiteapi.process.forms.FormElement.InferFormElementCallback\))([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") node, [FormElement.InferFormElementCallback](FormElement.InferFormElementCallback.html "interface in com.appiancorp.suiteapi.process.forms") callback)`

    `boolean`

    `[getContainsLocalFile](#getContainsLocalFile\(\))()`

    Gets whether the form contains a local file

    `[FormElement](FormElement.html "class in com.appiancorp.suiteapi.process.forms")[]`

    `[getElements](#getElements\(\))()`

    Gets the elements of the form

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getInstructions](#getInstructions\(\))()`

    Gets the instructions for the form

    `boolean`

    `[isDisplayInstructions](#isDisplayInstructions\(\))()`

    Whether the form will display instructions

    `void`

    `[setDisplayInstructions](#setDisplayInstructions\(boolean\))(boolean displayInstructions_)`

    Sets if the form will display instructions

    `void`

    `[setElements](#setElements\(com.appiancorp.suiteapi.process.forms.FormElement%5B%5D\))([FormElement](FormElement.html "class in com.appiancorp.suiteapi.process.forms")[] elements_)`

    Sets the elements of the form

    `void`

    `[setInstructions](#setInstructions\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") instructions_)`

    Sets the instructions for the form

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Converts the form to xml

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Converts the from to xml

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

-   ## Constructor Details

    -   ### DynamicForm

        public DynamicForm()

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

    -   ### getContainsLocalFile

        public boolean getContainsLocalFile()

        Gets whether the form contains a local file

        Returns:

        whether the form contains a local file

    -   ### isDisplayInstructions

        public boolean isDisplayInstructions()

        Whether the form will display instructions

        Returns:

        Whether the form will display instructions

    -   ### setDisplayInstructions

        public void setDisplayInstructions(boolean displayInstructions\_)

        Sets if the form will display instructions

        Parameters:

        `displayInstructions_` - if the form will display instructions

        See Also:

        -   [`isDisplayInstructions()`](#isDisplayInstructions\(\))

    -   ### getInstructions

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getInstructions()

        Gets the instructions for the form

        Returns:

        the instructions for the form

    -   ### setInstructions

        public void setInstructions([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") instructions\_)

        Sets the instructions for the form

        Parameters:

        `instructions_` - the instructions to set for the form

        See Also:

        -   [`getInstructions()`](#getInstructions\(\))

    -   ### getElements

        public [FormElement](FormElement.html "class in com.appiancorp.suiteapi.process.forms")\[\] getElements()

        Gets the elements of the form

        Returns:

        the elements of the form

    -   ### setElements

        public void setElements([FormElement](FormElement.html "class in com.appiancorp.suiteapi.process.forms")\[\] elements\_)

        Sets the elements of the form

        Parameters:

        `elements_` - the elements to set on the form

        See Also:

        -   [`getElements()`](#getElements\(\))

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Converts the form to xml

        Specified by:

        `[toXML](../../common/XMLable.html#toXML\(\))` in interface `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the xml representation of the form

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Converts the from to xml

        Specified by:

        `[toXML](../../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - the buffer to store the xml in

    -   ### fromXML

        public static [DynamicForm](DynamicForm.html "class in com.appiancorp.suiteapi.process.forms") fromXML([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") dNode)

        Creates a form from xml

        Parameters:

        `dNode` - the xml to create the form from

        Returns:

        a `DynamicForm` created from the xml

    -   ### fromXML

        public static [DynamicForm](DynamicForm.html "class in com.appiancorp.suiteapi.process.forms") fromXML([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") node, [FormElement.InferFormElementCallback](FormElement.InferFormElementCallback.html "interface in com.appiancorp.suiteapi.process.forms") callback)