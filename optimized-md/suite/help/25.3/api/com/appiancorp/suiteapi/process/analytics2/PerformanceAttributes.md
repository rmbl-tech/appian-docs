---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/PerformanceAttributes.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/PerformanceAttributes.html
version: "25.3"
title: "Class PerformanceAttributes"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/PerformanceAttributes"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class PerformanceAttributes

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.PerformanceAttributes

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class PerformanceAttributes extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This object represents the attribute that was executed while generating the report. Various metrics such as no. of rows affected, time taken by the attribute to execute etc. are available.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.PerformanceAttributes)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PerformanceAttributes](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `com.appiancorp.suiteapi.process.analytics2.PerformanceAttributes.CompositeOrder`

    `[getCompositeOrder](#getCompositeOrder\(\))()`

    Returns the order in which the attribute is in relation to the shard and the main.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Returns the description of the attribute.

    `int`

    `[getMainOrder](#getMainOrder\(\))()`

    Returns the order in which the attribute was applied in relation to the main.

    `int`

    `[getMasterOrder](#getMasterOrder\(\))()`

    Deprecated.

    use [`getMainOrder()`](#getMainOrder\(\)) instead

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Returns the name of the attribute.

    `int`

    `[getOrder](#getOrder\(\))()`

    Returns the order in which the attribute was applied in relation to the shard.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getResource](#getResource\(\))()`

    Returns name of the resource where the operation was executed.

    `int`

    `[getRowsAffected](#getRowsAffected\(\))()`

    Returns the number of rows affected by the attribute during report generation.

    `double`

    `[getTime](#getTime\(\))()`

    Returns the amount of time taken by the attribute to execute during report generation.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Returns the type of the attribute.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    Sets the description of the attribute

    `void`

    `[setMainOrder](#setMainOrder\(int\))(int mainOrder_)`

    Sets the order in which the attribute will be applied in relation to the main.

    `void`

    `[setMasterOrder](#setMasterOrder\(int\))(int mainOrder_)`

    Deprecated.

    use [`setMainOrder(int)`](#setMainOrder\(int\)) instead

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Sets the name of the attribute

    `void`

    `[setOrder](#setOrder\(int\))(int order_)`

    Sets the order in which the attribute will be applied in relation to the shard.

    `void`

    `[setResource](#setResource\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") resource)`

    Sets name of the resource where the operation was executed.

    `void`

    `[setRowsAffected](#setRowsAffected\(int\))(int rowsAffected_)`

    Set the number of rows affected during report generation.

    `void`

    `[setTime](#setTime\(double\))(double time_)`

    Sets the amount of time taken by the attribute to execute during report generation.

    `void`

    `[setType](#setType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_)`

    Sets the type of attribute

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PerformanceAttributes

        public PerformanceAttributes()

-   ## Method Details

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Returns the name of the attribute.

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Sets the name of the attribute

    -   ### getType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getType()

        Returns the type of the attribute. Example : Sort Column, Filter

    -   ### setType

        public void setType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_)

        Sets the type of attribute

    -   ### getResource

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getResource()

        Returns name of the resource where the operation was executed.

    -   ### setResource

        public void setResource([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") resource)

        Sets name of the resource where the operation was executed.

    -   ### getTime

        public double getTime()

        Returns the amount of time taken by the attribute to execute during report generation.

    -   ### setTime

        public void setTime(double time\_)

        Sets the amount of time taken by the attribute to execute during report generation.

    -   ### getRowsAffected

        public int getRowsAffected()

        Returns the number of rows affected by the attribute during report generation.

    -   ### setRowsAffected

        public void setRowsAffected(int rowsAffected\_)

        Set the number of rows affected during report generation.

        Parameters:

        `rowsAffected_` -

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Returns the description of the attribute.

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        Sets the description of the attribute

    -   ### getOrder

        public int getOrder()

        Returns the order in which the attribute was applied in relation to the shard.

    -   ### setOrder

        public void setOrder(int order\_)

        Sets the order in which the attribute will be applied in relation to the shard.

    -   ### getMasterOrder

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public int getMasterOrder()

        Deprecated.

        use [`getMainOrder()`](#getMainOrder\(\)) instead

        Returns the order in which the attribute was applied in relation to the main.

    -   ### getMainOrder

        public int getMainOrder()

        Returns the order in which the attribute was applied in relation to the main.

    -   ### setMasterOrder

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setMasterOrder(int mainOrder\_)

        Deprecated.

        use [`setMainOrder(int)`](#setMainOrder\(int\)) instead

        Sets the order in which the attribute will be applied in relation to the main.

    -   ### setMainOrder

        public void setMainOrder(int mainOrder\_)

        Sets the order in which the attribute will be applied in relation to the main.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getCompositeOrder

        public com.appiancorp.suiteapi.process.analytics2.PerformanceAttributes.CompositeOrder getCompositeOrder()

        Returns the order in which the attribute is in relation to the shard and the main.