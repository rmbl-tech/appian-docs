---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/BulkArrayConverter.html
original_path: api/com/appiancorp/suiteapi/common/BulkArrayConverter.html
version: "25.3"
title: "Class BulkArrayConverter"
page_id: "api/com/appiancorp/suiteapi/common/BulkArrayConverter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class BulkArrayConverter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.BulkArrayConverter

* * *

public class BulkArrayConverter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Utility class used to combine an array of array into a single array of combined length and vice versa. For example, if you have a three dimensional array then the [`multiplesToBulk(java.lang.Object[])`](#multiplesToBulk\(java.lang.Object%5B%5D\)) will return an two dimensional array. Similarly if you pass a two dimensional array to [`bulkToMultiples(java.lang.Object[])`](#bulkToMultiples\(java.lang.Object%5B%5D\)) you will get back a three dimensional array.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[BulkArrayConverter](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[bulkToMultiples](#bulkToMultiples\(java.lang.Object%5B%5D\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] bulk_)`

    This method takes an array object and return parallel arrays, from which the passed array was originally created. eg: if you pass a two dimensional array then the method will return an three dimensional array.

    `void`

    `[clear](#clear\(\))()`

    Clears the state of converter so it can used for new array conversions.

    `boolean`

    `[isInitialized](#isInitialized\(\))()`

    Returns whether the converter has been initialized.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[multiplesToBulk](#multiplesToBulk\(java.lang.Object%5B%5D\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] multiples_)`

    This method takes an array of array and converts into a single array of length of combined array's. eg: if you have a three dimensional array then the method will return an two dimensional array.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### BulkArrayConverter

        public BulkArrayConverter()

-   ## Method Details

    -   ### multiplesToBulk

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] multiplesToBulk([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] multiples\_)

        This method takes an array of array and converts into a single array of length of combined array's. eg: if you have a three dimensional array then the method will return an two dimensional array. The passed in array's can be of mixed type.

        Parameters:

        `multiples_` - array's to be converted to bulk array.

        Returns:

        Object array of combined length of passed in array's

    -   ### bulkToMultiples

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") bulkToMultiples([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] bulk\_)

        This method takes an array object and return parallel arrays, from which the passed array was originally created. eg: if you pass a two dimensional array then the method will return an three dimensional array.

        Parameters:

        `bulk_` - array to split into parallel arrays. This can be array of mixed types, if the original array's were of mixed type.

        Returns:

        an object of type array of array.

    -   ### isInitialized

        public boolean isInitialized()

        Returns whether the converter has been initialized.

        Returns:

        `true` if the converter object is initialized, otherwise `false`

    -   ### clear

        public void clear()

        Clears the state of converter so it can used for new array conversions.