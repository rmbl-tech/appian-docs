---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/QuickFilterItem.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/QuickFilterItem.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class QuickFilterItem

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.QuickFilterItem

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class QuickFilterItem extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

A QuickFilterItem is a set of Filters. The filters are applied to the report whenever the quickFilterItem is selected.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.QuickFilterItem)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[QuickFilterItem](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object)`

    `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getFilters](#getFilters\(\))()`

    Get the list of filters.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Unused but reserved.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Get the display name of this quickFilterItem.

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setFilters](#setFilters\(com.appiancorp.suiteapi.process.analytics2.Filter%5B%5D\))([Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")[] filters_)`

    Set the list of filters.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Set the display name of this quickFilterItem.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

-   ## Constructor Details

    -   ### QuickFilterItem

        public QuickFilterItem()

-   ## Method Details

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Clone this object.

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

    -   ### getFilters

        public [Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")\[\] getFilters()

        Get the list of filters.

        Returns:

        the list of filters

        See Also:

        -   [`setFilters(com.appiancorp.suiteapi.process.analytics2.Filter[])`](#setFilters\(com.appiancorp.suiteapi.process.analytics2.Filter%5B%5D\))

    -   ### setFilters

        public void setFilters([Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")\[\] filters\_)

        Set the list of filters.

        Parameters:

        `filters_` - the list of filters

        See Also:

        -   [`getFilters()`](#getFilters\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Get the display name of this quickFilterItem.

        Returns:

        the display name of this quickFilterItem

        See Also:

        -   [`setName(java.lang.String)`](#setName\(java.lang.String\))

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Set the display name of this quickFilterItem.

        Parameters:

        `name_` - the display name of this quickFilterItem

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Unused but reserved.

        Specified by:

        `[getHiddenAttributes](../../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes