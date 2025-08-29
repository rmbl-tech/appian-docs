---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/LastNCompletedFilter.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/LastNCompletedFilter.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class LastNCompletedFilter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.analytics2.BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

com.appiancorp.suiteapi.process.analytics2.LastNCompletedFilter

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class LastNCompletedFilter extends [BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

This analytics filter will return the last N processes/tasks to have been completed.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.LastNCompletedFilter)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[TYPE](#TYPE)`

    This constant tells the backend what kind of filter this is.

    ### Fields inherited from class com.appiancorp.suiteapi.process.analytics2.[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    `[LOG](BaseFilter.html#LOG)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[LastNCompletedFilter](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object)`

    Is this Filter equal to another object?

    `int`

    `[getCompletedCount](#getCompletedCount\(\))()`

    Retrieve the number of completed processes/tasks which will be returned by this filter.

    `int`

    `[getFilterType](#getFilterType\(\))()`

    Retrieve the type of this filter.

    `int`

    `[hashCode](#hashCode\(\))()`

    Hash code.

    `void`

    `[setCompletedCount](#setCompletedCount\(int\))(int completedCount_)`

    Sets the number of completed processes/tasks which will be returned by this filter.

    ### Methods inherited from class com.appiancorp.suiteapi.process.analytics2.[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    `[clone](BaseFilter.html#clone\(\)), [getApply](BaseFilter.html#getApply\(\)), [setApply](BaseFilter.html#setApply\(boolean\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

    `[clone](../../common/DeepCloneable.html#clone\(\))`

-   ## Field Details

    -   ### TYPE

        public static final int TYPE

        This constant tells the backend what kind of filter this is.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.LastNCompletedFilter.TYPE)

-   ## Constructor Details

    -   ### LastNCompletedFilter

        public LastNCompletedFilter()

-   ## Method Details

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object)

        Is this Filter equal to another object?

        Overrides:

        `[equals](BaseFilter.html#equals\(java.lang.Object\))` in class `[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`

    -   ### hashCode

        public int hashCode()

        Hash code.

        Overrides:

        `[hashCode](BaseFilter.html#hashCode\(\))` in class `[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`

    -   ### getFilterType

        public int getFilterType()

        Retrieve the type of this filter.

        Specified by:

        `[getFilterType](Filter.html#getFilterType\(\))` in interface `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")`

        Specified by:

        `[getFilterType](BaseFilter.html#getFilterType\(\))` in class `[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`

        Returns:

        The type of this filter

    -   ### getCompletedCount

        public int getCompletedCount()

        Retrieve the number of completed processes/tasks which will be returned by this filter.

        Returns:

        The number of completed processes/tasks to retrieve

        See Also:

        -   [`setCompletedCount(int)`](#setCompletedCount\(int\))

    -   ### setCompletedCount

        public void setCompletedCount(int completedCount\_)

        Sets the number of completed processes/tasks which will be returned by this filter.

        Parameters:

        `completedCount_` - The number of completed processes/tasks for this filter to return

        See Also:

        -   [`getCompletedCount()`](#getCompletedCount\(\))