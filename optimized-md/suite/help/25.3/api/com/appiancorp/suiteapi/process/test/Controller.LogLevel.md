---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/test/Controller.LogLevel.html
original_path: api/com/appiancorp/suiteapi/process/test/Controller.LogLevel.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.test](package-summary.html)

# Enum Class Controller.LogLevel

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")\>

com.appiancorp.suiteapi.process.test.Controller.LogLevel

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")>`, `[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant")`

Enclosing class:

[Controller](Controller.html "class in com.appiancorp.suiteapi.process.test")

* * *

public static enum Controller.LogLevel extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")\>

LogLevel enumeration supported by Controller logging.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[Enum.EnumDesc](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang") extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")>>`

-   ## Enum Constant Summary

    Enum Constants

    Enum Constant

    Description

    `[DEBUG](#DEBUG)`

    `[DISABLED](#DISABLED)`

    `[ERROR](#ERROR)`

    `[INFO](#INFO)`

    `[WARN](#WARN)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Controller.LogElement](Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test")`

    `[element](#element\(java.sql.Timestamp,java.lang.String\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)`

    `static [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")`

    `[valueOf](#valueOf\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Returns the enum constant of this class with the specified name.

    `static [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")[]`

    `[values](#values\(\))()`

    Returns an array containing the constants of this enum class, in the order they are declared.

    ### Methods inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#clone\(\) "class or interface in java.lang"), [compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#compareTo\(E\) "class or interface in java.lang"), [describeConstable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#describeConstable\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#finalize\(\) "class or interface in java.lang"), [getDeclaringClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#getDeclaringClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#hashCode\(\) "class or interface in java.lang"), [name](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#name\(\) "class or interface in java.lang"), [ordinal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#ordinal\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#toString\(\) "class or interface in java.lang"), [valueOf](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#valueOf\(java.lang.Class,java.lang.String\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Enum Constant Details

    -   ### DEBUG

        public static final [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") DEBUG

    -   ### INFO

        public static final [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") INFO

    -   ### WARN

        public static final [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") WARN

    -   ### ERROR

        public static final [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") ERROR

    -   ### DISABLED

        public static final [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") DISABLED

-   ## Method Details

    -   ### values

        public static [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test")\[\] values()

        Returns an array containing the constants of this enum class, in the order they are declared.

        Returns:

        an array containing the constants of this enum class, in the order they are declared

    -   ### valueOf

        public static [Controller.LogLevel](Controller.LogLevel.html "enum class in com.appiancorp.suiteapi.process.test") valueOf([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Returns the enum constant of this class with the specified name. The string must match _exactly_ an identifier used to declare an enum constant in this class. (Extraneous whitespace characters are not permitted.)

        Parameters:

        `name` - the name of the enum constant to be returned.

        Returns:

        the enum constant with the specified name

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if this enum class has no constant with the specified name

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is null

    -   ### element

        public [Controller.LogElement](Controller.LogElement.html "class in com.appiancorp.suiteapi.process.test") element([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)

        Parameters:

        `timestamp` -

        `message` -

        Returns:

        LogElement at this level for given timestamp and message