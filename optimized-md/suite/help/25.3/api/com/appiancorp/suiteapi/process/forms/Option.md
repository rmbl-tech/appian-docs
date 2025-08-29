---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/forms/Option.html
original_path: api/com/appiancorp/suiteapi/process/forms/Option.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.forms](package-summary.html)

# Class Option

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.forms.Option

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class Option extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.forms.Option)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Option](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object.

    `boolean`

    `[getDefault](#getDefault\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getValue](#getValue\(\))()`

    `void`

    `[setDefault](#setDefault\(boolean\))(boolean default_)`

    `void`

    `[setId](#setId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_)`

    `void`

    `[setValue](#setValue\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Generates an XML representation of this object (including all child objects).

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

-   ## Constructor Details

    -   ### Option

        public Option()

-   ## Method Details

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Clone this object.

        Specified by:

        `[clone](../../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

    -   ### getDefault

        public boolean getDefault()

    -   ### setDefault

        public void setDefault(boolean default\_)

    -   ### getId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getId()

    -   ### setId

        public void setId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_)

    -   ### getValue

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getValue()

    -   ### setValue

        public void setValue([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value\_)

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Description copied from interface: `[XMLable](../../common/XMLable.html#toXML\(\))`

        Generates an XML representation of this object (including all child objects). A typical implementation is to create a new `StringBuilder` and call `toXML( StringBuilder )` on it.

        Specified by:

        `[toXML](../../common/XMLable.html#toXML\(\))` in interface `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        The XML representation of this object.

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Description copied from interface: `[XMLable](../../common/XMLable.html#toXML\(java.lang.StringBuilder\))`

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Specified by:

        `[toXML](../../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.