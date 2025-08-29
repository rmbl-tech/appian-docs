---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/QuickFilter.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/QuickFilter.html
version: "25.3"
title: "Class QuickFilter"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/QuickFilter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class QuickFilter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.QuickFilter

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class QuickFilter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

A QuickFilter is a set of QuickFilterItems. The selected QuickFilterItem is applied to the report.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.QuickFilter)

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

    `[QuickFilter](#%3Cinit%3E\(\))()`

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

    `int`

    `[getDefaultItem](#getDefaultItem\(\))()`

    Get the index of the default item.

    `[QuickFilterItem](QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getItems](#getItems\(\))()`

    Get the list of QuickFilterItems.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Get the display name of this QuickFilter.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSelectedItem](#getSelectedItem\(\))()`

    Get the index of the selected item.

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setDefaultItem](#setDefaultItem\(int\))(int defaultItem_)`

    Set the default item.

    `void`

    `[setItems](#setItems\(com.appiancorp.suiteapi.process.analytics2.QuickFilterItem%5B%5D\))([QuickFilterItem](QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")[] items_)`

    Set the list of QuickFilterItems.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Set the display name of this QuickFilter.

    `void`

    `[setSelectedItem](#setSelectedItem\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") selectedItem_)`

    Set the index of the selected item.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

-   ## Constructor Details

    -   ### QuickFilter

        public QuickFilter()

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

    -   ### getDefaultItem

        public int getDefaultItem()

        Get the index of the default item.

        Returns:

        the index of the default item

        See Also:

        -   [`setDefaultItem(int)`](#setDefaultItem\(int\))

    -   ### setDefaultItem

        public void setDefaultItem(int defaultItem\_)

        Set the default item.

        Parameters:

        `defaultItem_` - the index of the default item

        See Also:

        -   [`getDefaultItem()`](#getDefaultItem\(\))

    -   ### getItems

        public [QuickFilterItem](QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getItems()

        Get the list of QuickFilterItems.

        Returns:

        the list of QuickFilterItems

        See Also:

        -   [`setItems(com.appiancorp.suiteapi.process.analytics2.QuickFilterItem[])`](#setItems\(com.appiancorp.suiteapi.process.analytics2.QuickFilterItem%5B%5D\))

    -   ### setItems

        public void setItems([QuickFilterItem](QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] items\_)

        Set the list of QuickFilterItems.

        Parameters:

        `items_` - the list of QuickFilterItems

        See Also:

        -   [`getItems()`](#getItems\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Get the display name of this QuickFilter.

        Returns:

        the display name of this QuickFilter

        See Also:

        -   [`setName(java.lang.String)`](#setName\(java.lang.String\))

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Set the display name of this QuickFilter.

        Parameters:

        `name_` - the display name of this QuickFilter

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### getSelectedItem

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSelectedItem()

        Get the index of the selected item.

        Returns:

        the index of the selected item

        See Also:

        -   [`setSelectedItem(java.lang.Integer)`](#setSelectedItem\(java.lang.Integer\))

    -   ### setSelectedItem

        public void setSelectedItem([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") selectedItem\_)

        Set the index of the selected item.

        Parameters:

        `selectedItem_` - the index of the selected item

        See Also:

        -   [`getSelectedItem()`](#getSelectedItem\(\))