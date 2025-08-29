---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/forms/InternalForm.html
original_path: api/com/appiancorp/suiteapi/process/forms/InternalForm.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.forms](package-summary.html)

# Class InternalForm

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.forms.InternalForm

All Implemented Interfaces:

`[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](../AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class InternalForm extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [AppianTypeHolder](../AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

An internal form is form that has been uploaded into Collaboration. It could be either HTML or PDF.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.forms.InternalForm)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[InternalForm](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](../AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Stores the primary keys of Appian Objects such as `User` `Group`, `Folder` in the cache.

    `static [InternalForm](InternalForm.html "class in com.appiancorp.suiteapi.process.forms")`

    `[fromXML](#fromXML\(org.w3c.dom.Node\))([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") ifNode_)`

    Constructs an `InternalForm` from its XML representation

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDocId](#getDocId\(\))()`

    `[FormElementBinding](FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")[]`

    `[getFormElementBindings](#getFormElementBindings\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getInternalType](#getInternalType\(\))()`

    `void`

    `[setDocId](#setDocId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") docId_)`

    `void`

    `[setFormElementBindings](#setFormElementBindings\(com.appiancorp.suiteapi.process.forms.FormElementBinding%5B%5D\))([FormElementBinding](FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")[] b_)`

    `void`

    `[setInternalType](#setInternalType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") internalType_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Creates an XML representation of this object.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object to the given buffer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### InternalForm

        public InternalForm()

-   ## Method Details

    -   ### getFormElementBindings

        public [FormElementBinding](FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")\[\] getFormElementBindings()

        Returns:

        the binding for elements of the internal form

    -   ### setFormElementBindings

        public void setFormElementBindings([FormElementBinding](FormElementBinding.html "class in com.appiancorp.suiteapi.process.forms")\[\] b\_)

    -   ### getDocId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDocId()

        Returns:

        the document ID of the internal form which has been uploaded to Appian Collaboration

    -   ### setDocId

        public void setDocId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") docId\_)

    -   ### getInternalType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getInternalType()

        Returns:

        the type of the form, which can be either HTML or PDF

    -   ### setInternalType

        public void setInternalType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") internalType\_)

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Creates an XML representation of this object.

        Specified by:

        `[toXML](../../common/XMLable.html#toXML\(\))` in interface `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        The XML representation of this object.

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Appends an XML representation of this object to the given buffer.

        Specified by:

        `[toXML](../../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.

    -   ### fromXML

        public static [InternalForm](InternalForm.html "class in com.appiancorp.suiteapi.process.forms") fromXML([Node](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/org/w3c/dom/Node.html "class or interface in org.w3c.dom") ifNode\_)

        Constructs an `InternalForm` from its XML representation

        Parameters:

        `ifNode_` - XML representation in a `Node`

        Returns:

        the `InternalForm` specified by the XML

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](../AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Stores the primary keys of Appian Objects such as `User` `Group`, `Folder` in the cache. Later, the cache will populate itself with the display strings that correspond to all of its ids, such as "Human Resources" for group 9.

        Specified by:

        `[fillInAppianTypes](../AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](../AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - cache of appian-typed objects.