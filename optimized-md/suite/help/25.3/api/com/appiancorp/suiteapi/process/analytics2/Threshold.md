---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/Threshold.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/Threshold.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class Threshold

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.Threshold

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class Threshold extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

Bean detailing analytics threshold object.

Each Threshold object defines a range and an indicator icon. Whenever the data in the metric column (defined in the .arf file under <thresholdColumnLocalId>) falls within this range, the corresponding indicator will be displayed.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.Threshold)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Threshold](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object using deep-copy semantics.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDefaultIconName](#getDefaultIconName\(\))()`

    Gets the name of the icon.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getIcon](#getIcon\(\))()`

    Gets the documentId of the icon.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLabel](#getLabel\(\))()`

    Gets the label.

    `[Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")`

    `[getUpperBound](#getUpperBound\(\))()`

    Gets the upper bound (in days for durations).

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setDefaultIconName](#setDefaultIconName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultIconName_)`

    Sets the name of the icon.

    `void`

    `[setIcon](#setIcon\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") icon_)`

    Sets the documentId of the icon.

    `void`

    `[setLabel](#setLabel\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label_)`

    Sets the label.

    `void`

    `[setUpperBound](#setUpperBound\(java.lang.Double\))([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") upperBound_)`

    Sets the upperbound (in days for durations).

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

-   ## Constructor Details

    -   ### Threshold

        public Threshold()

-   ## Method Details

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Description copied from interface: `[DeepCloneable](../../common/DeepCloneable.html#clone\(\))`

        Clone this object using deep-copy semantics.

        Specified by:

        `[clone](../../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getDefaultIconName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDefaultIconName()

        Gets the name of the icon. Used as alt text for the indicator icon in Report Option dialogue.

        Returns:

        the name of the icon

        See Also:

        -   [`setDefaultIconName(java.lang.String)`](#setDefaultIconName\(java.lang.String\))

    -   ### setDefaultIconName

        public void setDefaultIconName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") defaultIconName\_)

        Sets the name of the icon. Used as alt text for the indicator icon in Report Option dialogue.

        Parameters:

        `defaultIconName_` - the name of the icon

        See Also:

        -   [`getDefaultIconName()`](#getDefaultIconName\(\))

    -   ### getIcon

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getIcon()

        Gets the documentId of the icon.

        Returns:

        Returns the icon.

        See Also:

        -   [`setIcon(java.lang.Long)`](#setIcon\(java.lang.Long\))

    -   ### setIcon

        public void setIcon([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") icon\_)

        Sets the documentId of the icon.

        Parameters:

        `icon_` - The icon to set.

        See Also:

        -   [`getIcon()`](#getIcon\(\))

    -   ### getLabel

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLabel()

        Gets the label.

        Returns:

        Returns the label.

        See Also:

        -   [`setLabel(java.lang.String)`](#setLabel\(java.lang.String\))

    -   ### setLabel

        public void setLabel([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label\_)

        Sets the label.

        Parameters:

        `label_` - The label to set.

        See Also:

        -   [`getLabel()`](#getLabel\(\))

    -   ### getUpperBound

        public [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") getUpperBound()

        Gets the upper bound (in days for durations).

        Returns:

        Returns the upperBound.

        See Also:

        -   [`setUpperBound(java.lang.Double)`](#setUpperBound\(java.lang.Double\))

    -   ### setUpperBound

        public void setUpperBound([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") upperBound\_)

        Sets the upperbound (in days for durations).

        Parameters:

        `upperBound_` - The upperBound to set.

        See Also:

        -   [`getUpperBound()`](#getUpperBound\(\))